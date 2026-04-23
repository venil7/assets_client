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

class ConfigFound extends ConfigState {
  final String apiUrl;
  const ConfigFound({required this.apiUrl});

  @override
  List<Object?> get props => [apiUrl];
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
