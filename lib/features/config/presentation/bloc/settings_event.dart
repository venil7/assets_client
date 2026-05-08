part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object?> get props => [];
}

class LoadProfileEvent extends SettingsEvent {
  const LoadProfileEvent();
}

class ChangePasswordEvent extends SettingsEvent {
  final String oldPassword;
  final String newPassword;
  final String repeat;

  const ChangePasswordEvent({
    required this.oldPassword,
    required this.newPassword,
    required this.repeat,
  });

  @override
  List<Object?> get props => [oldPassword, newPassword, repeat];
}

class LoadPreferencesEvent extends SettingsEvent {
  const LoadPreferencesEvent();
}

class UpdatePreferencesEvent extends SettingsEvent {
  final String baseCcy;
  final Map<String, dynamic>? additional;

  const UpdatePreferencesEvent({
    required this.baseCcy,
    this.additional,
  });

  @override
  List<Object?> get props => [baseCcy, additional];
}

class ResetSettingsState extends SettingsEvent {
  const ResetSettingsState();
}
