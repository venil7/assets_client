import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_entity.freezed.dart';

@freezed
class AssetEntity with _$AssetEntity {
  const factory AssetEntity({
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
    String? lastActivity,
    int? lastActivityTs,
    required String baseCcy,
    required String created,
    required String modified,
  }) = _AssetEntity;
}

@freezed
class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required int id,
    required int assetId,
    required String type,
    required double quantity,
    required double price,
    required String date,
    String? comments,
    required double realizedPnl,
    required double cost,
    required double costBasis,
    required double contribution,
    required double runningHolding,
    required double runningCost,
    required double runningAveragePrice,
    required double runningBreakEven,
    required double runningContribution,
    required String assetName,
    required String assetTicker,
    required String portfolioName,
    required int timestamp,
    required String created,
    required String modified,
  }) = _TransactionEntity;
}
