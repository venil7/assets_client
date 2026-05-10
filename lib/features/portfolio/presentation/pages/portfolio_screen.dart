import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/asset/data/datasources/asset_remote_data_source.dart';
import 'package:assets_client/features/asset/data/datasources/transaction_remote_data_source.dart';
import 'package:assets_client/features/asset/data/repositories/asset_detail_repository_impl.dart';
import 'package:assets_client/features/asset/data/repositories/transaction_repository_impl.dart';
import 'package:assets_client/features/asset/presentation/bloc/asset_detail_bloc.dart'
    hide ChangeRangeEvent;
import 'package:assets_client/features/asset/presentation/pages/asset_detail_screen.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_detail_entity.dart';
import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart';
import 'package:assets_client/features/portfolio/presentation/widgets/asset_list.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/shared/widgets/chart_with_range.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioScreen extends StatelessWidget {
  final int portfolioId;

  const PortfolioScreen({super.key, required this.portfolioId});

  void _navigateToAsset(BuildContext context, int assetId) {
    final apiClient = ApiClient(dioInstance);
    final assetDataSource = AssetRemoteDataSourceImpl(apiClient: apiClient);
    final txDataSource = TransactionRemoteDataSourceImpl(apiClient: apiClient);
    final assetDetailRepo = AssetDetailRepositoryImpl(
      remoteDataSource: assetDataSource,
    );
    final txRepo = TransactionRepositoryImpl(remoteDataSource: txDataSource);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) =>
              AssetDetailBloc(
                assetDetailRepository: assetDetailRepo,
                transactionRepository: txRepo,
              )..add(
                LoadAssetDetailEvent(
                  portfolioId: portfolioId,
                  assetId: assetId,
                ),
              ),
          child: AssetDetailScreen(portfolioId: portfolioId, assetId: assetId),
        ),
      ),
    );
  }

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
      body: SafeArea(
        child: BlocBuilder<PortfolioBloc, PortfolioState>(
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
                          ChartWithRange(
                            data: state.portfolio.chart
                                .map(
                                  (point) => SummaryChartEntity(
                                    timestamp: point.timestamp,
                                    price: point.price,
                                    volume: point.volume,
                                  ),
                                )
                                .toList(),
                            isPositive: state.portfolio.changes.returnPct >= 0,
                            currentRange: state.currentRange,
                            validRanges: state.validRanges,
                            onRangeChanged: (range) => context
                                .read<PortfolioBloc>()
                                .add(ChangeRangeEvent(range)),
                          ),
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
                    AssetList(
                      assets: state.assets,
                      onAssetTap: (pid, aid) => _navigateToAsset(context, aid),
                    ),
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
      ),
    );
  }

  Widget _buildMetricsRow(
    BuildContext context,
    PortfolioDetailEntity portfolio,
  ) {
    final periodPos = portfolio.changes.returnPct >= 0;
    final totalPos = portfolio.totalReturnPct >= 0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _metricCard(
            context,
            'Current Value',
            formatCurrency(portfolio.changes.endPrice),
            Icons.trending_up,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Period Return',
            '${formatCurrency(portfolio.changes.returnValue)} (${formatPct(portfolio.changes.returnPct)})',
            Icons.schedule,
            color: periodPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Total Return',
            '${formatCurrency(portfolio.totalReturnValue)} (${formatPct(portfolio.totalReturnPct)})',
            Icons.show_chart,
            color: totalPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Invested',
            formatCurrency(portfolio.invested),
            Icons.account_balance,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Break Even',
            formatCurrency(portfolio.breakEven),
            Icons.ev_station,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Realized P&L',
            formatCurrency(portfolio.realizedPnl, showSign: true),
            Icons.account_balance_wallet,
            color: portfolio.realizedPnl >= 0 ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'FX Impact',
            formatCurrency(portfolio.fxImpact, showSign: true),
            Icons.currency_exchange,
            color: portfolio.fxImpact >= 0 ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Holdings',
            '${portfolio.numAssets}',
            Icons.folder,
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
