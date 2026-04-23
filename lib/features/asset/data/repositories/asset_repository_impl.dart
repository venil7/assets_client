import 'package:assets_client/features/asset/data/datasources/asset_remote_data_source.dart';
import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/features/asset/domain/repositories/asset_repository.dart';

class AssetRepositoryImpl implements AssetRepository {
  final AssetRemoteDataSource remoteDataSource;

  AssetRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<AssetEntity>> getAssets(int portfolioId, String? range) async {
    final models = await remoteDataSource.getAssets(portfolioId, range);
    return models
        .map((m) => AssetEntity(
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
              lastActivity: m.lastActivity,
              lastActivityTs: m.lastActivityTs,
              baseCcy: m.baseCcy,
              created: m.created,
              modified: m.modified,
            ))
        .toList();
  }

  @override
  Future<AssetEntity> getAsset(int portfolioId, int assetId, String? range) async {
    final model = await remoteDataSource.getAsset(portfolioId, assetId, range);
    return AssetEntity(
      id: model.id,
      portfolioId: model.portfolioId,
      ticker: model.ticker,
      name: model.name,
      userId: model.userId,
      holdings: model.holdings,
      invested: model.invested,
      avgPrice: model.avgPrice,
      breakEven: model.breakEven,
      realizedPnl: model.realizedPnl,
      numTxs: model.numTxs,
      lastActivity: model.lastActivity,
      lastActivityTs: model.lastActivityTs,
      baseCcy: model.baseCcy,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<AssetEntity> createAsset(int portfolioId, String ticker, String name) async {
    final model = await remoteDataSource.createAsset(portfolioId, ticker, name);
    return AssetEntity(
      id: model.id,
      portfolioId: model.portfolioId,
      ticker: model.ticker,
      name: model.name,
      userId: model.userId,
      holdings: model.holdings,
      invested: model.invested,
      avgPrice: model.avgPrice,
      breakEven: model.breakEven,
      realizedPnl: model.realizedPnl,
      numTxs: model.numTxs,
      lastActivity: model.lastActivity,
      lastActivityTs: model.lastActivityTs,
      baseCcy: model.baseCcy,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<AssetEntity> updateAsset(int portfolioId, int assetId, String ticker, String name) async {
    final model = await remoteDataSource.updateAsset(portfolioId, assetId, ticker, name);
    return AssetEntity(
      id: model.id,
      portfolioId: model.portfolioId,
      ticker: model.ticker,
      name: model.name,
      userId: model.userId,
      holdings: model.holdings,
      invested: model.invested,
      avgPrice: model.avgPrice,
      breakEven: model.breakEven,
      realizedPnl: model.realizedPnl,
      numTxs: model.numTxs,
      lastActivity: model.lastActivity,
      lastActivityTs: model.lastActivityTs,
      baseCcy: model.baseCcy,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<void> deleteAsset(int portfolioId, int assetId) =>
      remoteDataSource.deleteAsset(portfolioId, assetId);

  @override
  Future<void> moveAsset(int portfolioId, int assetId, int newPortfolioId) =>
      remoteDataSource.moveAsset(portfolioId, assetId, newPortfolioId);
}
