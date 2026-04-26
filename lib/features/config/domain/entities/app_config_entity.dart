import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_entity.freezed.dart';

@freezed
abstract class AppConfigEntity with _$AppConfigEntity {
  const factory AppConfigEntity({
    required String apiBaseUrl,
    String? username,
    String? jwtToken,
    int? tokenRefreshBefore,
  }) = _AppConfigEntity;
}
