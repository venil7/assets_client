import 'package:assets_client/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class NetworkErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return handler.next(
          err.copyWith(
            error: NetworkException('Connection timeout. Check your internet.'),
          ),
        );
      case DioExceptionType.badResponse:
        final message =
            err.response?.data['message'] ??
            err.response?.statusMessage ??
            'Unknown error';
        if (err.response?.statusCode == 401 ||
            err.response?.statusCode == 403) {
          return handler.next(err.copyWith(error: TokenExpiredException()));
        }
        if (err.response?.statusCode == 404) {
          return handler.next(
            err.copyWith(error: NotFoundException('Resource not found')),
          );
        }
        return handler.next(
          err.copyWith(error: ServerException(message.toString())),
        );
      case DioExceptionType.cancel:
        return handler.next(
          err.copyWith(error: NetworkException('Request cancelled')),
        );
      case DioExceptionType.badCertificate:
        return handler.next(
          err.copyWith(error: NetworkException('Bad certificate')),
        );
      case DioExceptionType.unknown:
        if (err.message?.contains('SocketException') ?? false) {
          return handler.next(
            err.copyWith(
              error: NetworkException(
                'Cannot connect to server. Check API URL and network.',
              ),
            ),
          );
        }
        return handler.next(
          err.copyWith(
            error: NetworkException('Network error: ${err.message}'),
          ),
        );
      default:
        return handler.next(
          err.copyWith(
            error: NetworkException('Network error: ${err.message}'),
          ),
        );
    }
  }
}
