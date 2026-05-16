import 'package:dio/dio.dart';

Dio? _dioInstance;

void initDio(Dio dio) {
  _dioInstance = dio;
}

Dio get dioInstance => _dioInstance!;

void setBaseUrl(String url) {
  _dioInstance?.options.baseUrl = url;
}

void updateDioToken(String token) {
  _dioInstance?.options.headers['Authorization'] = 'Bearer $token';
}

void clearDioToken() {
  _dioInstance?.options.headers.remove('Authorization');
}