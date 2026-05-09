import 'package:assets_client/core/utils/jwt_decoder.dart';
import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';

class TokenManager {
  final ConfigLocalDataSource configDataSource;
  String? _cachedToken;
  int? _tokenExpiresAt;
  int? _tokenRefreshAt;

  TokenManager({required this.configDataSource});

  String? getToken() => _cachedToken;

  int? get tokenExpiresAt => _tokenExpiresAt;

  int? get tokenRefreshAt => _tokenRefreshAt;

  bool isTokenExpired() {
    if (_tokenExpiresAt == null) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    return now >= _tokenExpiresAt!;
  }

  bool shouldRefreshToken() {
    if (_tokenRefreshAt == null) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    return now >= _tokenRefreshAt!;
  }

  bool get isLoggedIn => _cachedToken != null && !isTokenExpired();

  Future<void> setToken(String token, int refreshBeforeMs) async {
    _cachedToken = token;
    final exp = JwtDecoder.getExpiry(token);
    if (exp == null) {
      throw FormatException('JWT missing exp claim');
    }
    _tokenExpiresAt = exp * 1000;
    _tokenRefreshAt = _tokenExpiresAt! - refreshBeforeMs;
    await configDataSource.saveJwtToken(token, refreshBeforeMs);
    await configDataSource.saveTokenExpiresAt(_tokenExpiresAt!);
    await configDataSource.saveTokenRefreshAt(_tokenRefreshAt!);
  }

  Future<void> loadToken() async {
    _cachedToken = await configDataSource.getJwtToken();
    _tokenExpiresAt = await configDataSource.getTokenExpiresAt();
    _tokenRefreshAt = await configDataSource.getTokenRefreshAt();
  }

  Future<void> clearToken() async {
    _cachedToken = null;
    _tokenExpiresAt = null;
    _tokenRefreshAt = null;
  }
}
