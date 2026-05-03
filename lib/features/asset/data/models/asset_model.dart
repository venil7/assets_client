import 'package:assets_client/features/profile/data/models/summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_model.freezed.dart';
part 'asset_model.g.dart';

@freezed
abstract class AssetMetaModel with _$AssetMetaModel {
  const factory AssetMetaModel({
    required String range,
    @JsonKey(name: 'validRanges') required List<String> validRanges,
    @JsonKey(name: 'fiftyTwoWeekLow') required double fiftyTwoWeekLow,
    @JsonKey(name: 'fiftyTwoWeekHigh') required double fiftyTwoWeekHigh,
  }) = _AssetMetaModel;

  factory AssetMetaModel.fromJson(Map<String, Object?> json) =>
      _$AssetMetaModelFromJson(json);
}

@freezed
abstract class AssetCurrencyDataModel with _$AssetCurrencyDataModel {
  const factory AssetCurrencyDataModel({
    required List<ChartDataModel> chart,
    required ChangesModel changes,
    required TotalsModel totals,
  }) = _AssetCurrencyDataModel;

  factory AssetCurrencyDataModel.fromJson(Map<String, Object?> json) =>
      _$AssetCurrencyDataModelFromJson(json);
}

@freezed
abstract class AssetBaseDataModel with _$AssetBaseDataModel {
  const factory AssetBaseDataModel({
    required bool domestic,
    required double invested,
    @JsonKey(name: 'fxImpact') required double fxImpact,
    required double fxRate,
    required List<ChartDataModel> chart,
    required ChangesModel changes,
    required TotalsModel totals,
    double? avgPrice,
    double? breakEven,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
  }) = _AssetBaseDataModel;

  factory AssetBaseDataModel.fromJson(Map<String, Object?> json) =>
      _$AssetBaseDataModelFromJson(json);
}

@freezed
abstract class AssetModel with _$AssetModel {
  const factory AssetModel({
    required int id,
    @JsonKey(name: 'portfolio_id') required int portfolioId,
    required String ticker,
    required String name,
    @JsonKey(name: 'user_id') required int userId,
    required double holdings,
    required double invested,
    @JsonKey(name: 'avg_price') required double avgPrice,
    @JsonKey(name: 'break_even') required double breakEven,
    @JsonKey(name: 'realized_pnl') required double realizedPnl,
    @JsonKey(name: 'num_txs') required int numTxs,
    @JsonKey(name: 'last_activity') String? lastActivity,
    @JsonKey(name: 'last_activity_ts') int? lastActivityTs,
    @JsonKey(name: 'base_ccy') required String baseCcy,
    required String created,
    required String modified,
    required AssetMetaModel meta,
    double? weight,
    @JsonKey(name: 'volatilityRange') required double volatilityRange,
    @JsonKey(name: 'volatilityPct') required double volatilityPct,
    required AssetCurrencyDataModel ccy,
    required AssetBaseDataModel base,
  }) = _AssetModel;

  factory AssetModel.fromJson(Map<String, Object?> json) =>
      _$AssetModelFromJson(json);
}

@freezed
abstract class CreateAssetRequestModel with _$CreateAssetRequestModel {
  const factory CreateAssetRequestModel({
    required String ticker,
    required String name,
  }) = _CreateAssetRequestModel;

  factory CreateAssetRequestModel.fromJson(Map<String, Object?> json) =>
      _$CreateAssetRequestModelFromJson(json);
}

@freezed
abstract class UpdateAssetRequestModel with _$UpdateAssetRequestModel {
  const factory UpdateAssetRequestModel({
    required String ticker,
    required String name,
  }) = _UpdateAssetRequestModel;

  factory UpdateAssetRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateAssetRequestModelFromJson(json);
}
