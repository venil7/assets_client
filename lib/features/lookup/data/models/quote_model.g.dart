// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuoteItemModel _$QuoteItemModelFromJson(Map<String, dynamic> json) =>
    _QuoteItemModel(
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      shortname: json['shortname'] as String?,
      longname: json['longname'] as String?,
      quoteType: json['quoteType'] as String,
    );

Map<String, dynamic> _$QuoteItemModelToJson(_QuoteItemModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'exchange': instance.exchange,
      'shortname': instance.shortname,
      'longname': instance.longname,
      'quoteType': instance.quoteType,
    };

_QuoteSearchResponseModel _$QuoteSearchResponseModelFromJson(
  Map<String, dynamic> json,
) => _QuoteSearchResponseModel(
  quotes: (json['quotes'] as List<dynamic>)
      .map((e) => QuoteItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuoteSearchResponseModelToJson(
  _QuoteSearchResponseModel instance,
) => <String, dynamic>{'quotes': instance.quotes};

_PriceQuoteModel _$PriceQuoteModelFromJson(Map<String, dynamic> json) =>
    _PriceQuoteModel(
      timestamp: (json['timestamp'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      volume: (json['volume'] as num).toInt(),
      tx: json['tx'],
    );

Map<String, dynamic> _$PriceQuoteModelToJson(_PriceQuoteModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'price': instance.price,
      'volume': instance.volume,
      'tx': instance.tx,
    };

_FxRateModel _$FxRateModelFromJson(Map<String, dynamic> json) => _FxRateModel(
  ccy: json['ccy'] as String,
  base: json['base'] as String,
  rate: (json['rate'] as num).toDouble(),
  timestamp: (json['timestamp'] as num).toInt(),
);

Map<String, dynamic> _$FxRateModelToJson(_FxRateModel instance) =>
    <String, dynamic>{
      'ccy': instance.ccy,
      'base': instance.base,
      'rate': instance.rate,
      'timestamp': instance.timestamp,
    };
