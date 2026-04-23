import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_entity.freezed.dart';

@freezed
class AppConfigEntity with _$AppConfigEntity {
  const factory AppConfigEntity({
    required String apiBaseUrl,
  }) = _AppConfigEntity;
}

