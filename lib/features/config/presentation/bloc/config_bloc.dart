import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:assets_client/features/config/domain/repositories/config_repository.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final ConfigRepository repository;

  ConfigBloc({required this.repository}) : super(const ConfigInitial()) {
    on<CheckConfigEvent>(_onCheckConfig);
    on<SaveApiUrlEvent>(_onSaveApiUrl);
    on<ClearConfigEvent>(_onClearConfig);
  }

  Future<void> _onCheckConfig(
    CheckConfigEvent event,
    Emitter<ConfigState> emit,
  ) async {
    emit(const ConfigLoading());
    try {
      final config = await repository.getConfig();
      if (config != null) {
        emit(ConfigFound(apiUrl: config.apiBaseUrl));
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
