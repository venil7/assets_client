import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// Small info chip shown in the bottom row of a [FinancialListCard].
class BottomInfo {
  final String label;
  final String value;
  final Color? color; // null = default dark text

  const BottomInfo(this.label, this.value, [this.color]);
}

/// Generic card for financial entities (portfolios, assets, etc).
///
/// Layout: top-left title+amount, optional subtitle (+ sparkline below it),
/// top-right period/total changes, bottom row of [BottomInfo] chips.
/// Green border when periodPct >= 0, red gradient otherwise.
class FinancialListCard extends StatelessWidget {
  final String title;
  final String amount;
  final String? subtitle; // null or empty = not shown

  /// Period (selected range) change percentage (e.g. 5.2 for +5.2%).
  final double periodPct;
  /// Period change in currency (e.g. 123.45).
  final double periodValue;

  /// All-time change percentage.
  final double totalPct;
  /// All-time change in currency.
  final double totalValue;

  /// Info chips shown at the bottom of the card.
  final List<BottomInfo> bottomInfos;

  /// Optional price points for sparkline (y-axis only).
  /// Null or < 2 points = no sparkline rendered.
  final List<double>? sparklineData;
  /// Sparkline height; ignored if sparklineData is null.
  final double sparklineHeight;

  const FinancialListCard({
    super.key,
    required this.title,
    required this.amount,
    this.subtitle,
    required this.periodPct,
    required this.periodValue,
    required this.totalPct,
    required this.totalValue,
    required this.bottomInfos,
    this.sparklineData,
    this.sparklineHeight = 32,
  });

  @override
  Widget build(BuildContext context) {
    final periodPos = periodPct >= 0;
    final totalPos = totalPct >= 0;
    final periodColor = periodPos ? Colors.green : Colors.red;
    final totalColor = totalPos ? Colors.green : Colors.red;
    final borderGradient = periodPos
        ? const LinearGradient(colors: [Colors.green, Colors.lightGreen])
        : const LinearGradient(colors: [Colors.deepOrange, Colors.red]);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: borderGradient,
      ),
      child: Card(
        margin: const EdgeInsets.all(1),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
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
                                title,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              amount,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        if (subtitle != null && subtitle!.isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              subtitle!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ),
                          if (sparklineData != null && sparklineData!.length > 1)
                            SizedBox(
                              height: sparklineHeight,
                              child: _buildSparkline(),
                            ),
                        ],
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
                            formatPct(periodPct),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: periodColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            formatCurrency(periodValue, showSign: true),
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
                            formatPct(totalPct),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: totalColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            formatCurrency(totalValue, showSign: true),
                            style: TextStyle(
                              fontSize: 14,
                              color: totalColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (bottomInfos.isNotEmpty) _buildBottomRow(bottomInfos),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSparkline() {
    final data = sparklineData!;
    final color = periodPct >= 0 ? Colors.green : Colors.red;

    final spots = List.generate(
      data.length,
      (i) => FlSpot(i.toDouble(), data[i]),
    );

    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            curveSmoothness: 0.2,
            color: color,
            barWidth: 1.5,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              color: color.withValues(alpha: 0.08),
            ),
            dotData: const FlDotData(show: false),
          ),
        ],
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        minY: data.reduce((a, b) => a < b ? a : b) * 0.999,
        maxY: data.reduce((a, b) => a > b ? a : b) * 1.001,
        minX: 0,
        maxX: (data.length - 1).toDouble(),
        extraLinesData: ExtraLinesData(
          horizontalLines: [
            HorizontalLine(
              y: data.first,
              color: Colors.grey.shade300,
              strokeWidth: 0.75,
              dashArray: [4, 3],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomRow(List<BottomInfo> infos) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: infos.map((info) => _infoColumn(info)).toList(),
    );
  }

  Widget _infoColumn(BottomInfo info) {
    return Column(
      children: [
        Text(
          info.value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: info.color,
          ),
        ),
        Text(
          info.label,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
