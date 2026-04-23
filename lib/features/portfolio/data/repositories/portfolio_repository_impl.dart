import 'package:assets_client/features/portfolio/data/datasources/portfolio_remote_data_source.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:assets_client/features/portfolio/domain/repositories/portfolio_repository.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioRemoteDataSource remoteDataSource;

  PortfolioRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<PortfolioEntity>> getAllPortfolios(String? range) async {
    final models = await remoteDataSource.getAllPortfolios(range);
    return models
        .map((m) => PortfolioEntity(
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
            ))
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
  Future<PortfolioEntity> createPortfolio(String name, String description) async {
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
  Future<PortfolioEntity> updatePortfolio(int portfolioId, String name, String description) async {
    final model = await remoteDataSource.updatePortfolio(portfolioId, name, description);
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
}
