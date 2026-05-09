import 'package:assets_client/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:assets_client/features/auth/domain/entities/auth_entity.dart';
import 'package:assets_client/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AuthEntity> login(String username, String password) async {
    final model = await remoteDataSource.login(username, password);
    return AuthEntity(token: model.token, refreshBefore: model.refreshBefore);
  }

  @override
  Future<AuthEntity> refreshToken() async {
    final model = await remoteDataSource.refreshToken();
    return AuthEntity(token: model.token, refreshBefore: model.refreshBefore);
  }
}
