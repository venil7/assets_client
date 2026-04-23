import 'package:assets_client/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioRepository {
  Future<List<PortfolioEntity>> getAllPortfolios(String? range);
  Future<PortfolioEntity> getPortfolio(int portfolioId, String? range);
  Future<PortfolioEntity> createPortfolio(String name, String description);
  Future<PortfolioEntity> updatePortfolio(int portfolioId, String name, String description);
  Future<void> deletePortfolio(int portfolioId);
}
