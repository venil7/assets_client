import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_entity.freezed.dart';

@freezed
abstract class QuoteItemEntity with _$QuoteItemEntity {
  const factory QuoteItemEntity({
    required String symbol,
    required String exchange,
    String? shortname,
    String? longname,
    required String quoteType,
  }) = _QuoteItemEntity;
}

@freezed
abstract class PriceQuoteEntity with _$PriceQuoteEntity {
  const factory PriceQuoteEntity({
    required int timestamp,
    required double price,
    required int volume,
  }) = _PriceQuoteEntity;
}

@freezed
abstract class FxRateEntity with _$FxRateEntity {
  const factory FxRateEntity({
    required String ccy,
    required String base,
    required double rate,
    required int timestamp,
  }) = _FxRateEntity;
}
