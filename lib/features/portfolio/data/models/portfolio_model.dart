import 'package:assets_client/features/profile/data/models/summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';
part 'portfolio_model.g.dart';

@freezed
abstract class PortfolioMetaModel with _$PortfolioMetaModel {
  const factory PortfolioMetaModel({
    required String range,
    @JsonKey(name: 'validRanges') required List<String> validRanges,
    @JsonKey(name: 'volatilityRange') required double volatilityRange,
    @JsonKey(name: 'volatilityPct') required double volatilityPct,
    required List<String> currencies,
    required List<String> exchanges,
    required List<String> types,
    @JsonKey(name: 'fiftyTwoWeekLow') required double fiftyTwoWeekLow,
    @JsonKey(name: 'fiftyTwoWeekHigh') required double fiftyTwoWeekHigh,
  }) = _PortfolioMetaModel;

  factory PortfolioMetaModel.fromJson(Map<String, Object?> json) =>
      _$PortfolioMetaModelFromJson(json);
}

@freezed
abstract class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String name,
    required String description,
    @JsonKey(name: 'num_assets') required int numAssets,
    required String created,
    required String modified,
    required PortfolioMetaModel meta,
    double? weight,
    required bool domestic,
    required List<ChartDataModel> chart,
    required Map<String, List<ChartDataModel>> multiChart,
    required ChangesModel changes,
    required TotalsModel totals,
    required double invested,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
    required double breakEven,
    @JsonKey(name: 'fxImpact') required double fxImpact,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, Object?> json) =>
      _$PortfolioModelFromJson(json);
}

@freezed
abstract class CreatePortfolioRequestModel with _$CreatePortfolioRequestModel {
  const factory CreatePortfolioRequestModel({
    required String name,
    required String description,
  }) = _CreatePortfolioRequestModel;

  factory CreatePortfolioRequestModel.fromJson(Map<String, Object?> json) =>
      _$CreatePortfolioRequestModelFromJson(json);
}

@freezed
abstract class UpdatePortfolioRequestModel with _$UpdatePortfolioRequestModel {
  const factory UpdatePortfolioRequestModel({
    required String name,
    required String description,
  }) = _UpdatePortfolioRequestModel;

  factory UpdatePortfolioRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdatePortfolioRequestModelFromJson(json);
}

@freezed
abstract class IdResponseModel with _$IdResponseModel {
  const factory IdResponseModel({required int id}) = _IdResponseModel;

  factory IdResponseModel.fromJson(Map<String, Object?> json) =>
      _$IdResponseModelFromJson(json);
}
