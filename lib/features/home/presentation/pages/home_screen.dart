import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:assets_client/features/home/presentation/widgets/portfolio_list.dart';
import 'package:assets_client/features/portfolio/data/datasources/portfolio_remote_data_source.dart';
import 'package:assets_client/features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart'
    show PortfolioBloc, LoadPortfolioEvent;
import 'package:assets_client/features/portfolio/presentation/pages/portfolio_screen.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/shared/widgets/chart_with_range.dart';
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
      body: SafeArea(
        child: BlocListener<HomeBloc, HomeState>(
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
                            // Text(
                            //   'Portfolio Summary',
                            //   style: Theme.of(context).textTheme.headlineSmall
                            //       ?.copyWith(fontWeight: FontWeight.bold),
                            // ),
                            const SizedBox(height: 8),
                            _buildMetricsRow(context, state.summary),
                            const SizedBox(height: 16),
                            ChartWithRange(
                              data: state.summary.chart,
                              isPositive: state.summary.changes.returnPct >= 0,
                              currentRange: state.currentRange,
                              validRanges: state.validRanges,
                              onRangeChanged: (range) => context
                                  .read<HomeBloc>()
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
                        // child: Text(
                        //   'Portfolios',
                        //   style: Theme.of(context).textTheme.titleLarge
                        //       ?.copyWith(fontWeight: FontWeight.bold),
                        // ),
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
      ),
    );
  }

  Widget _buildMetricsRow(BuildContext context, SummaryEntity summary) {
    final periodPos = summary.changes.returnPct >= 0;
    final totalPos = summary.totals.returnPct >= 0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _metricCard(
            context,
            'Current Value',
            formatCurrency(summary.changes.endPrice),
            Icons.trending_up,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Period Return',
            '${formatCurrency(summary.changes.returnValue)} (${formatPct(summary.changes.returnPct)})',
            Icons.schedule,
            color: periodPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Total Return',
            '${formatCurrency(summary.totals.returnValue)} (${formatPct(summary.totals.returnPct)})',
            Icons.show_chart,
            color: totalPos ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Invested',
            formatCurrency(summary.invested),
            Icons.account_balance,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Break Even',
            formatCurrency(summary.breakEven),
            Icons.ev_station,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Realized P&L',
            formatCurrency(summary.realizedPnl, showSign: true),
            Icons.account_balance_wallet,
            color: summary.realizedPnl >= 0 ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'FX Impact',
            formatCurrency(summary.fxImpact, showSign: true),
            Icons.currency_exchange,
            color: summary.fxImpact >= 0 ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 10),
          _metricCard(
            context,
            'Volatility',
            formatPct(summary.meta.volatilityPct, showSign: false),
            Icons.show_chart,
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
