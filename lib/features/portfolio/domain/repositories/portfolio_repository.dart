import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_detail_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioRepository {
  Future<List<PortfolioEntity>> getAllPortfolios(String? range);
  Future<PortfolioEntity> getPortfolio(int portfolioId, String? range);
  Future<PortfolioEntity> createPortfolio(String name, String description);
  Future<PortfolioEntity> updatePortfolio(
    int portfolioId,
    String name,
    String description,
  );
  Future<void> deletePortfolio(int portfolioId);
  Future<List<AssetEntity>> getAssetsForPortfolio(
    int portfolioId,
    String? range,
  );
  Future<PortfolioDetailEntity> getPortfolioDetail(
    int portfolioId,
    String? range,
  );
}
