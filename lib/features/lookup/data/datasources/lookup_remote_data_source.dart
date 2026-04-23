import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/lookup/data/models/quote_model.dart';

abstract class LookupRemoteDataSource {
  Future<QuoteSearchResponseModel> searchTicker(String term);
  Future<PriceQuoteModel> getQuote(String base, {String? date});
  Future<FxRateModel> getFxRate(String base, String ccy, {String? date});
}

class LookupRemoteDataSourceImpl implements LookupRemoteDataSource {
  final ApiClient apiClient;

  LookupRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<QuoteSearchResponseModel> searchTicker(String term) =>
      apiClient.searchTicker(term);

  @override
  Future<PriceQuoteModel> getQuote(String base, {String? date}) {
    if (date != null) {
      return apiClient.getQuoteForDate(base, date);
    }
    return apiClient.getQuote(base);
  }

  @override
  Future<FxRateModel> getFxRate(String base, String ccy, {String? date}) {
    if (date != null) {
      return apiClient.getFxRateForDate(base, ccy, date);
    }
    return apiClient.getFxRate(base, ccy);
  }
}
