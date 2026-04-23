import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/domain/entities/app_config_entity.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  final ConfigLocalDataSource localDataSource;

  ConfigRepositoryImpl({required this.localDataSource});

  @override
  Future<void> saveApiUrl(String url) => localDataSource.saveApiUrl(url);

  @override
  Future<AppConfigEntity?> getConfig() async {
    final url = await localDataSource.getApiUrl();
    if (url == null) return null;
    return AppConfigEntity(apiBaseUrl: url);
  }

  @override
  Future<void> clearConfig() => localDataSource.clear();
}
