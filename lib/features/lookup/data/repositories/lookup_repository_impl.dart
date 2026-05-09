import 'package:assets_client/features/lookup/data/datasources/lookup_remote_data_source.dart';
import 'package:assets_client/features/lookup/domain/entities/lookup_entity.dart';
import 'package:assets_client/features/lookup/domain/repositories/lookup_repository.dart';

class LookupRepositoryImpl implements LookupRepository {
  final LookupRemoteDataSource remoteDataSource;

  LookupRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<QuoteItemEntity>> searchTicker(String term) async {
    final response = await remoteDataSource.searchTicker(term);
    return response.quotes
        .map(
          (q) => QuoteItemEntity(
            symbol: q.symbol,
            exchange: q.exchange,
            shortname: q.shortname,
            longname: q.longname,
            quoteType: q.quoteType,
          ),
        )
        .toList();
  }

  @override
  Future<PriceQuoteEntity> getQuote(String base, {String? date}) async {
    final model = await remoteDataSource.getQuote(base, date: date);
    return PriceQuoteEntity(
      timestamp: model.timestamp,
      price: model.price,
      volume: model.volume,
    );
  }

  @override
  Future<FxRateEntity> getFxRate(
    String base,
    String ccy, {
    String? date,
  }) async {
    final model = await remoteDataSource.getFxRate(base, ccy, date: date);
    return FxRateEntity(
      ccy: model.ccy,
      base: model.base,
      rate: model.rate,
      timestamp: model.timestamp,
    );
  }
}
