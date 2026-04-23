// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortfolioMetaModel _$PortfolioMetaModelFromJson(Map<String, dynamic> json) =>
    _PortfolioMetaModel(
      range: json['range'] as String,
      validRanges: (json['validRanges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      volatilityRange: (json['volatilityRange'] as num).toDouble(),
      volatilityPct: (json['volatilityPct'] as num).toDouble(),
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      exchanges: (json['exchanges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num).toDouble(),
      fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num).toDouble(),
    );

Map<String, dynamic> _$PortfolioMetaModelToJson(_PortfolioMetaModel instance) =>
    <String, dynamic>{
      'range': instance.range,
      'validRanges': instance.validRanges,
      'volatilityRange': instance.volatilityRange,
      'volatilityPct': instance.volatilityPct,
      'currencies': instance.currencies,
      'exchanges': instance.exchanges,
      'types': instance.types,
      'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
      'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
    };

_PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) =>
    _PortfolioModel(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      numAssets: (json['num_assets'] as num).toInt(),
      created: json['created'] as String,
      modified: json['modified'] as String,
      meta: PortfolioMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      weight: (json['weight'] as num?)?.toDouble(),
      domestic: json['domestic'] as bool,
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

Map<String, dynamic> _$PortfolioModelToJson(_PortfolioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'num_assets': instance.numAssets,
      'created': instance.created,
      'modified': instance.modified,
      'meta': instance.meta,
      'weight': instance.weight,
      'domestic': instance.domestic,
      'chart': instance.chart,
      'multiChart': instance.multiChart,
      'changes': instance.changes,
      'totals': instance.totals,
      'invested': instance.invested,
      'realizedPnl': instance.realizedPnl,
      'breakEven': instance.breakEven,
      'fxImpact': instance.fxImpact,
    };

_CreatePortfolioRequestModel _$CreatePortfolioRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreatePortfolioRequestModel(
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$CreatePortfolioRequestModelToJson(
  _CreatePortfolioRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

_UpdatePortfolioRequestModel _$UpdatePortfolioRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdatePortfolioRequestModel(
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$UpdatePortfolioRequestModelToJson(
  _UpdatePortfolioRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

_IdResponseModel _$IdResponseModelFromJson(Map<String, dynamic> json) =>
    _IdResponseModel(id: (json['id'] as num).toInt());

Map<String, dynamic> _$IdResponseModelToJson(_IdResponseModel instance) =>
    <String, dynamic>{'id': instance.id};
