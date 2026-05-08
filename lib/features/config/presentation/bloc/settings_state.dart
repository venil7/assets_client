part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final bool isProfileLoading;
  final bool isPasswordChanging;
  final bool isPreferencesLoading;
  final ProfileEntity? profile;
  final UserPreferencesEntity? preferences;
  final String? error;
  final String? successMessage;

  const SettingsState({
    this.isProfileLoading = false,
    this.isPasswordChanging = false,
    this.isPreferencesLoading = false,
    this.profile,
    this.preferences,
    this.error,
    this.successMessage,
  });

  SettingsState copyWith({
    bool? isProfileLoading,
    bool? isPasswordChanging,
    bool? isPreferencesLoading,
    ProfileEntity? profile,
    UserPreferencesEntity? preferences,
    String? error,
    String? successMessage,
    bool clearProfile = false,
    bool clearPreferences = false,
  }) {
    return SettingsState(
      isProfileLoading: isProfileLoading ?? this.isProfileLoading,
      isPasswordChanging: isPasswordChanging ?? this.isPasswordChanging,
      isPreferencesLoading: isPreferencesLoading ?? this.isPreferencesLoading,
      profile: clearProfile ? null : (profile ?? this.profile),
      preferences: clearPreferences ? null : (preferences ?? this.preferences),
      error: error,
      successMessage: successMessage,
    );
  }

  @override
  List<Object?> get props => [
    isProfileLoading,
    isPasswordChanging,
    isPreferencesLoading,
    profile,
    preferences,
    error,
    successMessage,
  ];
}
