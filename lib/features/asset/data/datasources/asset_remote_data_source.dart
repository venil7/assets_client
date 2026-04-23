import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/asset/data/models/asset_model.dart';

abstract class AssetRemoteDataSource {
  Future<List<AssetModel>> getAssets(int portfolioId, String? range);
  Future<AssetModel> getAsset(int portfolioId, int assetId, String? range);
  Future<AssetModel> createAsset(int portfolioId, String ticker, String name);
  Future<AssetModel> updateAsset(int portfolioId, int assetId, String ticker, String name);
  Future<void> deleteAsset(int portfolioId, int assetId);
  Future<void> moveAsset(int portfolioId, int assetId, int newPortfolioId);
}

class AssetRemoteDataSourceImpl implements AssetRemoteDataSource {
  final ApiClient apiClient;

  AssetRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<AssetModel>> getAssets(int portfolioId, String? range) =>
      apiClient.getAssets(portfolioId, range);

  @override
  Future<AssetModel> getAsset(int portfolioId, int assetId, String? range) =>
      apiClient.getAsset(portfolioId, assetId, range);

  @override
  Future<AssetModel> createAsset(int portfolioId, String ticker, String name) {
    final request = CreateAssetRequestModel(ticker: ticker, name: name);
    return apiClient.createAsset(portfolioId, request);
  }

  @override
  Future<AssetModel> updateAsset(int portfolioId, int assetId, String ticker, String name) {
    final request = UpdateAssetRequestModel(ticker: ticker, name: name);
    return apiClient.updateAsset(portfolioId, assetId, request);
  }

  @override
  Future<void> deleteAsset(int portfolioId, int assetId) async {
    await apiClient.deleteAsset(portfolioId, assetId);
  }

  @override
  Future<void> moveAsset(int portfolioId, int assetId, int newPortfolioId) async {
    await apiClient.moveAsset(portfolioId, assetId, newPortfolioId);
  }
}
