import 'package:assets_client/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> login(String username, String password);
  Future<AuthEntity> refreshToken();
}
