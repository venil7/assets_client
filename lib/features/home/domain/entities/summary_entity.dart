import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_entity.freezed.dart';

@freezed
abstract class SummaryChartEntity with _$SummaryChartEntity {
  const factory SummaryChartEntity({
    required int timestamp,
    required double price,
    required int volume,
  }) = _SummaryChartEntity;
}

@freezed
abstract class SummaryChangesEntity with _$SummaryChangesEntity {
  const factory SummaryChangesEntity({
    @JsonKey(name: 'startPrice') required double startPrice,
    @JsonKey(name: 'endPrice') required double endPrice,
    @JsonKey(name: 'returnValue') required double returnValue,
    @JsonKey(name: 'returnPct') required double returnPct,
    required int startTs,
    required int endTs,
  }) = _SummaryChangesEntity;
}

@freezed
abstract class SummaryTotalsEntity with _$SummaryTotalsEntity {
  const factory SummaryTotalsEntity({
    @JsonKey(name: 'returnValue') required double returnValue,
    @JsonKey(name: 'returnPct') required double returnPct,
  }) = _SummaryTotalsEntity;
}

@freezed
abstract class SummaryMetaEntity with _$SummaryMetaEntity {
  const factory SummaryMetaEntity({
    required String range,
    @JsonKey(name: 'validRanges') required List<String> validRanges,
    @JsonKey(name: 'fiftyTwoWeekLow') required double fiftyTwoWeekLow,
    @JsonKey(name: 'fiftyTwoWeekHigh') required double fiftyTwoWeekHigh,
    @JsonKey(name: 'volatilityRange') required double volatilityRange,
    @JsonKey(name: 'volatilityPct') required double volatilityPct,
    required List<String> currencies,
    required List<String> exchanges,
    required List<String> types,
  }) = _SummaryMetaEntity;
}

@freezed
abstract class SummaryEntity with _$SummaryEntity {
  const factory SummaryEntity({
    required int numPortfolios,
    required SummaryMetaEntity meta,
    required List<SummaryChartEntity> chart,
    required Map<String, List<SummaryChartEntity>> multiChart,
    required SummaryChangesEntity changes,
    required SummaryTotalsEntity totals,
    required double invested,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
    required double breakEven,
    @JsonKey(name: 'fxImpact') required double fxImpact,
  }) = _SummaryEntity;
}

@freezed
abstract class PortfolioEntity with _$PortfolioEntity {
  const factory PortfolioEntity({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String name,
    required String description,
    @JsonKey(name: 'num_assets') required int numAssets,
    required String created,
    required String modified,
    double? weight,
    required bool domestic,
    required List<SummaryChartEntity> chart,
    required Map<String, List<SummaryChartEntity>> multiChart,
    required SummaryChangesEntity changes,
    required SummaryTotalsEntity totals,
    required double invested,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
    required double breakEven,
    @JsonKey(name: 'fxImpact') required double fxImpact,
  }) = _PortfolioEntity;
}
