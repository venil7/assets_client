import 'package:assets_client/core/services/biometric_service.dart';
import 'package:assets_client/core/services/biometric_session.dart';
import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:flutter/material.dart';

class BiometricLockScreen extends StatefulWidget {
  const BiometricLockScreen({super.key});

  @override
  State<BiometricLockScreen> createState() => _BiometricLockScreenState();
}

class _BiometricLockScreenState extends State<BiometricLockScreen> {
  final _biometric = BiometricService();
  bool _prompting = false;

  @override
  void initState() {
    super.initState();
    // Auto-show prompt on load.
    _showBiometricPrompt();
  }

  Future<void> _showBiometricPrompt() async {
    if (mounted) setState(() => _prompting = true);

    final ok = await _biometric.authenticate(
      reason: 'Unlock Assets Client',
    );

    if (!mounted) return;
    setState(() => _prompting = false);

    if (ok) {
      // Mark session as biometric-authenticated so lifecycle observer
      // knows we are cleared.
      _markAuthenticated();
      _navigateHome();
    }
    // else: fail or cancel — stay on lock screen, user can retry.
  }

  void _markAuthenticated() {
    // Persist in-memory flag so lifecycle re-lock won't fire again.
    BiometricServiceSession.authenticated = true;
  }

  void _navigateHome() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  void _usePassword() {
    // Clear biometric session flag so next cold start re-prompts.
    BiometricServiceSession.authenticated = false;

    final url = tokenManager.activeApiUrl ?? '';
    Navigator.of(context).pushReplacementNamed(
      '/login',
      arguments: {'url': url},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locked'),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: _prompting ? null : _usePassword,
            child: const Text('Use password'),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Fingerprint icon
              Icon(
                Icons.fingerprint,
                size: 120,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 32),
              const Text(
                'Scan fingerprint to unlock',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Use your device fingerprint to access Assets Client',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: _prompting ? null : _showBiometricPrompt,
                  icon: const Icon(Icons.fingerprint),
                  label: const Text('Unlock with fingerprint'),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: _prompting ? null : _usePassword,
                child: const Text('Or use password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
