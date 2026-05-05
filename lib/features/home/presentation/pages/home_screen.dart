import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:assets_client/features/home/presentation/widgets/portfolio_list.dart';
import 'package:assets_client/features/home/presentation/widgets/range_switch.dart';
import 'package:assets_client/features/home/presentation/widgets/summary_chart.dart';
import 'package:assets_client/features/portfolio/data/datasources/portfolio_remote_data_source.dart';
import 'package:assets_client/features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart'
    show PortfolioBloc, LoadPortfolioEvent;
import 'package:assets_client/features/portfolio/presentation/pages/portfolio_screen.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToPortfolio(BuildContext context, int portfolioId) {
    final apiClient = ApiClient(dioInstance);
    final dataSource = PortfolioRemoteDataSourceImpl(apiClient: apiClient);
    final repo = PortfolioRepositoryImpl(remoteDataSource: dataSource);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) =>
              PortfolioBloc(repository: repo)
                ..add(LoadPortfolioEvent(portfolioId: portfolioId)),
          child: PortfolioScreen(portfolioId: portfolioId),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
        ],
      ),
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is HomeLoaded) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<HomeBloc>().add(
                    LoadHomeEvent(range: state.currentRange),
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
                            Text(
                              'Portfolio Summary',
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            _buildMetricsRow(context, state.summary),
                            const SizedBox(height: 16),
                            RangeSwitch(
                              ranges: state.validRanges,
                              currentRange: state.currentRange,
                              onRangeChanged: (range) => context
                                  .read<HomeBloc>()
                                  .add(ChangeRangeEvent(range)),
                            ),
                            const SizedBox(height: 16),
                            SummaryChart(
                              data: state.summary.chart,
                              isPositive:
                                  state.summary.changes.returnPct >= 0,
                              range: state.currentRange,
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
                          'Portfolios',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      PortfolioList(
                        portfolios: state.portfolios,
                        onPortfolioTap: (id) =>
                            _navigateToPortfolio(context, id),
                      ),
                    ],
                  ),
                ),
              );
            }

            if (state is HomeError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    Text(state.message, textAlign: TextAlign.center),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<HomeBloc>().add(const LoadHomeEvent());
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            return Center(
              child: Text('${state.toString()}: state not handled'),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMetricsRow(BuildContext context, SummaryEntity summary) {
    final periodPositive = summary.changes.returnPct >= 0;
    final totalPositive = summary.totals.returnPct >= 0;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _metricCard(
                context,
                'Invested',
                _formatCurrency(summary.invested),
                Icons.account_balance,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _metricCard(
                context,
                'Current Value',
                _formatCurrency(summary.changes.endPrice),
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
                '${_formatCurrency(summary.totals.returnValue)} (${(summary.totals.returnPct * 100).toStringAsFixed(2)}%)',
                Icons.show_chart,
                color: totalPositive ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _metricCard(
                context,
                'Period Return',
                '${_formatCurrency(summary.changes.returnValue)} (${(summary.changes.returnPct * 100).toStringAsFixed(2)}%)',
                Icons.schedule,
                color: periodPositive ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
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

  String _formatCurrency(double value) => formatCurrency(value);
}
