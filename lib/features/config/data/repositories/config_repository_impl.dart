import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/data/models/saved_connection_model.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  final ConfigLocalDataSource localDataSource;

  ConfigRepositoryImpl({required this.localDataSource});

  @override
  Future<List<SavedConnectionModel>> getAllConnections() =>
      localDataSource.getAllConnections();

  @override
  Future<void> saveConnection(SavedConnectionModel connection) =>
      localDataSource.saveConnection(connection);

  @override
  Future<void> saveUrl(String url) => localDataSource.saveUrl(url);

  @override
  Future<void> removeConnection(String id) =>
      localDataSource.removeConnection(id);

  @override
  Future<void> setActiveConnectionId(String? id) =>
      localDataSource.setActiveConnectionId(id);

  @override
  Future<String?> getActiveConnectionId() =>
      localDataSource.getActiveConnectionId();

  @override
  Future<List<String>> getAllUrls() => localDataSource.getAllUrls();

  @override
  Future<SavedConnectionModel?> getActiveConnection() async {
    final id = await localDataSource.getActiveConnectionId();
    if (id == null) return null;
    final all = await localDataSource.getAllConnections();
    try {
      return all.firstWhere((c) => c.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> removeAllForUrl(String url) =>
      localDataSource.removeAllForUrl(url);

  @override
  Future<void> clearAll() => localDataSource.clearAll();
}