import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/presentation/widgets/range_switch.dart';
import 'package:assets_client/features/home/presentation/widgets/summary_chart.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_detail_entity.dart';
import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart';
import 'package:assets_client/features/portfolio/presentation/widgets/asset_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioScreen extends StatelessWidget {
  final int portfolioId;

  const PortfolioScreen({super.key, required this.portfolioId});

  @override
  Widget build(BuildContext context) {
    final title = context.select<PortfolioBloc, String>((bloc) {
      final s = bloc.state;
      if (s is PortfolioLoaded) return s.portfolio.name;
      return 'Portfolio Details';
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
        ],
      ),
      body: BlocBuilder<PortfolioBloc, PortfolioState>(
        builder: (context, state) {
          if (state is PortfolioLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is PortfolioLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<PortfolioBloc>().add(
                  LoadPortfolioEvent(
                    portfolioId: portfolioId,
                    range: state.currentRange,
                  ),
                );
                await Future.delayed(const Duration(milliseconds: 500));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Summary Section
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.portfolio.name,
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          if (state.portfolio.description.isNotEmpty)
                            Text(
                              state.portfolio.description,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          const SizedBox(height: 16),
                          _buildMetricsRow(context, state.portfolio),
                          const SizedBox(height: 16),
                          RangeSwitch(
                            ranges: state.validRanges,
                            currentRange: state.currentRange,
                            onRangeChanged: (range) => context
                                .read<PortfolioBloc>()
                                .add(ChangeRangeEvent(range)),
                          ),
                          const SizedBox(height: 16),
                          _buildChart(state.portfolio),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    // Assets Section
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      child: Text(
                        'Assets',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    AssetList(assets: state.assets),
                  ],
                ),
              ),
            );
          }

          if (state is PortfolioError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(state.message, textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<PortfolioBloc>().add(
                        LoadPortfolioEvent(portfolioId: portfolioId),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return const Center(child: Text('Loading portfolio...'));
        },
      ),
    );
  }

  Widget _buildMetricsRow(
    BuildContext context,
    PortfolioDetailEntity portfolio,
  ) {
    final periodPositive = portfolio.changes.returnPct >= 0;
    final totalPositive = portfolio.totalReturnPct >= 0;
    final hasFxImpact = portfolio.fxImpact != 0;
    final hasRealizedPnl = portfolio.realizedPnl != 0;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _metricCard(
                context,
                'Invested',
                _formatCurrency(portfolio.invested),
                Icons.account_balance,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _metricCard(
                context,
                'Current Value',
                _formatCurrency(portfolio.changes.endPrice),
                Icons.trending_up,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _metricCard(
                context,
                'Total Return',
                '${_formatCurrency(portfolio.totalReturnValue)} (${(portfolio.totalReturnPct * 100).toStringAsFixed(2)}%)',
                Icons.show_chart,
                color: totalPositive ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _metricCard(
                context,
                'Period Return',
                '${_formatCurrency(portfolio.changes.returnValue)} (${(portfolio.changes.returnPct * 100).toStringAsFixed(2)}%)',
                Icons.schedule,
                color: periodPositive ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
        if (hasFxImpact || hasRealizedPnl) ...[
          const SizedBox(height: 12),
          Row(
            children: [
              if (hasFxImpact)
                Expanded(
                  child: _metricCard(
                    context,
                    'FX Impact',
                    _formatCurrency(portfolio.fxImpact),
                    Icons.currency_exchange,
                    color: portfolio.fxImpact >= 0 ? Colors.green : Colors.red,
                  ),
                ),
              if (hasFxImpact && hasRealizedPnl) const SizedBox(width: 12),
              if (hasRealizedPnl)
                Expanded(
                  child: _metricCard(
                    context,
                    'Realized P&L',
                    _formatCurrency(portfolio.realizedPnl),
                    Icons.account_balance_wallet,
                    color: portfolio.realizedPnl >= 0
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _metricCard(
    BuildContext context,
    String label,
    String value,
    IconData icon, {
    Color? color,
  }) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20, color: color ?? Colors.blue),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart(PortfolioDetailEntity portfolio) {
    final chartData = portfolio.chart
        .map(
          (point) => SummaryChartEntity(
            timestamp: point.timestamp,
            price: point.price,
            volume: point.volume,
          ),
        )
        .toList();
    return SummaryChart(
      data: chartData,
      isPositive: portfolio.changes.returnPct >= 0,
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
