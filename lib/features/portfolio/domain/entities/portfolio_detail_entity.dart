import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_detail_entity.freezed.dart';

@freezed
abstract class PortfolioChartEntity with _$PortfolioChartEntity {
  const factory PortfolioChartEntity({
    required int timestamp,
    required double price,
    required int volume,
  }) = _PortfolioChartEntity;
}

@freezed
abstract class PortfolioMetaEntity with _$PortfolioMetaEntity {
  const factory PortfolioMetaEntity({
    required String range,
    @JsonKey(name: 'validRanges') required List<String> validRanges,
    @JsonKey(name: 'fiftyTwoWeekLow') required double fiftyTwoWeekLow,
    @JsonKey(name: 'fiftyTwoWeekHigh') required double fiftyTwoWeekHigh,
    @JsonKey(name: 'volatilityRange') required double volatilityRange,
    @JsonKey(name: 'volatilityPct') required double volatilityPct,
    required List<String> currencies,
    required List<String> exchanges,
    required List<String> types,
  }) = _PortfolioMetaEntity;
}

@freezed
abstract class PortfolioChangesEntity with _$PortfolioChangesEntity {
  const factory PortfolioChangesEntity({
    @JsonKey(name: 'startPrice') required double startPrice,
    @JsonKey(name: 'endPrice') required double endPrice,
    @JsonKey(name: 'returnValue') required double returnValue,
    @JsonKey(name: 'returnPct') required double returnPct,
    required int startTs,
    required int endTs,
  }) = _PortfolioChangesEntity;
}

@freezed
abstract class PortfolioDetailEntity with _$PortfolioDetailEntity {
  const factory PortfolioDetailEntity({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String name,
    required String description,
    @JsonKey(name: 'num_assets') required int numAssets,
    required double invested,
    @JsonKey(name: 'realizedPnl') required double realizedPnl,
    required double breakEven,
    @JsonKey(name: 'fxImpact') required double fxImpact,
    required List<PortfolioChartEntity> chart,
    required PortfolioMetaEntity meta,
    required PortfolioChangesEntity changes,
  }) = _PortfolioDetailEntity;
}
