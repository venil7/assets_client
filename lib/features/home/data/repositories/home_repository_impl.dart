import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/domain/repositories/home_repository.dart';
import 'package:assets_client/features/portfolio/data/models/portfolio_model.dart';
import 'package:assets_client/features/profile/data/models/summary_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiClient apiClient;

  HomeRepositoryImpl({required this.apiClient});

  @override
  Future<SummaryEntity> getSummary({String? range}) async {
    final model = await apiClient.getSummary(range);
    return _mapSummaryModelToEntity(model);
  }

  @override
  Future<List<PortfolioEntity>> getPortfolios({String? range}) async {
    final models = await apiClient.getAllPortfolios(range);
    return models.map(_mapPortfolioModelToEntity).toList();
  }

  @override
  Future<void> createPortfolio(String name, String description) async {
    final request = CreatePortfolioRequestModel(
      name: name,
      description: description,
    );
    await apiClient.createPortfolio(request);
  }

  @override
  Future<void> updatePortfolio(int id, String name, String description) async {
    final request = UpdatePortfolioRequestModel(
      name: name,
      description: description,
    );
    await apiClient.updatePortfolio(id, request);
  }

  @override
  Future<void> deletePortfolio(int id) async {
    await apiClient.deletePortfolio(id);
  }

  SummaryEntity _mapSummaryModelToEntity(SummaryModel model) {
    return SummaryEntity(
      numPortfolios: model.numPortfolios,
      meta: SummaryMetaEntity(
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
      chart: model.chart.map(_mapChartModel).toList(),
      multiChart: model.multiChart.map(
        (key, value) => MapEntry(key, value.map(_mapChartModel).toList()),
      ),
      changes: SummaryChangesEntity(
        startPrice: model.changes.startPrice,
        endPrice: model.changes.endPrice,
        returnValue: model.changes.returnValue,
        returnPct: model.changes.returnPct,
        startTs: model.changes.startTs,
        endTs: model.changes.endTs,
      ),
      totals: SummaryTotalsEntity(
        returnValue: model.totals.returnValue,
        returnPct: model.totals.returnPct,
      ),
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  PortfolioEntity _mapPortfolioModelToEntity(PortfolioModel model) {
    return PortfolioEntity(
      id: model.id,
      userId: model.userId,
      name: model.name,
      description: model.description,
      numAssets: model.numAssets,
      created: model.created,
      modified: model.modified,
      weight: model.weight,
      domestic: model.domestic,
      chart: model.chart.map(_mapChartModel).toList(),
      multiChart: model.multiChart.map(
        (key, value) => MapEntry(key, value.map(_mapChartModel).toList()),
      ),
      changes: SummaryChangesEntity(
        startPrice: model.changes.startPrice,
        endPrice: model.changes.endPrice,
        returnValue: model.changes.returnValue,
        returnPct: model.changes.returnPct,
        startTs: model.changes.startTs,
        endTs: model.changes.endTs,
      ),
      totals: SummaryTotalsEntity(
        returnValue: model.totals.returnValue,
        returnPct: model.totals.returnPct,
      ),
      invested: model.invested,
      realizedPnl: model.realizedPnl,
      breakEven: model.breakEven,
      fxImpact: model.fxImpact,
    );
  }

  SummaryChartEntity _mapChartModel(ChartDataModel model) {
    return SummaryChartEntity(
      timestamp: model.timestamp,
      price: model.price,
      volume: model.volume,
    );
  }
}
