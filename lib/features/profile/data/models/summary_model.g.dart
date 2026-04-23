// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryMetaModel _$SummaryMetaModelFromJson(Map<String, dynamic> json) =>
    _SummaryMetaModel(
      range: json['range'] as String,
      validRanges: (json['validRanges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num).toDouble(),
      fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num).toDouble(),
      volatilityRange: (json['volatilityRange'] as num).toDouble(),
      volatilityPct: (json['volatilityPct'] as num).toDouble(),
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      exchanges: (json['exchanges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SummaryMetaModelToJson(_SummaryMetaModel instance) =>
    <String, dynamic>{
      'range': instance.range,
      'validRanges': instance.validRanges,
      'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
      'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
      'volatilityRange': instance.volatilityRange,
      'volatilityPct': instance.volatilityPct,
      'currencies': instance.currencies,
      'exchanges': instance.exchanges,
      'types': instance.types,
    };

_ChartDataModel _$ChartDataModelFromJson(Map<String, dynamic> json) =>
    _ChartDataModel(
      timestamp: (json['timestamp'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      volume: (json['volume'] as num).toInt(),
      tx: json['tx'],
    );

Map<String, dynamic> _$ChartDataModelToJson(_ChartDataModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'price': instance.price,
      'volume': instance.volume,
      'tx': instance.tx,
    };

_ChangesModel _$ChangesModelFromJson(Map<String, dynamic> json) =>
    _ChangesModel(
      startPrice: (json['startPrice'] as num).toDouble(),
      endPrice: (json['endPrice'] as num).toDouble(),
      returnValue: (json['returnValue'] as num).toDouble(),
      returnPct: (json['returnPct'] as num).toDouble(),
      startTs: (json['startTs'] as num).toInt(),
      endTs: (json['endTs'] as num).toInt(),
    );

Map<String, dynamic> _$ChangesModelToJson(_ChangesModel instance) =>
    <String, dynamic>{
      'startPrice': instance.startPrice,
      'endPrice': instance.endPrice,
      'returnValue': instance.returnValue,
      'returnPct': instance.returnPct,
      'startTs': instance.startTs,
      'endTs': instance.endTs,
    };

_TotalsModel _$TotalsModelFromJson(Map<String, dynamic> json) => _TotalsModel(
  returnValue: (json['returnValue'] as num).toDouble(),
  returnPct: (json['returnPct'] as num).toDouble(),
);

Map<String, dynamic> _$TotalsModelToJson(_TotalsModel instance) =>
    <String, dynamic>{
      'returnValue': instance.returnValue,
      'returnPct': instance.returnPct,
    };

_SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) =>
    _SummaryModel(
      numPortfolios: (json['numPortfolios'] as num).toInt(),
      meta: SummaryMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      chart: (json['chart'] as List<dynamic>)
          .map((e) => ChartDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      multiChart: (json['multiChart'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => ChartDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ),
      changes: ChangesModel.fromJson(json['changes'] as Map<String, dynamic>),
      totals: TotalsModel.fromJson(json['totals'] as Map<String, dynamic>),
      invested: (json['invested'] as num).toDouble(),
      realizedPnl: (json['realizedPnl'] as num).toDouble(),
      breakEven: (json['breakEven'] as num).toDouble(),
      fxImpact: (json['fxImpact'] as num).toDouble(),
    );

Map<String, dynamic> _$SummaryModelToJson(_SummaryModel instance) =>
    <String, dynamic>{
      'numPortfolios': instance.numPortfolios,
      'meta': instance.meta,
      'chart': instance.chart,
      'multiChart': instance.multiChart,
      'changes': instance.changes,
      'totals': instance.totals,
      'invested': instance.invested,
      'realizedPnl': instance.realizedPnl,
      'breakEven': instance.breakEven,
      'fxImpact': instance.fxImpact,
    };
