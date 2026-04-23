// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    _AuthResponseModel(
      token: json['token'] as String,
      refreshBefore: (json['refreshBefore'] as num).toInt(),
    );

Map<String, dynamic> _$AuthResponseModelToJson(_AuthResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshBefore': instance.refreshBefore,
    };
