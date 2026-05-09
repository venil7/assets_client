import 'package:assets_client/features/asset/data/datasources/asset_remote_data_source.dart';
import 'package:assets_client/features/asset/domain/entities/asset_detail_entity.dart';
import 'package:assets_client/features/asset/domain/repositories/asset_detail_repository.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';

class AssetDetailRepositoryImpl implements AssetDetailRepository {
  final AssetRemoteDataSource remoteDataSource;

  AssetDetailRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AssetDetailEntity> getAssetDetail(
    int portfolioId,
    int assetId,
    String? range,
  ) async {
    final m = await remoteDataSource.getAsset(portfolioId, assetId, range);

    return AssetDetailEntity(
      id: m.id,
      portfolioId: m.portfolioId,
      ticker: m.ticker,
      name: m.name,
      userId: m.userId,
      holdings: m.holdings,
      invested: m.invested,
      avgPrice: m.avgPrice,
      breakEven: m.breakEven,
      realizedPnl: m.realizedPnl,
      numTxs: m.numTxs,
      baseCcy: m.baseCcy,
      weight: m.weight,
      fxImpact: m.base.fxImpact,
      volatilityRange: m.volatilityRange,
      volatilityPct: m.volatilityPct,
      chart: m.ccy.chart
          .map(
            (c) => SummaryChartEntity(
              timestamp: c.timestamp,
              price: c.price,
              volume: c.volume,
            ),
          )
          .toList(),
      meta: SummaryMetaEntity(
        range: m.meta.range,
        validRanges: m.meta.validRanges,
        fiftyTwoWeekLow: m.meta.fiftyTwoWeekLow,
        fiftyTwoWeekHigh: m.meta.fiftyTwoWeekHigh,
        volatilityRange: 0,
        volatilityPct: 0,
        currencies: [],
        exchanges: [],
        types: [],
      ),
      changes: SummaryChangesEntity(
        startPrice: m.ccy.changes.startPrice,
        endPrice: m.ccy.changes.endPrice,
        returnValue: m.ccy.changes.returnValue,
        returnPct: m.ccy.changes.returnPct,
        startTs: m.ccy.changes.startTs,
        endTs: m.ccy.changes.endTs,
      ),
      totals: SummaryTotalsEntity(
        returnValue: m.ccy.totals.returnValue,
        returnPct: m.ccy.totals.returnPct,
      ),
    );
  }
}
