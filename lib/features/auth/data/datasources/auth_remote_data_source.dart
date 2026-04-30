import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/auth/data/models/auth_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(String username, String password);
  Future<AuthResponseModel> refreshToken();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<AuthResponseModel> login(String username, String password) async {
    return await apiClient.login({'username': username, 'password': password});
  }

  @override
  Future<AuthResponseModel> refreshToken() async {
    return await apiClient.refreshToken();
  }
}
