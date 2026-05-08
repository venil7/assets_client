import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/presentation/widgets/summary_chart.dart';
import 'package:assets_client/features/home/presentation/widgets/range_switch.dart';
import 'package:flutter/material.dart';

class ChartWithRange extends StatelessWidget {
  final List<SummaryChartEntity> data;
  final bool isPositive;
  final String currentRange;
  final List<String> validRanges;
  final void Function(String range) onRangeChanged;

  const ChartWithRange({
    super.key,
    required this.data,
    required this.isPositive,
    required this.currentRange,
    required this.validRanges,
    required this.onRangeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummaryChart(
          data: data,
          isPositive: isPositive,
          range: currentRange,
        ),
        const SizedBox(height: 12),
        Center(
          child: RangeSwitch(
            ranges: validRanges,
            currentRange: currentRange,
            onRangeChanged: onRangeChanged,
          ),
        ),
      ],
    );
  }
}
