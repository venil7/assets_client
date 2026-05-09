import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_detail_entity.freezed.dart';

@freezed
abstract class AssetDetailEntity with _$AssetDetailEntity {
  const factory AssetDetailEntity({
    required int id,
    required int portfolioId,
    required String ticker,
    required String name,
    required int userId,
    required double holdings,
    required double invested,
    required double avgPrice,
    required double breakEven,
    required double realizedPnl,
    required int numTxs,
    required String baseCcy,
    double? weight,
    required double fxImpact,
    required double volatilityRange,
    required double volatilityPct,
    required List<SummaryChartEntity> chart,
    required SummaryMetaEntity meta,
    required SummaryChangesEntity changes,
    required SummaryTotalsEntity totals,
  }) = _AssetDetailEntity;
}
