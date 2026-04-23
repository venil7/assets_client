// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferencesModel _$UserPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesModel(
  id: (json['id'] as num).toInt(),
  baseCcy: json['base_ccy'] as String,
  additional: json['additional'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$UserPreferencesModelToJson(
  _UserPreferencesModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'base_ccy': instance.baseCcy,
  'additional': instance.additional,
};
