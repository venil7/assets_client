import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/auth/domain/repositories/auth_repository.dart';
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
    on<SaveApiUrlEvent>(_onSaveApiUrl);
    on<LoginWithCredentialsEvent>(_onLoginWithCredentials);
    on<ClearConfigEvent>(_onClearConfig);
    on<ClearCredentialsEvent>(_onClearCredentials);
    on<RefreshTokenEvent>(_onRefreshToken);
  }

  String _errorMessage(dynamic e) {
    if (e is DioException) {
      if (e.error != null) {
        return e.error.toString();
      }
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return 'Connection timed out. Check network.';
        case DioExceptionType.badResponse:
          return 'Server error (${e.response?.statusCode})';
        case DioExceptionType.unknown:
          if (e.message?.contains('SocketException') ?? false) {
            return 'Cannot connect to server. Check API URL.';
          }
          if ((e.message?.contains('certificate') ?? false) ||
              (e.message?.contains('SSL') ?? false) ||
              (e.message?.contains('ssl') ?? false)) {
            return 'SSL certificate error. Check API URL.';
          }
          return 'Connection failed. Check API URL and network.';
        case DioExceptionType.cancel:
          return 'Request cancelled';
        case DioExceptionType.badCertificate:
          return 'SSL certificate error';
        default:
          return 'Connection failed. Check API URL.';
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
      final config = await repository.getConfig();
      if (config == null) {
        emit(const ApiUrlMissing());
        return;
      }
      if (config.jwtToken != null && config.jwtToken!.isNotEmpty) {
        emit(ConfigFound(apiUrl: config.apiBaseUrl, username: config.username));
      } else {
        emit(
          CredentialsMissing(
            apiUrl: config.apiBaseUrl,
            savedUsername: config.username,
          ),
        );
      }
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onSaveApiUrl(
    SaveApiUrlEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.saveApiUrl(event.apiUrl);
      emit(CredentialsMissing(apiUrl: event.apiUrl, savedUsername: null));
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
      await repository.saveCredentials(
        event.username,
        authEntity.token,
        authEntity.refreshBefore,
      );
      await tokenManager.setToken(authEntity.token, authEntity.refreshBefore);
      emit(
        AuthSuccess(
          apiUrl: event.apiUrl,
          username: event.username,
          token: authEntity.token,
          refreshBefore: authEntity.refreshBefore,
        ),
      );
      emit(
        ConfigFound(apiUrl: event.apiUrl, username: event.username),
      );
    } catch (e) {
      emit(AuthFailure(message: _errorMessage(e)));
    }
  }

  Future<void> _onClearConfig(
    ClearConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.clearConfig();
      await tokenManager.clearToken();
      emit(const ApiUrlMissing());
    } catch (e) {
      emit(ConfigError(message: _errorMessage(e)));
    }
  }

  Future<void> _onClearCredentials(
    ClearCredentialsEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.clearCredentials();
      await tokenManager.clearToken();
      final config = await repository.getConfig();
      if (config != null) {
        emit(
          CredentialsMissing(
            apiUrl: config.apiBaseUrl,
            savedUsername: config.username,
          ),
        );
      } else {
        emit(const ApiUrlMissing());
      }
    } catch (e) {
      emit(ConfigError(message: e.toString()));
    }
  }

  Future<void> _onRefreshToken(
    RefreshTokenEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      final config = await repository.getConfig();
      if (config == null || config.jwtToken == null || config.jwtToken!.isEmpty) {
        emit(TokenRefreshFailure(message: 'No active session'));
        return;
      }
      emit(const TokenRefreshing());
      final auth = await authRepository.refreshToken();
      await repository.saveCredentials(
        config.username ?? '',
        auth.token,
        auth.refreshBefore,
      );
      await tokenManager.setToken(auth.token, auth.refreshBefore);
      emit(
        TokenRefreshed(
          token: auth.token,
          refreshBefore: auth.refreshBefore,
          expiresAt: DateTime.now().millisecondsSinceEpoch + auth.refreshBefore,
        ),
      );
      emit(
        ConfigFound(apiUrl: config.apiBaseUrl, username: config.username),
      );
    } catch (e) {
      emit(TokenRefreshFailure(message: _errorMessage(e)));
    }
  }
}