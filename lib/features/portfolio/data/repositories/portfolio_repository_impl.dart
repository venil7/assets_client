import 'package:assets_client/features/asset/data/models/asset_model.dart';
import 'package:assets_client/features/portfolio/data/datasources/portfolio_remote_data_source.dart';
import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_detail_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:assets_client/features/portfolio/domain/repositories/portfolio_repository.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioRemoteDataSource remoteDataSource;

  PortfolioRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<PortfolioEntity>> getAllPortfolios(String? range) async {
    final models = await remoteDataSource.getAllPortfolios(range);
    return models
        .map(
          (m) => PortfolioEntity(
            id: m.id,
            userId: m.userId,
            name: m.name,
            description: m.description,
            numAssets: m.numAssets,
            created: m.created,
            modified: m.modified,
            invested: m.invested,
            realizedPnl: m.realizedPnl,
            breakEven: m.breakEven,
            fxImpact: m.fxImpact,
          ),
        )
        .toList();
  }

  @override
  Future<PortfolioEntity> getPortfolio(int portfolioId, String? range) async {
    final model = await remoteDataSource.getPortfolio(portfolioId, range);
    return PortfolioEntity(
      id: model.id,
      userId: model.userId,
      name: model.name,
      description: model.description,
      numAssets: model.numAssets,
      created: model.created,
      modified: model.modified,
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  @override
  Future<PortfolioEntity> createPortfolio(
    String name,
    String description,
  ) async {
    final model = await remoteDataSource.createPortfolio(name, description);
    return PortfolioEntity(
      id: model.id,
      userId: model.userId,
      name: model.name,
      description: model.description,
      numAssets: model.numAssets,
      created: model.created,
      modified: model.modified,
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  @override
  Future<PortfolioEntity> updatePortfolio(
    int portfolioId,
    String name,
    String description,
  ) async {
    final model = await remoteDataSource.updatePortfolio(
      portfolioId,
      name,
      description,
    );
    return PortfolioEntity(
      id: model.id,
      userId: model.userId,
      name: model.name,
      description: model.description,
      numAssets: model.numAssets,
      created: model.created,
      modified: model.modified,
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  @override
  Future<void> deletePortfolio(int portfolioId) =>
      remoteDataSource.deletePortfolio(portfolioId);

  @override
  Future<List<AssetEntity>> getAssetsForPortfolio(
    int portfolioId,
    String? range,
  ) async {
    final models = await remoteDataSource.getAssetsForPortfolio(
      portfolioId,
      range,
    );
    return models.map(_mapAssetModelToEntity).toList();
  }

  @override
  Future<AssetEntity> createAsset(
    int portfolioId,
    String ticker,
    String name,
  ) async {
    final model = await remoteDataSource.createAsset(
      portfolioId,
      ticker,
      name,
    );
    return _mapAssetModelToEntity(model);
  }

  @override
  Future<AssetEntity> updateAsset(
    int portfolioId,
    int assetId,
    String ticker,
    String name,
  ) async {
    final model = await remoteDataSource.updateAsset(
      portfolioId,
      assetId,
      ticker,
      name,
    );
    return _mapAssetModelToEntity(model);
  }

  @override
  Future<void> deleteAsset(int portfolioId, int assetId) async {
    await remoteDataSource.deleteAsset(portfolioId, assetId);
  }

  AssetEntity _mapAssetModelToEntity(AssetModel model) {
    return AssetEntity(
      id: model.id,
      portfolioId: model.portfolioId,
      ticker: model.ticker,
      name: model.name,
      holdings: model.holdings,
      invested: model.invested,
      avgPrice: model.avgPrice,
      breakEven: model.breakEven,
      realizedPnl: model.realizedPnl,
      numTxs: model.numTxs,
      baseCcy: model.baseCcy,
      weight: model.weight,
      returnPct: model.base.changes.returnPct,
      returnValue: model.base.changes.returnValue,
      totalReturnPct: model.base.totals.returnPct,
      totalReturnValue: model.base.totals.returnValue,
    );
  }

  @override
  Future<PortfolioDetailEntity> getPortfolioDetail(
    int portfolioId,
    String? range,
  ) async {
    final model = await remoteDataSource.getPortfolio(portfolioId, range);
    return PortfolioDetailEntity(
      id: model.id,
      userId: model.userId,
      name: model.name,
      description: model.description,
      numAssets: model.numAssets,
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
      chart: model.chart
          .map(
            (c) => PortfolioChartEntity(
              timestamp: c.timestamp,
              price: c.price,
              volume: c.volume,
            ),
          )
          .toList(),
      meta: PortfolioMetaEntity(
        range: model.meta.range,
        validRanges: model.meta.validRanges,
        fiftyTwoWeekLow: model.meta.fiftyTwoWeekLow,
        fiftyTwoWeekHigh: model.meta.fiftyTwoWeekHigh,
        volatilityRange: model.meta.volatilityRange,
        volatilityPct: model.meta.volatilityPct,
        currencies: model.meta.currencies,
        exchanges: model.meta.exchanges,
        types: model.meta.types,
      ),
      changes: PortfolioChangesEntity(
        startPrice: model.changes.startPrice,
        endPrice: model.changes.endPrice,
        returnValue: model.changes.returnValue,
        returnPct: model.changes.returnPct,
        startTs: model.changes.startTs,
        endTs: model.changes.endTs,
      ),
      totalReturnValue: model.totals.returnValue,
      totalReturnPct: model.totals.returnPct,
    );
  }
}
