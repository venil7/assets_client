import 'package:hive/hive.dart';

abstract class ConfigLocalDataSource {
  Future<void> saveApiUrl(String url);
  Future<String?> getApiUrl();
  Future<void> clear();
}

class ConfigLocalDataSourceImpl implements ConfigLocalDataSource {
  static const String _boxName = 'app_config';
  static const String _apiUrlKey = 'api_base_url';

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
  Future<void> clear() async {
    final box = await Hive.openBox<String>(_boxName);
    await box.delete(_apiUrlKey);
  }
}
