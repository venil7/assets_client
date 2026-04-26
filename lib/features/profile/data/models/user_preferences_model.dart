import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_model.freezed.dart';
part 'user_preferences_model.g.dart';

@freezed
abstract class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    required int id,
    @JsonKey(name: 'base_ccy') required String baseCcy,
    Map<String, dynamic>? additional,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, Object?> json) =>
      _$UserPreferencesModelFromJson(json);
}
