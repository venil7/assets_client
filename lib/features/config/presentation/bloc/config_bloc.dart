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
  }

  String _errorMessage(dynamic e) {
    if (e is DioException) {
      // Prefer custom error from interceptor
      if (e.error != null) {
        return e.error.toString();
      }
      // Fallback: human-readable message from Dio type
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
      // URL saved. No token yet, so move to credentials screen
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
        event.apiUrl,
        event.username,
        authEntity.token,
        authEntity.refreshBefore,
      );
      emit(
        AuthSuccess(
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

  Future<void> _onClearConfig(
    ClearConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.clearConfig();
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
}
