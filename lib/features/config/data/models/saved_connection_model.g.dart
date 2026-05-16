// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_connection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedConnectionModel _$SavedConnectionModelFromJson(
  Map<String, dynamic> json,
) => _SavedConnectionModel(
  id: json['id'] as String,
  apiUrl: json['apiUrl'] as String,
  username: json['username'] as String,
  jwtToken: json['jwtToken'] as String,
  refreshBefore: (json['refreshBefore'] as num).toInt(),
  expiresAt: (json['expiresAt'] as num).toInt(),
  refreshAt: (json['refreshAt'] as num).toInt(),
  lastUsedAt: (json['lastUsedAt'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SavedConnectionModelToJson(
  _SavedConnectionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'apiUrl': instance.apiUrl,
  'username': instance.username,
  'jwtToken': instance.jwtToken,
  'refreshBefore': instance.refreshBefore,
  'expiresAt': instance.expiresAt,
  'refreshAt': instance.refreshAt,
  'lastUsedAt': instance.lastUsedAt,
};
