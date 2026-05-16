import 'package:assets_client/core/utils/jwt_decoder.dart';
import 'package:assets_client/features/config/data/models/saved_connection_model.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';

class TokenManager {
  final ConfigRepository configRepository;
  SavedConnectionModel? _activeConnection;

  TokenManager({required this.configRepository});

  String? getToken() => _activeConnection?.jwtToken;

  int? get tokenExpiresAt => _activeConnection?.expiresAt;

  int? get tokenRefreshAt => _activeConnection?.refreshAt;

  String? get activeUsername => _activeConnection?.username;

  String? get activeApiUrl => _activeConnection?.apiUrl;

  bool isTokenExpired() {
    if (_activeConnection == null) return false;
    if (_activeConnection!.expiresAt == 0) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    return now >= _activeConnection!.expiresAt;
  }

  bool shouldRefreshToken() {
    if (_activeConnection == null) return false;
    if (_activeConnection!.refreshAt == 0) return false;
    final now = DateTime.now().millisecondsSinceEpoch;
    return now >= _activeConnection!.refreshAt;
  }

  bool get isLoggedIn => _activeConnection != null && !isTokenExpired();

  Future<void> setActiveConnection(SavedConnectionModel connection) async {
    _activeConnection = connection;
    await configRepository.setActiveConnectionId(connection.id);
  }

  Future<void> clearActiveConnection() async {
    _activeConnection = null;
    await configRepository.setActiveConnectionId(null);
  }

  Future<void> updateActiveToken(String token, int refreshBeforeMs) async {
    if (_activeConnection == null) return;
    final exp = JwtDecoder.getExpiry(token);
    if (exp == null) {
      throw FormatException('JWT missing exp claim');
    }
    final expiresAt = exp * 1000;
    final refreshAt = expiresAt - refreshBeforeMs;
    _activeConnection = _activeConnection!.copyWith(
      jwtToken: token,
      refreshBefore: refreshBeforeMs,
      expiresAt: expiresAt,
      refreshAt: refreshAt,
      lastUsedAt: DateTime.now().millisecondsSinceEpoch,
    );
    await configRepository.saveConnection(_activeConnection!);
  }

  Future<void> loadActiveConnection() async {
    final conn = await configRepository.getActiveConnection();
    _activeConnection = conn;
  }
}