part of 'config_bloc.dart';

abstract class ConfigEvent extends Equatable {
  const ConfigEvent();

  @override
  List<Object?> get props => [];
}

class CheckConfigEvent extends ConfigEvent {
  const CheckConfigEvent();
}

class AddUrlEvent extends ConfigEvent {
  final String url;
  const AddUrlEvent(this.url);
  @override
  List<Object?> get props => [url];
}

class SelectUrlEvent extends ConfigEvent {
  final String url;
  const SelectUrlEvent(this.url);
  @override
  List<Object?> get props => [url];
}

class RemoveUrlEvent extends ConfigEvent {
  final String url;
  const RemoveUrlEvent(this.url);
  @override
  List<Object?> get props => [url];
}

class SelectConnectionEvent extends ConfigEvent {
  final String connectionId;
  const SelectConnectionEvent(this.connectionId);
  @override
  List<Object?> get props => [connectionId];
}

class LoginWithCredentialsEvent extends ConfigEvent {
  final String apiUrl;
  final String username;
  final String password;

  const LoginWithCredentialsEvent({
    required this.apiUrl,
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [apiUrl, username, password];
}

class SwitchUserEvent extends ConfigEvent {
  const SwitchUserEvent();
}

class LogoutEvent extends ConfigEvent {
  const LogoutEvent();
}

class ClearAllEvent extends ConfigEvent {
  const ClearAllEvent();
}

class RefreshTokenEvent extends ConfigEvent {
  const RefreshTokenEvent();
}