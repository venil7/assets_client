import 'package:assets_client/features/lookup/domain/entities/lookup_entity.dart';

abstract class LookupRepository {
  Future<List<QuoteItemEntity>> searchTicker(String term);
  Future<PriceQuoteEntity> getQuote(String base, {String? date});
  Future<FxRateEntity> getFxRate(String base, String ccy, {String? date});
}
