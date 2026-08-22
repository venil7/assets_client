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
/// top-right total change, subtitle-row-right period change with a badge for
/// the period label, bottom row of [BottomInfo] chips.
/// Green border when periodPct >= 0, red gradient otherwise.
class FinancialListCard extends StatelessWidget {
  final String title;
  final String amount;
  final String? subtitle; // null or empty = not shown

  /// Period label shown as a badge (e.g. '1d', '1w'). Null = no badge.
  final String? periodLabel;

  /// Period (selected range) change percentage (e.g. 5.2 for +5.2%).
  final double periodPct;
  /// Period change in currency (e.g. 123.45).
  final double periodValue;
  /// Currency code for period value (e.g. 'USD', 'GBP').
  final String? periodCurrency;

  /// All-time change percentage.
  final double totalPct;
  /// All-time change in currency.
  final double totalValue;
  /// Currency code for total value.
  final String? totalCurrency;

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
    this.periodLabel,
    required this.periodPct,
    required this.periodValue,
    this.periodCurrency,
    required this.totalPct,
    required this.totalValue,
    this.totalCurrency,
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
                      // Top row: TOTAL (all-time) change.
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            formatCurrency(
                              totalValue,
                              currency: totalCurrency,
                              showSign: true,
                              trimTrailingZeros: true,
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: totalColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '(${formatPct(totalPct, trimTrailingZeros: true)})',
                            style: TextStyle(
                              fontSize: 14,
                              color: totalColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      // Subtitle row: PERIOD change with label badge.
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (periodLabel != null &&
                              periodLabel!.isNotEmpty) ...[
                            _PeriodBadge(
                              label: periodLabel!,
                              isPositive: periodPos,
                            ),
                            const SizedBox(width: 6),
                          ],
                          Text(
                            '${formatCurrency(periodValue, currency: periodCurrency, showSign: true, trimTrailingZeros: true)} (${formatPct(periodPct, trimTrailingZeros: true)})',
                            style: TextStyle(
                              fontSize: 14,
                              color: periodColor,
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

/// Small pill badge showing the period label; background color follows
/// whether the period change is a gain (green) or loss (red).
class _PeriodBadge extends StatelessWidget {
  final String label;
  final bool isPositive;

  const _PeriodBadge({
    required this.label,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    final color = isPositive ? Colors.green : Colors.red;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }
}
