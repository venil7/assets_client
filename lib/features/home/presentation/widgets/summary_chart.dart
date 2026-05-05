import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SummaryChart extends StatelessWidget {
  final List<SummaryChartEntity> data;
  final bool? isPositive;
  final String range;

  const SummaryChart({
    super.key,
    required this.data,
    this.isPositive,
    this.range = '1m',
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Center(child: Text('No chart data available'));
    }

    return SizedBox(
      height: 250,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                getTitlesWidget: (value, meta) {
                  return Text(
                    formatCurrency(value),
                    style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: _getInterval(),
                reservedSize: 28,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      _formatDate(value),
                      style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    ),
                  );
                },
              ),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey[300]!),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: _lineColor(context),
              spots: List.generate(
                data.length,
                (i) => FlSpot(i.toDouble(), data[i].price),
              ),
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: _gradientColors(context),
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
          minY: _minPrice(),
          maxY: _maxPrice(),
        ),
      ),
    );
  }

  List<Color> _gradientColors(BuildContext context) {
    if (isPositive == null) {
      return [
        Theme.of(context).primaryColor.withValues(alpha: 0.3),
        Theme.of(context).primaryColor.withValues(alpha: 0.05),
      ];
    }
    if (isPositive!) {
      return [
        Colors.green.withValues(alpha: 0.3),
        Colors.green.withValues(alpha: 0.05),
      ];
    }
    return [
      Colors.red.withValues(alpha: 0.3),
      Colors.red.withValues(alpha: 0.05),
    ];
  }

  Color _lineColor(BuildContext context) {
    if (isPositive == null) return Theme.of(context).primaryColor;
    return isPositive! ? Colors.green : Colors.red;
  }

  double _minPrice() {
    return data.map((e) => e.price).reduce((a, b) => a < b ? a : b) * 0.99;
  }

  double _maxPrice() {
    return data.map((e) => e.price).reduce((a, b) => a > b ? a : b) * 1.01;
  }

  double _getInterval() {
    if (data.length <= 10) return 1;
    if (data.length <= 50) return _intervalForRangeLarge();
    if (data.length <= 100) return _intervalForRangeMedium();
    return _intervalForRangeDense();
  }

  double _intervalForRangeLarge() {
    switch (range) {
      case '1d': return 2;
      case '1w': return 1;
      case '1m': return 5;
      case '3m': return 10;
      case '1y': return 20;
      case '5y': return 60;
      case 'all': return data.length / 8;
      default: return 5;
    }
  }

  double _intervalForRangeMedium() {
    switch (range) {
      case '1d': return 4;
      case '1w': return 2;
      case '1m': return 10;
      case '3m': return 15;
      case '1y': return 30;
      case '5y': return 80;
      case 'all': return data.length / 8;
      default: return 10;
    }
  }

  double _intervalForRangeDense() {
    switch (range) {
      case '1d': return 8;
      case '1w': return 4;
      case '1m': return 20;
      case '3m': return 30;
      case '1y': return 60;
      case '5y': return 120;
      case 'all': return data.length / 8;
      default: return 20;
    }
  }

  String _formatDate(double value) {
    final index = value.toInt();
    if (index < 0 || index >= data.length) return '';
    final timestamp = data[index].timestamp;
    return formatChartDate(timestamp, range);
  }
}
