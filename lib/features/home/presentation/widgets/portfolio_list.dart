import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PortfolioList extends StatelessWidget {
  final List<PortfolioEntity> portfolios;
  final void Function(int portfolioId)? onPortfolioTap;
  final void Function(int portfolioId)? onPortfolioEdit;
  final void Function(int portfolioId)? onPortfolioDelete;

  const PortfolioList({
    super.key,
    required this.portfolios,
    this.onPortfolioTap,
    this.onPortfolioEdit,
    this.onPortfolioDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (portfolios.isEmpty) {
      return const Center(child: Text('No portfolios found'));
    }

    final sorted = List<PortfolioEntity>.of(portfolios)
      ..sort((a, b) => b.changes.returnPct.compareTo(a.changes.returnPct));

    final hasActions = onPortfolioEdit != null || onPortfolioDelete != null;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: sorted.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final portfolio = sorted[index];
        return hasActions
            ? _buildSlidable(context, portfolio)
            : _buildCard(context, portfolio);
      },
    );
  }

  Widget _buildSlidable(BuildContext context, PortfolioEntity portfolio) {
    return Slidable(
      key: ValueKey('portfolio_${portfolio.id}'),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.45,
        children: [
          if (onPortfolioEdit != null)
            SlidableAction(
              onPressed: (_) => onPortfolioEdit?.call(portfolio.id),
              backgroundColor: Colors.blue.shade200,
              foregroundColor: Colors.blue.shade900,
              icon: Icons.edit,
              label: 'Edit',
              borderRadius: BorderRadius.circular(12),
            ),
          if (onPortfolioDelete != null)
            SlidableAction(
              onPressed: (_) => onPortfolioDelete?.call(portfolio.id),
              backgroundColor: Colors.red.shade200,
              foregroundColor: Colors.red.shade900,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: BorderRadius.circular(12),
            ),
        ],
      ),
      child: _buildCard(context, portfolio),
    );
  }

  Widget _buildCard(BuildContext context, PortfolioEntity portfolio) {
    final periodPos = portfolio.changes.returnPct >= 0;
    final totalPos = portfolio.totals.returnPct >= 0;
    final periodColor = periodPos ? Colors.green : Colors.red;
    final totalColor = totalPos ? Colors.green : Colors.red;
    final borderGradient = periodPos
        ? LinearGradient(colors: [Colors.green, Colors.lightGreen])
        : LinearGradient(colors: [Colors.deepOrange, Colors.red]);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: borderGradient,
      ),
      child: Card(
        margin: const EdgeInsets.all(1),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => onPortfolioTap?.call(portfolio.id),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  portfolio.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _formatCurrency(portfolio.changes.endPrice),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          if (portfolio.description.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                portfolio.description,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              formatPct(portfolio.changes.returnPct),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: periodColor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              formatCurrency(
                                portfolio.changes.returnValue,
                                showSign: true,
                              ),
                              style: TextStyle(
                                fontSize: 18,
                                color: periodColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              formatPct(portfolio.totals.returnPct),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: totalColor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              formatCurrency(
                                portfolio.totals.returnValue,
                                showSign: true,
                              ),
                              style: TextStyle(fontSize: 14, color: totalColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildBottomRow(portfolio),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomRow(PortfolioEntity portfolio) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _infoColumn('Assets', '${portfolio.numAssets}'),
        _infoColumn(
          'Weight',
          formatPct(portfolio.weight ?? 0, showSign: false),
        ),
        _infoColumn('Invested', formatCurrency(portfolio.invested)),
        portfolio.fxImpact == 0
            ? _infoColumn('FX Impact', '—')
            : _infoColumnColored(
                'FX Impact',
                formatCurrency(portfolio.fxImpact, showSign: true),
                portfolio.fxImpact >= 0 ? Colors.green : Colors.red,
              ),
      ],
    );
  }

  Widget _infoColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  Widget _infoColumnColored(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  String _formatCurrency(double value, {bool showSign = false}) =>
      formatCurrency(value, showSign: showSign);
}
