import 'dart:convert';

import 'package:assets_client/features/config/data/models/saved_connection_model.dart';
import 'package:hive/hive.dart';

abstract class ConfigLocalDataSource {
  Future<List<SavedConnectionModel>> getAllConnections();
  Future<void> saveConnection(SavedConnectionModel connection);
  Future<void> removeConnection(String id);
  Future<void> setActiveConnectionId(String? id);
  Future<String?> getActiveConnectionId();
  Future<List<String>> getAllUrls();
  Future<void> saveUrl(String url);
  Future<void> removeAllForUrl(String url);
  Future<void> clearAll();
}

class ConfigLocalDataSourceImpl implements ConfigLocalDataSource {
  static const String _boxName = 'app_config';
  static const String _connectionsKey = 'connections';
  static const String _activeConnectionIdKey = 'active_connection_id';
  static const String _urlsListKey = 'urls_list';

  static const String _oldApiUrlKey = 'api_base_url';
  static const String _oldUsernameKey = 'username';
  static const String _oldJwtTokenKey = 'jwt_token';
  static const String _oldTokenRefreshBeforeKey = 'token_refresh_before';
  static const String _oldTokenExpiresAtKey = 'token_expires_at';
  static const String _oldTokenRefreshAtKey = 'token_refresh_at';

  Future<Box<String>> _openBox() => Hive.openBox<String>(_boxName);

  @override
  Future<List<SavedConnectionModel>> getAllConnections() async {
    final box = await _openBox();
    final json = box.get(_connectionsKey);
    if (json != null && json.isNotEmpty) {
      final list = jsonDecode(json) as List;
      return list
          .map((e) =>
              SavedConnectionModel.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    final migrated = await _tryMigrateOldData(box);
    if (migrated != null) return migrated;
    return [];
  }

  Future<List<SavedConnectionModel>?> _tryMigrateOldData(
    Box<String> box,
  ) async {
    final oldUrl = box.get(_oldApiUrlKey);
    final oldToken = box.get(_oldJwtTokenKey);
    if (oldUrl == null || oldToken == null || oldToken.isEmpty) return null;

    final username = box.get(_oldUsernameKey) ?? '';
    final refreshBeforeStr = box.get(_oldTokenRefreshBeforeKey);
    final refreshBefore = refreshBeforeStr != null
        ? int.tryParse(refreshBeforeStr) ?? 0
        : 0;
    final expiresAtStr = box.get(_oldTokenExpiresAtKey);
    final expiresAt =
        expiresAtStr != null ? int.tryParse(expiresAtStr) ?? 0 : 0;
    final refreshAtStr = box.get(_oldTokenRefreshAtKey);
    final refreshAt =
        refreshAtStr != null ? int.tryParse(refreshAtStr) ?? 0 : 0;

    final conn = SavedConnectionModel(
      id: '${oldUrl}_$username',
      apiUrl: oldUrl,
      username: username,
      jwtToken: oldToken,
      refreshBefore: refreshBefore,
      expiresAt: expiresAt,
      refreshAt: refreshAt,
      lastUsedAt: DateTime.now().millisecondsSinceEpoch,
    );

    final migrated = [conn];
await box.put(_connectionsKey, jsonEncode(migrated.map((c) => c.toJson()).toList()));
    await saveUrl(oldUrl);

    await box.delete(_oldApiUrlKey);
    await box.delete(_oldUsernameKey);
    await box.delete(_oldJwtTokenKey);
    await box.delete(_oldTokenRefreshBeforeKey);
    await box.delete(_oldTokenExpiresAtKey);
    await box.delete(_oldTokenRefreshAtKey);

    return migrated;
  }

  @override
  Future<void> saveConnection(SavedConnectionModel connection) async {
    final box = await _openBox();
    final all = await getAllConnections();
    final idx = all.indexWhere(
      (c) => c.apiUrl == connection.apiUrl && c.username == connection.username,
    );
    if (idx >= 0) {
      all[idx] = connection;
    } else {
      all.add(connection);
    }
    await box.put(
      _connectionsKey,
      jsonEncode(all.map((c) => c.toJson()).toList()),
    );
  }

  @override
  Future<void> removeConnection(String id) async {
    final box = await _openBox();
    final all = await getAllConnections();
    all.removeWhere((c) => c.id == id);
    await box.put(
      _connectionsKey,
      jsonEncode(all.map((c) => c.toJson()).toList()),
    );
    final activeId = await getActiveConnectionId();
    if (activeId == id) {
      await setActiveConnectionId(null);
    }
  }

  @override
  Future<void> setActiveConnectionId(String? id) async {
    final box = await _openBox();
    if (id != null) {
      await box.put(_activeConnectionIdKey, id);
    } else {
      await box.delete(_activeConnectionIdKey);
    }
  }

  @override
  Future<String?> getActiveConnectionId() async {
    final box = await _openBox();
    return box.get(_activeConnectionIdKey);
  }

  @override
  Future<List<String>> getAllUrls() async {
    final box = await _openBox();
    final urlsJson = box.get(_urlsListKey);
    final urlsFromConnections = await _getUrlsFromConnections();
    final all = <String>{};
    if (urlsJson != null && urlsJson.isNotEmpty) {
      final parsed = jsonDecode(urlsJson) as List;
      all.addAll(parsed.cast<String>());
    }
    all.addAll(urlsFromConnections);
    final sorted = all.toList()..sort();
    return sorted;
  }

  Future<List<String>> _getUrlsFromConnections() async {
    final all = await getAllConnections();
    return all.map((c) => c.apiUrl).toSet().toList();
  }

  @override
  Future<void> saveUrl(String url) async {
    final box = await _openBox();
    final existing = await getAllUrls();
    if (existing.contains(url)) return;
    existing.add(url);
    existing.sort();
    await box.put(_urlsListKey, jsonEncode(existing));
  }

  @override
  Future<void> removeAllForUrl(String url) async {
    final box = await _openBox();
    final all = await getAllConnections();
    all.removeWhere((c) => c.apiUrl == url);
    await box.put(
      _connectionsKey,
      jsonEncode(all.map((c) => c.toJson()).toList()),
    );
    final urlsJson = box.get(_urlsListKey);
    if (urlsJson != null && urlsJson.isNotEmpty) {
      final urls = (jsonDecode(urlsJson) as List).cast<String>();
      urls.remove(url);
      await box.put(_urlsListKey, jsonEncode(urls));
    }
    final activeId = await getActiveConnectionId();
    if (activeId != null) {
      final active = all.where((c) => c.id == activeId).isNotEmpty;
      if (!active) {
        await setActiveConnectionId(null);
      }
    }
  }

  @override
  Future<void> clearAll() async {
    final box = await _openBox();
    await box.delete(_connectionsKey);
    await box.delete(_activeConnectionIdKey);
    await box.delete(_urlsListKey);
  }
}