import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/portfolio/data/models/portfolio_model.dart';

abstract class PortfolioRemoteDataSource {
  Future<List<PortfolioModel>> getAllPortfolios(String? range);
  Future<PortfolioModel> getPortfolio(int portfolioId, String? range);
  Future<PortfolioModel> createPortfolio(String name, String description);
  Future<PortfolioModel> updatePortfolio(int portfolioId, String name, String description);
  Future<void> deletePortfolio(int portfolioId);
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
    final request = CreatePortfolioRequestModel(name: name, description: description);
    return apiClient.createPortfolio(request);
  }

  @override
  Future<PortfolioModel> updatePortfolio(int portfolioId, String name, String description) {
    final request = UpdatePortfolioRequestModel(name: name, description: description);
    return apiClient.updatePortfolio(portfolioId, request);
  }

  @override
  Future<void> deletePortfolio(int portfolioId) async {
    await apiClient.deletePortfolio(portfolioId);
  }
}
