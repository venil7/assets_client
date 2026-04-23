import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_model.freezed.dart';
part 'summary_model.g.dart';

@freezed
class SummaryMetaModel with _$SummaryMetaModel {
  const factory SummaryMetaModel({
    required String range,
    @JsonKey(name: 'validRanges') required List<String> validRanges,
    @JsonKey(name: 'fiftyTwoWeekLow') required double fiftyTwoWeekLow,
    @JsonKey(name: 'fiftyTwoWeekHigh') required double fiftyTwoWeekHigh,
    @JsonKey(name: 'volatilityRange') required double volatilityRange,
    @JsonKey(name: 'volatilityPct') required double volatilityPct,
    required List<String> currencies,
    required List<String> exchanges,
    required List<String> types,
  }) = _SummaryMetaModel;

  factory SummaryMetaModel.fromJson(Map<String, Object?> json) =>
      _$SummaryMetaModelFromJson(json);
}

@freezed
class ChartDataModel with _$ChartDataModel {
  const factory ChartDataModel({
    required int timestamp,
    required double price,
    required int volume,
    dynamic tx,
  }) = _ChartDataModel;

  factory ChartDataModel.fromJson(Map<String, Object?> json) =>
      _$ChartDataModelFromJson(json);
}

@freezed
class ChangesModel with _$ChangesModel {
  const factory ChangesModel({
    @JsonKey(name: 'startPrice') required double startPrice,
    @JsonKey(name: 'endPrice') required double endPrice,
    @JsonKey(name: 'returnValue') required double returnValue,
    @JsonKey(name: 'returnPct') required double returnPct,
    required int startTs,
    required int endTs,
  }) = _ChangesModel;

  factory ChangesModel.fromJson(Map<String, Object?> json) =>
      _$ChangesModelFromJson(json);
}

@freezed
class TotalsModel with _$TotalsModel {
  const factory TotalsModel({
    @JsonKey(name: 'returnValue') required double returnValue,
    @JsonKey(name: 'returnPct') required double returnPct,
  }) = _TotalsModel;

  factory TotalsModel.fromJson(Map<String, Object?> json) =>
      _$TotalsModelFromJson(json);
}

@freezed
class SummaryModel with _$SummaryModel {
  const factory SummaryModel({
    required int numPortfolios,
    required SummaryMetaModel meta,
    required List<ChartDataModel> chart,
    required Map<String, List<ChartDataModel>> multiChart,
    required ChangesModel changes,
    required TotalsModel totals,
    required double invested,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
    required double breakEven,
    @JsonKey(name: 'fxImpact') required double fxImpact,
  }) = _SummaryModel;

  factory SummaryModel.fromJson(Map<String, Object?> json) =>
      _$SummaryModelFromJson(json);
}
