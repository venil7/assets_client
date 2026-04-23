// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  admin: json['admin'] as bool,
  loginAttempts: (json['login_attempts'] as num).toInt(),
  locked: json['locked'] as bool,
  created: json['created'] as String,
  modified: json['modified'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'admin': instance.admin,
      'login_attempts': instance.loginAttempts,
      'locked': instance.locked,
      'created': instance.created,
      'modified': instance.modified,
    };

_CreateUserRequestModel _$CreateUserRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateUserRequestModel(
  username: json['username'] as String,
  admin: json['admin'] as bool,
  loginAttempts: (json['login_attempts'] as num).toInt(),
  locked: json['locked'] as bool,
);

Map<String, dynamic> _$CreateUserRequestModelToJson(
  _CreateUserRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'admin': instance.admin,
  'login_attempts': instance.loginAttempts,
  'locked': instance.locked,
};

_UpdateUserRequestModel _$UpdateUserRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateUserRequestModel(
  username: json['username'] as String,
  admin: json['admin'] as bool,
  loginAttempts: (json['login_attempts'] as num).toInt(),
  locked: json['locked'] as bool,
);

Map<String, dynamic> _$UpdateUserRequestModelToJson(
  _UpdateUserRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'admin': instance.admin,
  'login_attempts': instance.loginAttempts,
  'locked': instance.locked,
};
