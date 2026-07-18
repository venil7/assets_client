import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_auth/local_auth.dart';

/// Encapsulates biometric authentication logic.
/// Android-only — returns false for device support on other platforms.
class BiometricService {
  static const String _boxName = 'app_config';
  static const String _enabledKey = 'biometric_enabled';

  final LocalAuthentication _auth = LocalAuthentication();

  // Singleton access to box — opened lazily.
  Box<String>? _box;

  Future<Box<String>> _getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<String>(_boxName);
    return _box!;
  }

  /// Check if device supports biometrics AND has enrolled credentials.
  Future<bool> isDeviceSupported() async {
    try {
      final supported = await _auth.canCheckBiometrics;
      // print('_auth.canCheckBiometrics is $supported');
      if (!supported) return false;

      // Check if there are enrolled biometrics available.
      final available = await _auth.getAvailableBiometrics();
      // print('_auth.canCheckBiometrics is $supported');

      return available.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  /// Read persisted enabled flag. Default: disabled.
  Future<bool> isEnabled() async {
    try {
      final box = await _getBox();
      final val = box.get(_enabledKey);
      if (val == null) return false;
      return val == 'true';
    } catch (_) {
      return false;
    }
  }

  /// Persist enabled/disabled flag.
  Future<void> setEnabled(bool value) async {
    final box = await _getBox();
    await box.put(_enabledKey, value ? 'true' : 'false');
  }

  /// Show native biometric prompt. Returns true on success.
  Future<bool> authenticate({String? reason}) async {
    final supported = await isDeviceSupported();
    if (!supported) return false;

    // Stop any stale auth session before starting fresh.
    try {
      await _auth.stopAuthentication();
    } catch (_) {}

    try {
      return await _auth.authenticate(
        localizedReason: reason ?? 'Unlock Assets Client',
        options: const AuthenticationOptions(
          stickyAuth: false,
          useErrorDialogs: true,
        ),
      );
    } catch (e) {
      // ignore: avoid_print
      print('BiometricService.authenticate error: $e');
      return false;
    }
  }
}
