import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_request_model.freezed.dart';
part 'update_profile_request_model.g.dart';

@freezed
class UpdateProfileRequestModel with _$UpdateProfileRequestModel {
  const factory UpdateProfileRequestModel({
    required String username,
    required bool admin,
    @JsonKey(name: 'login_attempts') required int loginAttempts,
    required bool locked,
  }) = _UpdateProfileRequestModel;

  factory UpdateProfileRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateProfileRequestModelFromJson(json);
}
