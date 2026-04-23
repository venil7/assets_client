import 'package:assets_client/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:assets_client/features/profile/domain/entities/profile_entity.dart';
import 'package:assets_client/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ProfileEntity> getProfile() async {
    final model = await remoteDataSource.getProfile();
    return ProfileEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<ProfileEntity> updateProfile(String username, bool admin, int loginAttempts, bool locked) async {
    final model = await remoteDataSource.updateProfile(username, admin, loginAttempts, locked);
    return ProfileEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<ProfileEntity> changePassword(String oldPassword, String newPassword, String repeat) async {
    final model = await remoteDataSource.changePassword(oldPassword, newPassword, repeat);
    return ProfileEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<void> deleteProfile() => remoteDataSource.deleteProfile();

  @override
  Future<UserPreferencesEntity> getPreferences() async {
    final model = await remoteDataSource.getPreferences();
    return UserPreferencesEntity(
      id: model.id,
      baseCcy: model.baseCcy,
      additional: model.additional,
    );
  }

  @override
  Future<UserPreferencesEntity> updatePreferences(String baseCcy, Map<String, dynamic>? additional) async {
    final model = await remoteDataSource.updatePreferences(baseCcy, additional);
    return UserPreferencesEntity(
      id: model.id,
      baseCcy: model.baseCcy,
      additional: model.additional,
    );
  }

  @override
  Future<SummaryEntity> getSummary(String? range) async {
    final model = await remoteDataSource.getSummary(range);
    return SummaryEntity(
      numPortfolios: model.numPortfolios,
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  @override
  Future<List<UserEntity>> getAllUsers() async {
    final models = await remoteDataSource.getAllUsers();
    return models
        .map((m) => UserEntity(
              id: m.id,
              username: m.username,
              admin: m.admin,
              loginAttempts: m.loginAttempts,
              locked: m.locked,
              created: m.created,
              modified: m.modified,
            ))
        .toList();
  }

  @override
  Future<UserEntity> getUserById(int userId) async {
    final model = await remoteDataSource.getUserById(userId);
    return UserEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<UserEntity> createUser(String username, bool admin, int loginAttempts, bool locked) async {
    final model = await remoteDataSource.createUser(username, admin, loginAttempts, locked);
    return UserEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<UserEntity> updateUser(int userId, String username, bool admin, int loginAttempts, bool locked) async {
    final model = await remoteDataSource.updateUser(userId, username, admin, loginAttempts, locked);
    return UserEntity(
      id: model.id,
      username: model.username,
      admin: model.admin,
      loginAttempts: model.loginAttempts,
      locked: model.locked,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<void> deleteUser(int userId) => remoteDataSource.deleteUser(userId);
}
