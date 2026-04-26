import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.freezed.dart';
part 'quote_model.g.dart';

@freezed
abstract class QuoteItemModel with _$QuoteItemModel {
  const factory QuoteItemModel({
    required String symbol,
    required String exchange,
    String? shortname,
    String? longname,
    required String quoteType,
  }) = _QuoteItemModel;

  factory QuoteItemModel.fromJson(Map<String, Object?> json) =>
      _$QuoteItemModelFromJson(json);
}

@freezed
abstract class QuoteSearchResponseModel with _$QuoteSearchResponseModel {
  const factory QuoteSearchResponseModel({
    required List<QuoteItemModel> quotes,
  }) = _QuoteSearchResponseModel;

  factory QuoteSearchResponseModel.fromJson(Map<String, Object?> json) =>
      _$QuoteSearchResponseModelFromJson(json);
}

@freezed
abstract class PriceQuoteModel with _$PriceQuoteModel {
  const factory PriceQuoteModel({
    required int timestamp,
    required double price,
    required int volume,
    dynamic tx,
  }) = _PriceQuoteModel;

  factory PriceQuoteModel.fromJson(Map<String, Object?> json) =>
      _$PriceQuoteModelFromJson(json);
}

@freezed
abstract class FxRateModel with _$FxRateModel {
  const factory FxRateModel({
    required String ccy,
    required String base,
    required double rate,
    required int timestamp,
  }) = _FxRateModel;

  factory FxRateModel.fromJson(Map<String, Object?> json) =>
      _$FxRateModelFromJson(json);
}
