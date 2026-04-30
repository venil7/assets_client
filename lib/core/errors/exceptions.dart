abstract class AppException implements Exception {
  final String message;
  AppException(this.message);

  @override
  String toString() => message;
}

class AuthException extends AppException {
  AuthException(super.message);
}

class InvalidCredentialsException extends AuthException {
  InvalidCredentialsException() : super('Invalid username or password');
}

class TokenExpiredException extends AuthException {
  TokenExpiredException() : super('Authentication token expired');
}

class NetworkException extends AppException {
  NetworkException(super.message);
}

class ServerException extends AppException {
  ServerException(super.message);
}

class ValidationException extends AppException {
  final List<ValidationError> errors;
  ValidationException({required String message, required this.errors})
    : super(message);
}

class ValidationError {
  final String field;
  final String message;

  ValidationError({required this.field, required this.message});
}

class NotFoundException extends AppException {
  NotFoundException(super.message);
}
