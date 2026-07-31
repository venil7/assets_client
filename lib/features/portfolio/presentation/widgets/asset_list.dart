import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/shared/widgets/financial_list.dart';
import 'package:flutter/material.dart';

class AssetList extends StatelessWidget {
  final List<AssetEntity> assets;

  /// Period label shown as a badge on each card (e.g. '1d', '1w').
  final String? periodLabel;

  final void Function(int assetId)? onAssetTap;
  final void Function(int assetId)? onAssetEdit;
  final void Function(int assetId)? onAssetDelete;

  const AssetList({
    super.key,
    required this.assets,
    this.periodLabel,
    this.onAssetTap,
    this.onAssetEdit,
    this.onAssetDelete,
  });

  @override
  Widget build(BuildContext context) {
    return FinancialList<AssetEntity>(
      items: assets,
      emptyText: 'No assets in this portfolio',
      itemKey: (a) => 'asset_${a.id}',
      itemMapper: (a) {
        final currentPrice = a.endPrice ?? a.holdings * a.avgPrice;
        final periodPct = a.returnPct ?? 0;
        final totalPct = a.totalReturnPct ?? 0;

        return FinancialListCardProps(
          title: a.name,
          amount: formatCurrency(currentPrice, currency: a.baseCcy),
          subtitle:
              '${a.ticker} ${formatCurrency(a.regularMarketPrice ?? currentPrice, currency: a.currency)}',
          periodLabel: periodLabel,
          periodPct: periodPct,
          periodValue: a.returnValue ?? 0,
          periodCurrency: a.baseCcy,
          totalPct: totalPct,
          totalValue: a.totalReturnValue ?? 0,
          totalCurrency: a.baseCcy,
          bottomInfos: [
            BottomInfo('Holdings', a.holdings.toStringAsFixed(2)),
            a.weight == null
                ? const BottomInfo('Weight', '—')
                : BottomInfo('Weight', formatPct(a.weight!, showSign: false)),
            BottomInfo('Invested', formatCurrency(a.invested, currency: a.baseCcy)),
            BottomInfo('Avg Price', formatCurrency(a.avgPrice, currency: a.currency)),
          ],
          sparklineData: a.baseChart,
        );
      },
      onItemTap: onAssetTap != null ? (a) => onAssetTap!(a.id) : null,
      onItemEdit: onAssetEdit != null ? (a) => onAssetEdit!(a.id) : null,
      onItemDelete: onAssetDelete != null ? (a) => onAssetDelete!(a.id) : null,
    );
  }
}
