import 'package:assets_client/features/config/domain/entities/app_config_entity.dart';

abstract class ConfigRepository {
  Future<void> saveApiUrl(String url);
  Future<void> saveCredentials(
    String username,
    String token,
    int refreshBefore,
  );
  Future<AppConfigEntity?> getConfig();
  Future<void> clearConfig();
  Future<void> clearApiUrl();
  Future<void> clearCredentials();
}