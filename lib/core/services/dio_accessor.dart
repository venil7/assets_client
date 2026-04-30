import 'package:dio/dio.dart';

Dio? _dioInstance;

void initDio(Dio dio) {
  _dioInstance = dio;
}

Dio get dioInstance => _dioInstance!;

void setBaseUrl(String url) {
  _dioInstance?.options.baseUrl = url;
}
