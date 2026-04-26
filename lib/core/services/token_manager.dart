import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';

class TokenManager {
  final ConfigLocalDataSource configDataSource;
  String? _cachedToken;
  int? _tokenExpiresAt; // milliseconds since epoch

  TokenManager({required this.configDataSource});

  String? getToken() => _cachedToken;

  bool isTokenExpired() {
    if (_tokenExpiresAt == null) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    return now >= _tokenExpiresAt!;
  }

  bool shouldRefreshToken() {
    if (_tokenExpiresAt == null) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    // Refresh if within 5 minutes of expiry
    const refreshBuffer = 5 * 60 * 1000; // 5 minutes in milliseconds
    return now >= (_tokenExpiresAt! - refreshBuffer);
  }

  Future<void> setToken(String token, int refreshBeforeMs) async {
    _cachedToken = token;
    // refreshBefore is milliseconds until expiry from now
    _tokenExpiresAt = DateTime.now().millisecondsSinceEpoch + refreshBeforeMs;
  }

  Future<void> loadToken() async {
    _cachedToken = await configDataSource.getJwtToken();
    final refreshBefore = await configDataSource.getTokenRefreshBefore();
    if (refreshBefore != null) {
      // Note: This is approximate as we don't know exact storage time
      // Better approach would be to store expiration timestamp instead
      _tokenExpiresAt = DateTime.now().millisecondsSinceEpoch + refreshBefore;
    }
  }

  Future<void> clearToken() async {
    _cachedToken = null;
    _tokenExpiresAt = null;
  }
}
