import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required String token,
    @JsonKey(name: 'refreshBefore') required int refreshBefore,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, Object?> json) =>
      _$AuthResponseModelFromJson(json);
}
