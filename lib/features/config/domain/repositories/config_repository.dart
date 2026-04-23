import 'package:assets_client/features/config/domain/entities/app_config_entity.dart';

abstract class ConfigRepository {
  Future<void> saveApiUrl(String url);
  Future<AppConfigEntity?> getConfig();
  Future<void> clearConfig();
}
