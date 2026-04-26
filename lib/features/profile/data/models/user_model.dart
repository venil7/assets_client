import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required bool admin,
    @JsonKey(name: 'login_attempts') required int loginAttempts,
    required bool locked,
    required String created,
    required String modified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class CreateUserRequestModel with _$CreateUserRequestModel {
  const factory CreateUserRequestModel({
    required String username,
    required bool admin,
    @JsonKey(name: 'login_attempts') required int loginAttempts,
    required bool locked,
  }) = _CreateUserRequestModel;

  factory CreateUserRequestModel.fromJson(Map<String, Object?> json) =>
      _$CreateUserRequestModelFromJson(json);
}

@freezed
abstract class UpdateUserRequestModel with _$UpdateUserRequestModel {
  const factory UpdateUserRequestModel({
    required String username,
    required bool admin,
    @JsonKey(name: 'login_attempts') required int loginAttempts,
    required bool locked,
  }) = _UpdateUserRequestModel;

  factory UpdateUserRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateUserRequestModelFromJson(json);
}
