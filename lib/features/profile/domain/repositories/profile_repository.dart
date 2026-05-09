import 'package:assets_client/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity> getProfile();
  Future<ProfileEntity> updateProfile(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<ProfileEntity> changePassword(
    String oldPassword,
    String newPassword,
    String repeat,
  );
  Future<void> deleteProfile();
  Future<UserPreferencesEntity> getPreferences();
  Future<UserPreferencesEntity> updatePreferences(
    String baseCcy,
    Map<String, dynamic>? additional,
  );
  Future<SummaryEntity> getSummary(String? range);
  Future<List<UserEntity>> getAllUsers();
  Future<UserEntity> getUserById(int userId);
  Future<UserEntity> createUser(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<UserEntity> updateUser(
    int userId,
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<void> deleteUser(int userId);
}
