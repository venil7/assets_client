import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:assets_client/features/home/presentation/widgets/portfolio_list.dart';
import 'package:assets_client/features/home/presentation/widgets/range_switch.dart';
import 'package:assets_client/features/home/presentation/widgets/summary_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Settings'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('What would you like to clear?'),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.orange),
              title: const Text('Logout'),
              subtitle: const Text('Clear credentials only'),
              onTap: () {
                Navigator.pop(context);
                _logout(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete_forever, color: Colors.red),
              title: const Text('Reset everything'),
              subtitle: const Text('Clear API URL and credentials'),
              onTap: () {
                Navigator.pop(context);
                _clearAll(context);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _logout(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearCredentialsEvent());
    tokenManager.clearToken();
    Navigator.of(context).pushReplacementNamed('/login');
  }

  void _clearAll(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearConfigEvent());
    tokenManager.clearToken();
    Navigator.of(context).pushReplacementNamed('/api-url');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Client'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _showSettingsDialog(context),
          ),
        ],
      ),
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          // print(state);
          // if (state is HomeInitial) {
          //   context.read<HomeBloc>().add(const LoadHomeEvent());
          // }
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is HomeLoaded) {
              return SingleChildScrollView(
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
                          ),
                          const SizedBox(height: 16),
                          SummaryChart(data: state.summary.chart),
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
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    PortfolioList(portfolios: state.portfolios),
                  ],
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

  Widget _buildMetricsRow(BuildContext context, dynamic summary) {
    final isPositive = summary.changes.returnPct >= 0;
    return Row(
      children: [
        Expanded(
          child: _metricCard(
            context,
            'Current Value',
            _formatCurrency(summary.changes.endPrice),
            Icons.trending_up,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _metricCard(
            context,
            'Return',
            '${summary.changes.returnPct.toStringAsFixed(2)}%',
            Icons.percent,
            color: isPositive ? Colors.green : Colors.red,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _metricCard(
            context,
            'Invested',
            _formatCurrency(summary.invested),
            Icons.account_balance,
          ),
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

  String _formatCurrency(double value) {
    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(2)}M';
    } else if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(2)}K';
    }
    return value.toStringAsFixed(2);
  }
}
