import 'package:assets_client/features/home/domain/entities/summary_entity.dart';

abstract class HomeRepository {
  Future<SummaryEntity> getSummary({String? range});
  Future<List<PortfolioEntity>> getPortfolios({String? range});
}
