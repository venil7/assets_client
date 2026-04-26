import 'package:dio/dio.dart';
import 'package:assets_client/core/errors/exceptions.dart';

class NetworkErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        throw NetworkException('Connection timeout. Check your internet.');
      case DioExceptionType.badResponse:
        if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
          throw TokenExpiredException();
        }
        if (err.response?.statusCode == 404) {
          throw NotFoundException('Resource not found');
        }
        if (err.response?.statusCode == 500) {
          throw ServerException('Server error');
        }
        throw ServerException(
          err.response?.data['message'] ?? 'Unknown error',
        );
      case DioExceptionType.cancel:
        throw NetworkException('Request cancelled');
      default:
        throw NetworkException('Network error: ${err.message}');
    }
  }
}
