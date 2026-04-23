import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';

abstract class AssetRepository {
  Future<List<AssetEntity>> getAssets(int portfolioId, String? range);
  Future<AssetEntity> getAsset(int portfolioId, int assetId, String? range);
  Future<AssetEntity> createAsset(int portfolioId, String ticker, String name);
  Future<AssetEntity> updateAsset(int portfolioId, int assetId, String ticker, String name);
  Future<void> deleteAsset(int portfolioId, int assetId);
  Future<void> moveAsset(int portfolioId, int assetId, int newPortfolioId);
}
