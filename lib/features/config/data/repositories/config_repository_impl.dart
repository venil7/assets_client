import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/domain/entities/app_config_entity.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  final ConfigLocalDataSource localDataSource;

  ConfigRepositoryImpl({required this.localDataSource});

  @override
  Future<void> saveApiUrl(String url) => localDataSource.saveApiUrl(url);

  @override
  Future<void> saveCredentials(
    String username,
    String token,
    int refreshBefore,
  ) async {
    await localDataSource.saveUsername(username);
    await localDataSource.saveJwtToken(token, refreshBefore);
  }

  @override
  Future<AppConfigEntity?> getConfig() async {
    final url = await localDataSource.getApiUrl();
    if (url == null) return null;
    final username = await localDataSource.getUsername();
    final token = await localDataSource.getJwtToken();
    final refreshBefore = await localDataSource.getTokenRefreshBefore();
    return AppConfigEntity(
      apiBaseUrl: url,
      username: username,
      jwtToken: token,
      tokenRefreshBefore: refreshBefore,
    );
  }

  @override
  Future<void> clearConfig() => localDataSource.clear();

  @override
  Future<void> clearApiUrl() async {
    await localDataSource.clearApiUrl();
  }

  @override
  Future<void> clearCredentials() async {
    await localDataSource.clearCredentials();
  }
}
