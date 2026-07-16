import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:assets_client/features/home/presentation/widgets/portfolio_dialog.dart';
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

  Future<void> _showCreatePortfolioDialog(BuildContext context) async {
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (_) => const PortfolioDialog(),
    );

    if (result != null) {
      context.read<HomeBloc>().add(
        CreatePortfolioEvent(
          name: result['name']!,
          description: result['description'] ?? '',
        ),
      );
    }
  }

  Future<void> _showEditPortfolioDialog(
    BuildContext context,
    PortfolioEntity portfolio,
  ) async {
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (_) => PortfolioDialog(portfolio: portfolio),
    );

    if (result != null) {
      context.read<HomeBloc>().add(
        UpdatePortfolioEvent(
          id: portfolio.id,
          name: result['name']!,
          description: result['description'] ?? '',
        ),
      );
    }
  }

  Future<void> _confirmDeletePortfolio(
    BuildContext context,
    int portfolioId,
    String portfolioName,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Portfolio'),
        content: Text(
          'Are you sure you want to delete "$portfolioName"? This will also delete all assets and transactions within it. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      context.read<HomeBloc>().add(DeletePortfolioEvent(portfolioId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${tokenManager.activeUsername ?? 'User'}'s summary"),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
        ],
      ),
      floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoaded) {
            return FloatingActionButton.extended(
              onPressed: () => _showCreatePortfolioDialog(context),
              icon: const Icon(Icons.add),
              label: const Text('Portfolio'),
            );
          }
          return const SizedBox.shrink();
        },
      ),
      body: SafeArea(
        child: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is HomeError &&
                state.message.contains('Failed to') &&
                !state.message.contains('load data')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              context.read<HomeBloc>().add(const LoadHomeEvent());
            }
          },
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
                              const SizedBox(height: 8),
                              _buildMetricsRow(context, state.summary),
                              const SizedBox(height: 16),
                              ChartWithRange(
                                data: state.summary.chart,
                                isPositive:
                                    state.summary.changes.returnPct >= 0,
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
                        ),
                        PortfolioList(
                          portfolios: state.portfolios,
                          onPortfolioTap: (id) =>
                              _navigateToPortfolio(context, id),
                          onPortfolioEdit: (id) {
                            final portfolio = state.portfolios
                                .firstWhere((p) => p.id == id);
                            _showEditPortfolioDialog(context, portfolio);
                          },
                          onPortfolioDelete: (id) {
                            final portfolio = state.portfolios
                                .firstWhere((p) => p.id == id);
                            _confirmDeletePortfolio(
                              context,
                              id,
                              portfolio.name,
                            );
                          },
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
