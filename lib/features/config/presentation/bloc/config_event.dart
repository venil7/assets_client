part of 'config_bloc.dart';

abstract class ConfigEvent extends Equatable {
  const ConfigEvent();

  @override
  List<Object?> get props => [];
}

class CheckConfigEvent extends ConfigEvent {
  const CheckConfigEvent();
}

class SaveApiUrlEvent extends ConfigEvent {
  final String apiUrl;
  const SaveApiUrlEvent(this.apiUrl);

  @override
  List<Object?> get props => [apiUrl];
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

class ClearConfigEvent extends ConfigEvent {
  const ClearConfigEvent();
}
