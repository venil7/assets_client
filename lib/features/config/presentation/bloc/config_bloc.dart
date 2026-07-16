import 'dart:convert';

import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/auth/domain/repositories/auth_repository.dart';
import 'package:assets_client/features/config/data/models/saved_connection_model.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final ConfigRepository repository;
  final AuthRepository authRepository;

  ConfigBloc({required this.repository, required this.authRepository})
    : super(const ConfigInitial()) {
    on<CheckConfigEvent>(_onCheckConfig);
    on<AddUrlEvent>(_onAddUrl);
    on<SelectUrlEvent>(_onSelectUrl);
    on<RemoveUrlEvent>(_onRemoveUrl);
    on<SelectConnectionEvent>(_onSelectConnection);
    on<LoginWithCredentialsEvent>(_onLoginWithCredentials);
    on<SwitchUserEvent>(_onSwitchUser);
    on<LogoutEvent>(_onLogout);
    on<ClearAllEvent>(_onClearAll);
    on<RefreshTokenEvent>(_onRefreshToken);
  }

  String _errorMessage(dynamic e) {
    if (e is DioException) {
      if (e.error != null) return e.error.toString();
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return 'Connection timed out. Check network.';
        case DioExceptionType.badResponse:
          return 'Server error (${e.response?.statusCode})';
        case DioExceptionType.unknown:
          if (e.message?.contains('SocketException') ?? false) {
            return 'Cannot connect to server. Check URL.';
          }
          if ((e.message?.contains('certificate') ?? false) ||
              (e.message?.contains('SSL') ?? false) ||
              (e.message?.contains('ssl') ?? false)) {
            return 'SSL certificate error. Check URL.';
          }
          return 'Connection failed. Check URL and network.';
        case DioExceptionType.cancel:
          return 'Request cancelled';
        case DioExceptionType.badCertificate:
          return 'SSL certificate error';
        default:
          return 'Connection failed. Check URL.';
      }
    }
    return e.toString();
  }

  Future<void> _onCheckConfig(
    CheckConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    emit(const ConfigLoading());
    try {
      final activeConn = await repository.getActiveConnection();
      if (activeConn != null) {
        setBaseUrl(activeConn.apiUrl);
        updateDioToken(activeConn.jwtToken);
        await tokenManager.setActiveConnection(activeConn);

        // Auto-refresh token on app start so stored JWT is always fresh
        try {
          final authEntity = await authRepository.refreshToken();
          final exp = _parseJwtExp(authEntity.token);
          final expiresAt = exp * 1000;
          final refreshAt = expiresAt - authEntity.refreshBefore;
          final updated = activeConn.copyWith(
            jwtToken: authEntity.token,
            refreshBefore: authEntity.refreshBefore,
            expiresAt: expiresAt,
            refreshAt: refreshAt,
            lastUsedAt: DateTime.now().millisecondsSinceEpoch,
          );
          await repository.saveConnection(updated);
          updateDioToken(authEntity.token);
          await tokenManager.setActiveConnection(updated);
          emit(
            ConfigReady(
              apiUrl: updated.apiUrl,
              username: updated.username,
              token: authEntity.token,
              refreshBefore: authEntity.refreshBefore,
            ),
          );
        } catch (_) {
          // Refresh failed (network, server down, etc.) — continue with existing token
          emit(
            ConfigReady(
              apiUrl: activeConn.apiUrl,
              username: activeConn.username,
              token: activeConn.jwtToken,
              refreshBefore: activeConn.refreshBefore,
            ),
          );
        }
        return;
      }

      final urls = await repository.getAllUrls();
      if (urls.isEmpty) {
        emit(const UrlsMissing());
        return;
      }

      final allConnections = await repository.getAllConnections();
      final urlWithCreds = allConnections
          .where((c) => c.jwtToken.isNotEmpty)
          .map((c) => c.apiUrl)
          .toSet();
      final bestUrl = urlWithCreds.isNotEmpty
          ? urlWithCreds.first
          : urls.first;
      final usernames = allConnections
          .where((c) => c.apiUrl == bestUrl && c.username.isNotEmpty)
          .map((c) => c.username)
          .toList();

      setBaseUrl(bestUrl);
      clearDioToken();
      emit(UrlSelected(url: bestUrl, savedUsernames: usernames));
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onAddUrl(
    AddUrlEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.saveUrl(event.url);
      final all = await repository.getAllConnections();
      final usernames = all
          .where((c) => c.apiUrl == event.url && c.username.isNotEmpty)
          .map((c) => c.username)
          .toList();
      setBaseUrl(event.url);
      clearDioToken();
      emit(UrlSelected(url: event.url, savedUsernames: usernames));
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onSelectUrl(
    SelectUrlEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      final all = await repository.getAllConnections();
      final usernames = all
          .where((c) => c.apiUrl == event.url && c.username.isNotEmpty)
          .map((c) => c.username)
          .toList();
      setBaseUrl(event.url);
      clearDioToken();
      emit(UrlSelected(url: event.url, savedUsernames: usernames));
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onRemoveUrl(
    RemoveUrlEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.removeAllForUrl(event.url);
      final urls = await repository.getAllUrls();
      if (urls.isEmpty) {
        emit(const UrlsMissing());
      } else {
        setBaseUrl(urls.first);
        clearDioToken();
        emit(UrlSelected(url: urls.first, savedUsernames: []));
      }
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onSelectConnection(
    SelectConnectionEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      final all = await repository.getAllConnections();
      final conn = all.firstWhere((c) => c.id == event.connectionId);
      setBaseUrl(conn.apiUrl);
      updateDioToken(conn.jwtToken);
      await tokenManager.setActiveConnection(conn);
      emit(
        ConfigReady(
          apiUrl: conn.apiUrl,
          username: conn.username,
          token: conn.jwtToken,
          refreshBefore: conn.refreshBefore,
        ),
      );
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onLoginWithCredentials(
    LoginWithCredentialsEvent event,
    Emitter<ConfigState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      final authEntity = await authRepository.login(
        event.username,
        event.password,
      );

      final now = DateTime.now().millisecondsSinceEpoch;
      final exp = _parseJwtExp(authEntity.token);
      final expiresAt = exp * 1000;
      final refreshAt = expiresAt - authEntity.refreshBefore;

      final conn = SavedConnectionModel(
        id: '${event.apiUrl}_${event.username}',
        apiUrl: event.apiUrl,
        username: event.username,
        jwtToken: authEntity.token,
        refreshBefore: authEntity.refreshBefore,
        expiresAt: expiresAt,
        refreshAt: refreshAt,
        lastUsedAt: now,
      );

      await repository.saveConnection(conn);
      setBaseUrl(event.apiUrl);
      updateDioToken(authEntity.token);
      await tokenManager.setActiveConnection(conn);

      emit(
        AuthSuccess(
          apiUrl: event.apiUrl,
          username: event.username,
          token: authEntity.token,
          refreshBefore: authEntity.refreshBefore,
        ),
      );
      emit(
        ConfigReady(
          apiUrl: event.apiUrl,
          username: event.username,
          token: authEntity.token,
          refreshBefore: authEntity.refreshBefore,
        ),
      );
    } catch (e) {
      emit(AuthFailure(message: _errorMessage(e)));
    }
  }

  int _parseJwtExp(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return 0;
      final normalized = base64Url.normalize(parts[1]);
      final decoded = utf8.decode(base64Url.decode(normalized));
      final payload = jsonDecode(decoded) as Map<String, dynamic>;
      return payload['exp'] as int? ?? 0;
    } catch (_) {
      return 0;
}
  }

  Future<void> _onSwitchUser(
    SwitchUserEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      final currentUrl = tokenManager.activeApiUrl;
      await tokenManager.clearActiveConnection();
      clearDioToken();
      final all = await repository.getAllConnections();
      final urls = all.map((c) => c.apiUrl).toSet().toList()..sort();
      if (urls.isEmpty) {
        emit(const UrlsMissing());
      } else {
        final url = currentUrl ?? urls.first;
        final usernames = all
            .where((c) => c.apiUrl == url && c.username.isNotEmpty)
            .map((c) => c.username)
            .toList();
        emit(UrlSelected(url: url, savedUsernames: usernames));
      }
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onLogout(
    LogoutEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      if (tokenManager.activeApiUrl != null) {
        final all = await repository.getAllConnections();
        final toRemove = all.where(
          (c) =>
              c.apiUrl == tokenManager.activeApiUrl &&
              c.username == tokenManager.activeUsername,
        );
        for (final c in toRemove) {
          await repository.removeConnection(c.id);
        }
      }
      await tokenManager.clearActiveConnection();
      clearDioToken();
      final urls = await repository.getAllUrls();
      if (urls.isEmpty) {
        emit(const UrlsMissing());
      } else {
        final url = urls.first;
        final allConns = await repository.getAllConnections();
        final usernames = allConns
            .where((c) => c.apiUrl == url && c.username.isNotEmpty)
            .map((c) => c.username)
            .toList();
        emit(UrlSelected(url: url, savedUsernames: usernames));
      }
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onClearAll(
    ClearAllEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.clearAll();
      await tokenManager.clearActiveConnection();
      clearDioToken();
      emit(const UrlsMissing());
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onRefreshToken(
    RefreshTokenEvent event,
    Emitter<ConfigState> emit,
  ) async {
    final active = await repository.getActiveConnection();
    if (active == null) {
      emit(const TokenRefreshFailure(message: 'No active session'));
      return;
    }
    emit(const TokenRefreshing());
    try {
      final auth = await authRepository.refreshToken();
      final exp = _parseJwtExp(auth.token);
      final expiresAt = exp * 1000;
      final refreshAt = expiresAt - auth.refreshBefore;
      final updated = active.copyWith(
        jwtToken: auth.token,
        refreshBefore: auth.refreshBefore,
        expiresAt: expiresAt,
        refreshAt: refreshAt,
        lastUsedAt: DateTime.now().millisecondsSinceEpoch,
      );
      await repository.saveConnection(updated);
      updateDioToken(auth.token);
      await tokenManager.setActiveConnection(updated);
      emit(
        TokenRefreshed(
          token: auth.token,
          refreshBefore: auth.refreshBefore,
          expiresAt: expiresAt,
        ),
      );
      emit(
        ConfigReady(
          apiUrl: updated.apiUrl,
          username: updated.username,
          token: auth.token,
          refreshBefore: auth.refreshBefore,
        ),
      );
    } catch (e) {
      emit(TokenRefreshFailure(message: _errorMessage(e)));
    }
  }
}