import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';
import 'package:assets_client/features/auth/domain/repositories/auth_repository.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final ConfigRepository repository;
  final AuthRepository authRepository;

  ConfigBloc({
    required this.repository,
    required this.authRepository,
  }) : super(const ConfigInitial()) {
    on<CheckConfigEvent>(_onCheckConfig);
    on<SaveApiUrlEvent>(_onSaveApiUrl);
    on<LoginWithCredentialsEvent>(_onLoginWithCredentials);
    on<ClearConfigEvent>(_onClearConfig);
  }

  Future<void> _onCheckConfig(
    CheckConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    emit(const ConfigLoading());
    try {
      final config = await repository.getConfig();
      if (config != null && config.jwtToken != null) {
        emit(ConfigFound(
          apiUrl: config.apiBaseUrl,
          username: config.username,
        ));
      } else {
        emit(const ConfigNotFound());
      }
    } catch (e) {
      emit(ConfigError(message: e.toString()));
    }
  }

  Future<void> _onSaveApiUrl(
    SaveApiUrlEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.saveApiUrl(event.apiUrl);
      emit(ApiUrlSaved(apiUrl: event.apiUrl));
    } catch (e) {
      emit(ConfigError(message: e.toString()));
    }
  }

  Future<void> _onLoginWithCredentials(
    LoginWithCredentialsEvent event,
    Emitter<ConfigState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      final authEntity = await authRepository.login(event.username, event.password);
      await repository.saveCredentials(
        event.apiUrl,
        event.username,
        authEntity.token,
        authEntity.refreshBefore,
      );
      emit(AuthSuccess(
        apiUrl: event.apiUrl,
        username: event.username,
        token: authEntity.token,
        refreshBefore: authEntity.refreshBefore,
      ));
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onClearConfig(
    ClearConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    try {
      await repository.clearConfig();
      emit(const ConfigNotFound());
    } catch (e) {
      emit(ConfigError(message: e.toString()));
    }
  }
}
