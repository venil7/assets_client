// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      admin: json['admin'] as bool,
      loginAttempts: (json['login_attempts'] as num).toInt(),
      locked: json['locked'] as bool,
      created: json['created'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'admin': instance.admin,
      'login_attempts': instance.loginAttempts,
      'locked': instance.locked,
      'created': instance.created,
      'modified': instance.modified,
    };
