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

class UrlsMissing extends ConfigState {
  const UrlsMissing();
}

class UrlSelected extends ConfigState {
  final String url;
  final List<String> savedUsernames;

  const UrlSelected({required this.url, this.savedUsernames = const []});

  @override
  List<Object?> get props => [url, savedUsernames];
}

class ConfigReady extends ConfigState {
  final String apiUrl;
  final String username;
  final String token;
  final int refreshBefore;

  const ConfigReady({
    required this.apiUrl,
    required this.username,
    required this.token,
    required this.refreshBefore,
  });

  @override
  List<Object?> get props => [apiUrl, username, token, refreshBefore];
}

class ConfigError extends ConfigState {
  final String message;
  const ConfigError({required this.message});
  @override
  List<Object?> get props => [message];
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

class TokenRefreshing extends ConfigState {
  const TokenRefreshing();
}

class TokenRefreshed extends ConfigState {
  final String token;
  final int refreshBefore;
  final int expiresAt;

  const TokenRefreshed({
    required this.token,
    required this.refreshBefore,
    required this.expiresAt,
  });

  @override
  List<Object?> get props => [token, refreshBefore, expiresAt];
}

class TokenRefreshFailure extends ConfigState {
  final String message;
  const TokenRefreshFailure({required this.message});
  @override
  List<Object?> get props => [message];
}