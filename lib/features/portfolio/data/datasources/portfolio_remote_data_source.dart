import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/asset/data/models/asset_model.dart'
    show AssetModel, CreateAssetRequestModel, UpdateAssetRequestModel;
import 'package:assets_client/features/portfolio/data/models/portfolio_model.dart';

abstract class PortfolioRemoteDataSource {
  Future<List<PortfolioModel>> getAllPortfolios(String? range);
  Future<PortfolioModel> getPortfolio(int portfolioId, String? range);
  Future<PortfolioModel> createPortfolio(String name, String description);
  Future<PortfolioModel> updatePortfolio(
    int portfolioId,
    String name,
    String description,
  );
  Future<void> deletePortfolio(int portfolioId);
  Future<List<AssetModel>> getAssetsForPortfolio(
    int portfolioId,
    String? range,
  );
  Future<AssetModel> createAsset(
    int portfolioId,
    String ticker,
    String name,
  );
  Future<AssetModel> updateAsset(
    int portfolioId,
    int assetId,
    String ticker,
    String name,
  );
  Future<void> deleteAsset(int portfolioId, int assetId);
}

class PortfolioRemoteDataSourceImpl implements PortfolioRemoteDataSource {
  final ApiClient apiClient;

  PortfolioRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<PortfolioModel>> getAllPortfolios(String? range) =>
      apiClient.getAllPortfolios(range);

  @override
  Future<PortfolioModel> getPortfolio(int portfolioId, String? range) =>
      apiClient.getPortfolio(portfolioId, range);

  @override
  Future<PortfolioModel> createPortfolio(String name, String description) {
    final request = CreatePortfolioRequestModel(
      name: name,
      description: description,
    );
    return apiClient.createPortfolio(request);
  }

  @override
  Future<PortfolioModel> updatePortfolio(
    int portfolioId,
    String name,
    String description,
  ) {
    final request = UpdatePortfolioRequestModel(
      name: name,
      description: description,
    );
    return apiClient.updatePortfolio(portfolioId, request);
  }

  @override
  Future<void> deletePortfolio(int portfolioId) async {
    await apiClient.deletePortfolio(portfolioId);
  }

  @override
  Future<List<AssetModel>> getAssetsForPortfolio(
    int portfolioId,
    String? range,
  ) => apiClient.getAssets(portfolioId, range);

  @override
  Future<AssetModel> createAsset(
    int portfolioId,
    String ticker,
    String name,
  ) {
    final request = CreateAssetRequestModel(ticker: ticker, name: name);
    return apiClient.createAsset(portfolioId, request);
  }

  @override
  Future<AssetModel> updateAsset(
    int portfolioId,
    int assetId,
    String ticker,
    String name,
  ) {
    final request = UpdateAssetRequestModel(ticker: ticker, name: name);
    return apiClient.updateAsset(portfolioId, assetId, request);
  }

  @override
  Future<void> deleteAsset(int portfolioId, int assetId) async {
    await apiClient.deleteAsset(portfolioId, assetId);
  }
}
