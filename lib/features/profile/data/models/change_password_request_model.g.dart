// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordRequestModel(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
  repeat: json['repeat'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestModelToJson(
  _ChangePasswordRequestModel instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
  'repeat': instance.repeat,
};
