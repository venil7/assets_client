import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/shared/widgets/financial_list.dart';
import 'package:flutter/material.dart';

class PortfolioList extends StatelessWidget {
  final List<PortfolioEntity> portfolios;
  final String baseCcy;

  /// Period label shown as a badge on each card (e.g. '1d', '1w').
  final String? periodLabel;

  final void Function(int portfolioId)? onPortfolioTap;
  final void Function(int portfolioId)? onPortfolioEdit;
  final void Function(int portfolioId)? onPortfolioDelete;

  const PortfolioList({
    super.key,
    required this.portfolios,
    required this.baseCcy,
    this.periodLabel,
    this.onPortfolioTap,
    this.onPortfolioEdit,
    this.onPortfolioDelete,
  });

  @override
  Widget build(BuildContext context) {
    return FinancialList<PortfolioEntity>(
      items: portfolios,
      emptyText: 'No portfolios found',
      itemKey: (p) => 'portfolio_${p.id}',
      sort: (a, b) => b.changes.returnPct.compareTo(a.changes.returnPct),
      itemMapper: (p) => FinancialListCardProps(
        title: p.name,
        amount: formatCurrency(p.changes.endPrice, currency: baseCcy),
        subtitle: p.description.isNotEmpty ? p.description : null,
        periodLabel: periodLabel,
        periodPct: p.changes.returnPct,
        periodValue: p.changes.returnValue,
        periodCurrency: baseCcy,
        totalPct: p.totals.returnPct,
        totalValue: p.totals.returnValue,
        totalCurrency: baseCcy,
        bottomInfos: [
          BottomInfo('Assets', '${p.numAssets}'),
          BottomInfo(
            'Weight',
            formatPct(p.weight ?? 0, showSign: false),
          ),
          BottomInfo('Invested', formatCurrency(p.invested, currency: baseCcy)),
          p.fxImpact == 0
              ? const BottomInfo('FX Impact', '—')
              : BottomInfo(
                  'FX Impact',
                  formatCurrency(p.fxImpact, currency: baseCcy, showSign: true),
                  p.fxImpact >= 0 ? Colors.green : Colors.red,
                ),
        ],
        sparklineData: p.chart.isNotEmpty
            ? p.chart.map((c) => c.price).toList()
            : null,
      ),
      onItemTap: onPortfolioTap != null
          ? (p) => onPortfolioTap!(p.id)
          : null,
      onItemEdit: onPortfolioEdit != null
          ? (p) => onPortfolioEdit!(p.id)
          : null,
      onItemDelete: onPortfolioDelete != null
          ? (p) => onPortfolioDelete!(p.id)
          : null,
    );
  }
}
