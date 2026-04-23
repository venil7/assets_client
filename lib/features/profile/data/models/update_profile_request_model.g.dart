// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileRequestModel _$UpdateProfileRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileRequestModel(
  username: json['username'] as String,
  admin: json['admin'] as bool,
  loginAttempts: (json['login_attempts'] as num).toInt(),
  locked: json['locked'] as bool,
);

Map<String, dynamic> _$UpdateProfileRequestModelToJson(
  _UpdateProfileRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'admin': instance.admin,
  'login_attempts': instance.loginAttempts,
  'locked': instance.locked,
};
