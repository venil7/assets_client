import 'package:hive/hive.dart';

abstract class ConfigLocalDataSource {
  Future<void> saveApiUrl(String url);
  Future<String?> getApiUrl();
  Future<void> saveUsername(String username);
  Future<String?> getUsername();
  Future<void> saveJwtToken(String token, int refreshBefore);
  Future<String?> getJwtToken();
  Future<int?> getTokenRefreshBefore();
  Future<void> clear();
}

class ConfigLocalDataSourceImpl implements ConfigLocalDataSource {
  static const String _boxName = 'app_config';
  static const String _apiUrlKey = 'api_base_url';
  static const String _usernameKey = 'username';
  static const String _jwtTokenKey = 'jwt_token';
  static const String _tokenRefreshBeforeKey = 'token_refresh_before';

  @override
  Future<void> saveApiUrl(String url) async {
    final box = await Hive.openBox<String>(_boxName);
    await box.put(_apiUrlKey, url);
  }

  @override
  Future<String?> getApiUrl() async {
    final box = await Hive.openBox<String>(_boxName);
    return box.get(_apiUrlKey);
  }

  @override
  Future<void> saveUsername(String username) async {
    final box = await Hive.openBox<String>(_boxName);
    await box.put(_usernameKey, username);
  }

  @override
  Future<String?> getUsername() async {
    final box = await Hive.openBox<String>(_boxName);
    return box.get(_usernameKey);
  }

  @override
  Future<void> saveJwtToken(String token, int refreshBefore) async {
    final box = await Hive.openBox<String>(_boxName);
    await box.put(_jwtTokenKey, token);
    await box.put(_tokenRefreshBeforeKey, refreshBefore.toString());
  }

  @override
  Future<String?> getJwtToken() async {
    final box = await Hive.openBox<String>(_boxName);
    return box.get(_jwtTokenKey);
  }

  @override
  Future<int?> getTokenRefreshBefore() async {
    final box = await Hive.openBox<String>(_boxName);
    final value = box.get(_tokenRefreshBeforeKey);
    return value != null ? int.tryParse(value) : null;
  }

  @override
  Future<void> clear() async {
    final box = await Hive.openBox<String>(_boxName);
    await box.delete(_apiUrlKey);
    await box.delete(_usernameKey);
    await box.delete(_jwtTokenKey);
    await box.delete(_tokenRefreshBeforeKey);
  }
}
