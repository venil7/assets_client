import 'package:assets_client/features/asset/domain/entities/asset_detail_entity.dart';
import 'package:assets_client/features/asset/presentation/bloc/asset_detail_bloc.dart';
import 'package:assets_client/features/asset/presentation/widgets/add_transaction_dialog.dart';
import 'package:assets_client/features/asset/presentation/widgets/transaction_list.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/shared/widgets/chart_with_range.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetDetailScreen extends StatelessWidget {
  final int portfolioId;
  final int assetId;

  const AssetDetailScreen({
    super.key,
    required this.portfolioId,
    required this.assetId,
  });

  @override
  Widget build(BuildContext context) {
    final title = context.select<AssetDetailBloc, String>((bloc) {
      final s = bloc.state;
      if (s is AssetDetailLoaded) return s.detail.ticker;
      return 'Asset Details';
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
      floatingActionButton: context.select<AssetDetailBloc, Widget?>((bloc) {
        final s = bloc.state;
        if (s is AssetDetailLoaded) {
          return FloatingActionButton(
            onPressed: () => AddTransactionDialog.show(
              context,
              portfolioId,
              assetId,
              s.detail.ticker,
            ),
            child: const Icon(Icons.add),
          );
        }
        return null;
      }),
      body: SafeArea(
        child: BlocBuilder<AssetDetailBloc, AssetDetailState>(
        builder: (context, state) {
          if (state is AssetDetailLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is AssetDetailLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<AssetDetailBloc>().add(
                  LoadAssetDetailEvent(
                    portfolioId: portfolioId,
                    assetId: assetId,
                    range: state.currentRange,
                  ),
                );
                await Future.delayed(const Duration(milliseconds: 500));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.detail.ticker,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    if (state.detail.name.isNotEmpty)
                                      Text(
                                        state.detail.name,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _buildMetricsRow(context, state.detail),
                          const SizedBox(height: 16),
                          ChartWithRange(
                            data: state.detail.chart,
                            isPositive: state.detail.changes.returnPct >= 0,
                            currentRange: state.currentRange,
                            validRanges: state.validRanges,
                            onRangeChanged: (range) => context
                                .read<AssetDetailBloc>()
                                .add(ChangeRangeEvent(range)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      child: Text(
                        'Transactions',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TransactionList(transactions: state.transactions),
                  ],
                ),
              ),
            );
          }

          if (state is AssetDetailError) {
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
                      context.read<AssetDetailBloc>().add(
                        LoadAssetDetailEvent(
                          portfolioId: portfolioId,
                          assetId: assetId,
                        ),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return const Center(child: Text('Loading asset...'));
        },
      ),
      ),
    );
  }

  Widget _buildMetricsRow(BuildContext context, AssetDetailEntity detail) {
    final periodPos = detail.changes.returnPct >= 0;
    final totalPos = detail.totals.returnPct >= 0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _metricCard(
            context,
            'Current Value',
            formatCurrency(detail.changes.endPrice),
            Icons.trending_up,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Period Return',
            '${formatCurrency(detail.changes.returnValue)} (${formatPct(detail.changes.returnPct)})',
            Icons.schedule,
            color: periodPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Total Return',
            '${formatCurrency(detail.totals.returnValue)} (${formatPct(detail.totals.returnPct)})',
            Icons.show_chart,
            color: totalPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Holdings',
            detail.holdings.toStringAsFixed(2),
            Icons.monetization_on,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Avg Price',
            formatCurrency(detail.avgPrice),
            Icons.attach_money,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Invested',
            formatCurrency(detail.invested),
            Icons.account_balance,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Break Even',
            formatCurrency(detail.breakEven),
            Icons.ev_station,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'FX Impact',
            formatCurrency(detail.fxImpact, showSign: true),
            Icons.currency_exchange,
            color: detail.fxImpact >= 0 ? Colors.green : Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _metricCard(
    BuildContext context,
    String label,
    String value,
    IconData icon, {
    Color? color,
  }) {
    return SizedBox(
      width: 140,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 18, color: color ?? Colors.blue),
              const SizedBox(height: 6),
              Text(
                label,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
