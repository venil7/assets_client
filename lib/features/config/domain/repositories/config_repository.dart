import 'package:assets_client/features/config/data/models/saved_connection_model.dart';

abstract class ConfigRepository {
  Future<List<SavedConnectionModel>> getAllConnections();
  Future<void> saveConnection(SavedConnectionModel connection);
  Future<void> removeConnection(String id);
  Future<void> setActiveConnectionId(String? id);
  Future<String?> getActiveConnectionId();
  Future<List<String>> getAllUrls();
  Future<void> saveUrl(String url);
  Future<SavedConnectionModel?> getActiveConnection();
  Future<void> removeAllForUrl(String url);
  Future<void> clearAll();
}