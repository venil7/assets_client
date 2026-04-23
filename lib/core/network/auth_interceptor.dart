import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String Function()? getToken;
  final Future<String> Function()? refreshToken;

  AuthInterceptor({
    this.getToken,
    this.refreshToken,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (getToken != null) {
      final token = getToken!();
      if (token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && refreshToken != null) {
      try {
        final newToken = await refreshToken!();
        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer $newToken';

        final dio = Dio();
        final response = await dio.fetch(options);
        return handler.resolve(response);
      } catch (e) {
        return handler.next(err);
      }
    }
    handler.next(err);
  }
}
