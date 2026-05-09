import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/profile/data/models/profile_model.dart';
import 'package:assets_client/features/profile/data/models/user_preferences_model.dart';
import 'package:assets_client/features/profile/data/models/update_profile_request_model.dart';
import 'package:assets_client/features/profile/data/models/change_password_request_model.dart';
import 'package:assets_client/features/profile/data/models/summary_model.dart';
import 'package:assets_client/features/profile/data/models/user_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<ProfileModel> updateProfile(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<ProfileModel> changePassword(
    String oldPassword,
    String newPassword,
    String repeat,
  );
  Future<void> deleteProfile();
  Future<UserPreferencesModel> getPreferences();
  Future<UserPreferencesModel> updatePreferences(
    String baseCcy,
    Map<String, dynamic>? additional,
  );
  Future<SummaryModel> getSummary(String? range);
  Future<List<UserModel>> getAllUsers();
  Future<UserModel> getUserById(int userId);
  Future<UserModel> createUser(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<UserModel> updateUser(
    int userId,
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  );
  Future<void> deleteUser(int userId);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiClient apiClient;

  ProfileRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<ProfileModel> getProfile() => apiClient.getProfile();

  @override
  Future<ProfileModel> updateProfile(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  ) {
    final request = UpdateProfileRequestModel(
      username: username,
      admin: admin,
      loginAttempts: loginAttempts,
      locked: locked,
    );
    return apiClient.updateProfile(request);
  }

  @override
  Future<ProfileModel> changePassword(
    String oldPassword,
    String newPassword,
    String repeat,
  ) {
    final request = ChangePasswordRequestModel(
      oldPassword: oldPassword,
      newPassword: newPassword,
      repeat: repeat,
    );
    return apiClient.changePassword(request);
  }

  @override
  Future<void> deleteProfile() async {
    await apiClient.deleteProfile();
  }

  @override
  Future<UserPreferencesModel> getPreferences() => apiClient.getPreferences();

  @override
  Future<UserPreferencesModel> updatePreferences(
    String baseCcy,
    Map<String, dynamic>? additional,
  ) {
    final request = UserPreferencesModel(
      id: 0,
      baseCcy: baseCcy,
      additional: additional,
    );
    return apiClient.updatePreferences(request);
  }

  @override
  Future<SummaryModel> getSummary(String? range) => apiClient.getSummary(range);

  @override
  Future<List<UserModel>> getAllUsers() => apiClient.getAllUsers();

  @override
  Future<UserModel> getUserById(int userId) => apiClient.getUserById(userId);

  @override
  Future<UserModel> createUser(
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  ) {
    final request = CreateUserRequestModel(
      username: username,
      admin: admin,
      loginAttempts: loginAttempts,
      locked: locked,
    );
    return apiClient.createUser(request);
  }

  @override
  Future<UserModel> updateUser(
    int userId,
    String username,
    bool admin,
    int loginAttempts,
    bool locked,
  ) {
    final request = UpdateUserRequestModel(
      username: username,
      admin: admin,
      loginAttempts: loginAttempts,
      locked: locked,
    );
    return apiClient.updateUser(userId, request);
  }

  @override
  Future<void> deleteUser(int userId) async {
    await apiClient.deleteUser(userId);
  }
}
