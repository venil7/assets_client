// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssetMetaModel _$AssetMetaModelFromJson(Map<String, dynamic> json) =>
    _AssetMetaModel(
      range: json['range'] as String,
      validRanges: (json['validRanges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      volatilityRange: (json['volatilityRange'] as num).toDouble(),
      volatilityPct: (json['volatilityPct'] as num).toDouble(),
      fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num).toDouble(),
      fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num).toDouble(),
    );

Map<String, dynamic> _$AssetMetaModelToJson(_AssetMetaModel instance) =>
    <String, dynamic>{
      'range': instance.range,
      'validRanges': instance.validRanges,
      'volatilityRange': instance.volatilityRange,
      'volatilityPct': instance.volatilityPct,
      'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
      'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
    };

_AssetCurrencyDataModel _$AssetCurrencyDataModelFromJson(
  Map<String, dynamic> json,
) => _AssetCurrencyDataModel(
  chart: (json['chart'] as List<dynamic>)
      .map((e) => ChartDataModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  changes: ChangesModel.fromJson(json['changes'] as Map<String, dynamic>),
  totals: TotalsModel.fromJson(json['totals'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AssetCurrencyDataModelToJson(
  _AssetCurrencyDataModel instance,
) => <String, dynamic>{
  'chart': instance.chart,
  'changes': instance.changes,
  'totals': instance.totals,
};

_AssetBaseDataModel _$AssetBaseDataModelFromJson(Map<String, dynamic> json) =>
    _AssetBaseDataModel(
      domestic: json['domestic'] as bool,
      invested: (json['invested'] as num).toDouble(),
      fxImpact: (json['fxImpact'] as num).toDouble(),
      fxRate: (json['fxRate'] as num).toDouble(),
      chart: (json['chart'] as List<dynamic>)
          .map((e) => ChartDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      changes: ChangesModel.fromJson(json['changes'] as Map<String, dynamic>),
      totals: TotalsModel.fromJson(json['totals'] as Map<String, dynamic>),
      avgPrice: (json['avgPrice'] as num?)?.toDouble(),
      breakEven: (json['breakEven'] as num?)?.toDouble(),
      realizedPnl: (json['realizedPnl'] as num).toDouble(),
    );

Map<String, dynamic> _$AssetBaseDataModelToJson(_AssetBaseDataModel instance) =>
    <String, dynamic>{
      'domestic': instance.domestic,
      'invested': instance.invested,
      'fxImpact': instance.fxImpact,
      'fxRate': instance.fxRate,
      'chart': instance.chart,
      'changes': instance.changes,
      'totals': instance.totals,
      'avgPrice': instance.avgPrice,
      'breakEven': instance.breakEven,
      'realizedPnl': instance.realizedPnl,
    };

_AssetModel _$AssetModelFromJson(Map<String, dynamic> json) => _AssetModel(
  id: (json['id'] as num).toInt(),
  portfolioId: (json['portfolio_id'] as num).toInt(),
  ticker: json['ticker'] as String,
  name: json['name'] as String,
  userId: (json['user_id'] as num).toInt(),
  holdings: (json['holdings'] as num).toDouble(),
  invested: (json['invested'] as num).toDouble(),
  avgPrice: (json['avg_price'] as num).toDouble(),
  breakEven: (json['break_even'] as num).toDouble(),
  realizedPnl: (json['realized_pnl'] as num).toDouble(),
  numTxs: (json['num_txs'] as num).toInt(),
  lastActivity: json['last_activity'] as String?,
  lastActivityTs: (json['last_activity_ts'] as num?)?.toInt(),
  baseCcy: json['base_ccy'] as String,
  created: json['created'] as String,
  modified: json['modified'] as String,
  meta: AssetMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
  weight: (json['weight'] as num?)?.toDouble(),
  volatilityRange: (json['volatilityRange'] as num).toDouble(),
  volatilityPct: (json['volatilityPct'] as num).toDouble(),
  ccy: AssetCurrencyDataModel.fromJson(json['ccy'] as Map<String, dynamic>),
  base: AssetBaseDataModel.fromJson(json['base'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AssetModelToJson(_AssetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'portfolio_id': instance.portfolioId,
      'ticker': instance.ticker,
      'name': instance.name,
      'user_id': instance.userId,
      'holdings': instance.holdings,
      'invested': instance.invested,
      'avg_price': instance.avgPrice,
      'break_even': instance.breakEven,
      'realized_pnl': instance.realizedPnl,
      'num_txs': instance.numTxs,
      'last_activity': instance.lastActivity,
      'last_activity_ts': instance.lastActivityTs,
      'base_ccy': instance.baseCcy,
      'created': instance.created,
      'modified': instance.modified,
      'meta': instance.meta,
      'weight': instance.weight,
      'volatilityRange': instance.volatilityRange,
      'volatilityPct': instance.volatilityPct,
      'ccy': instance.ccy,
      'base': instance.base,
    };

_CreateAssetRequestModel _$CreateAssetRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateAssetRequestModel(
  ticker: json['ticker'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$CreateAssetRequestModelToJson(
  _CreateAssetRequestModel instance,
) => <String, dynamic>{'ticker': instance.ticker, 'name': instance.name};

_UpdateAssetRequestModel _$UpdateAssetRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateAssetRequestModel(
  ticker: json['ticker'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$UpdateAssetRequestModelToJson(
  _UpdateAssetRequestModel instance,
) => <String, dynamic>{'ticker': instance.ticker, 'name': instance.name};
