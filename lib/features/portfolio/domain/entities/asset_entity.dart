import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_entity.freezed.dart';

@freezed
abstract class AssetEntity with _$AssetEntity {
  const factory AssetEntity({
    required int id,
    required int portfolioId,
    required String ticker,
    required String name,
    required double holdings,
    required double invested,
    @JsonKey(name: 'avg_price') required double avgPrice,
    @JsonKey(name: 'break_even') required double breakEven,
    @JsonKey(name: 'realized_pnl') required double realizedPnl,
    @JsonKey(name: 'num_txs') required int numTxs,
    @JsonKey(name: 'base_ccy') required String baseCcy,
    double? weight,
    @JsonKey(name: 'returnPct') double? returnPct,
  }) = _AssetEntity;
}
