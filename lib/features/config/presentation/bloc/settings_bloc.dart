import 'package:assets_client/features/profile/domain/entities/profile_entity.dart';
import 'package:assets_client/features/profile/domain/repositories/profile_repository.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ProfileRepository repository;

  SettingsBloc({required this.repository}) : super(const SettingsState()) {
    on<LoadProfileEvent>(_onLoadProfile);
    on<ChangePasswordEvent>(_onChangePassword);
    on<LoadPreferencesEvent>(_onLoadPreferences);
    on<UpdatePreferencesEvent>(_onUpdatePreferences);
    on<ResetSettingsState>(_onReset);
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

  Future<void> _onLoadProfile(
    LoadProfileEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isProfileLoading: true, error: null, successMessage: null));
    try {
      final profile = await repository.getProfile();
      emit(state.copyWith(
        isProfileLoading: false,
        profile: profile,
      ));
    } catch (e) {
      emit(state.copyWith(
        isProfileLoading: false,
        error: _errorMessage(e),
      ));
    }
  }

  Future<void> _onChangePassword(
    ChangePasswordEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isPasswordChanging: true, error: null, successMessage: null));
    try {
      await repository.changePassword(
        event.oldPassword,
        event.newPassword,
        event.repeat,
      );
      emit(state.copyWith(
        isPasswordChanging: false,
        successMessage: 'Password changed successfully',
      ));
    } catch (e) {
      emit(state.copyWith(
        isPasswordChanging: false,
        error: _errorMessage(e),
      ));
    }
  }

  Future<void> _onLoadPreferences(
    LoadPreferencesEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isPreferencesLoading: true, error: null, successMessage: null));
    try {
      final prefs = await repository.getPreferences();
      emit(state.copyWith(
        isPreferencesLoading: false,
        preferences: prefs,
      ));
    } catch (e) {
      emit(state.copyWith(
        isPreferencesLoading: false,
        error: _errorMessage(e),
      ));
    }
  }

  Future<void> _onUpdatePreferences(
    UpdatePreferencesEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isPreferencesLoading: true, error: null, successMessage: null));
    try {
      final prefs = await repository.updatePreferences(
        event.baseCcy,
        event.additional,
      );
      emit(state.copyWith(
        isPreferencesLoading: false,
        preferences: prefs,
        successMessage: 'Preferences saved',
      ));
    } catch (e) {
      emit(state.copyWith(
        isPreferencesLoading: false,
        error: _errorMessage(e),
      ));
    }
  }

  void _onReset(
    ResetSettingsState event,
    Emitter<SettingsState> emit,
  ) {
    emit(state.copyWith(error: null, successMessage: null));
  }
}
