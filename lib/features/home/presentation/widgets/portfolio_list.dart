import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:flutter/material.dart';

class PortfolioList extends StatelessWidget {
  final List<PortfolioEntity> portfolios;
  final void Function(int portfolioId)? onPortfolioTap;

  const PortfolioList({
    super.key,
    required this.portfolios,
    this.onPortfolioTap,
  });

  @override
  Widget build(BuildContext context) {
    if (portfolios.isEmpty) {
      return const Center(child: Text('No portfolios found'));
    }

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      itemCount: portfolios.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final portfolio = portfolios[index];
        final isPositive = portfolio.changes.returnPct >= 0;

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
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
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              portfolio.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (portfolio.description.isNotEmpty)
                              Text(
                                portfolio.description,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${portfolio.changes.returnPct.toStringAsFixed(2)}%',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isPositive ? Colors.green : Colors.red,
                            ),
                          ),
                          Text(
                            '${isPositive ? '+' : ''}${portfolio.changes.returnValue.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: isPositive ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _infoColumn('Assets', '${portfolio.numAssets}'),
                      _infoColumn(
                        'Invested',
                        _formatCurrency(portfolio.invested),
                      ),
                      _infoColumn(
                        'Realized P&L',
                        _formatCurrency(portfolio.realizedPnl),
                      ),
                      _infoColumn(
                        'Break Even',
                        _formatCurrency(portfolio.breakEven),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
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

  String _formatCurrency(double value) {
    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(2)}M';
    } else if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(2)}K';
    }
    return value.toStringAsFixed(2);
  }
}
