import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_connection_model.freezed.dart';
part 'saved_connection_model.g.dart';

@freezed
abstract class SavedConnectionModel with _$SavedConnectionModel {
  const factory SavedConnectionModel({
    required String id,
    required String apiUrl,
    required String username,
    required String jwtToken,
    required int refreshBefore,
    required int expiresAt,
    required int refreshAt,
    @Default(0) int lastUsedAt,
  }) = _SavedConnectionModel;

  factory SavedConnectionModel.fromJson(Map<String, Object?> json) =>
      _$SavedConnectionModelFromJson(json);
}