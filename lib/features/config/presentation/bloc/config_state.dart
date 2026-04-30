part of 'config_bloc.dart';

abstract class ConfigState extends Equatable {
  const ConfigState();

  @override
  List<Object?> get props => [];
}

class ConfigInitial extends ConfigState {
  const ConfigInitial();
}

class ConfigLoading extends ConfigState {
  const ConfigLoading();
}

class ConfigNotFound extends ConfigState {
  const ConfigNotFound();
}

class ApiUrlMissing extends ConfigState {
  const ApiUrlMissing();
}

class CredentialsMissing extends ConfigState {
  final String apiUrl;
  final String? savedUsername;

  const CredentialsMissing({required this.apiUrl, this.savedUsername});

  @override
  List<Object?> get props => [apiUrl, savedUsername];
}

class ConfigFound extends ConfigState {
  final String apiUrl;
  final String? username;

  const ConfigFound({required this.apiUrl, this.username});

  @override
  List<Object?> get props => [apiUrl, username];
}

class ConfigError extends ConfigState {
  final String message;
  const ConfigError({required this.message});

  @override
  List<Object?> get props => [message];
}

class ApiUrlSaved extends ConfigState {
  final String apiUrl;
  const ApiUrlSaved({required this.apiUrl});

  @override
  List<Object?> get props => [apiUrl];
}

class AuthLoading extends ConfigState {
  const AuthLoading();
}

class AuthSuccess extends ConfigState {
  final String apiUrl;
  final String username;
  final String token;
  final int refreshBefore;

  const AuthSuccess({
    required this.apiUrl,
    required this.username,
    required this.token,
    required this.refreshBefore,
  });

  @override
  List<Object?> get props => [apiUrl, username, token, refreshBefore];
}

class AuthFailure extends ConfigState {
  final String message;
  const AuthFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
