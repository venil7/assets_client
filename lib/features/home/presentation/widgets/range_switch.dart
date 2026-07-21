import 'package:flutter/material.dart';

class RangeSwitch extends StatelessWidget {
  final List<String> ranges;
  final String currentRange;
  final void Function(String range)? onRangeChanged;
  final bool? isPositive;

  const RangeSwitch({
    super.key,
    required this.ranges,
    required this.currentRange,
    this.onRangeChanged,
    this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: ranges.map((range) {
          final isSelected = range == currentRange;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: _RangeChip(
              label: range,
              isSelected: isSelected,
              isPositive: isPositive,
              onTap: () => onRangeChanged?.call(range),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _RangeChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool? isPositive;
  final VoidCallback onTap;

  const _RangeChip({
    required this.label,
    required this.isSelected,
    this.isPositive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final greyOutline = isDark ? Colors.grey[700]! : Colors.grey[400]!;
    final textColor = isDark ? Colors.white70 : Colors.black87;

    BoxDecoration decoration;
    Color? labelColor;

    if (isSelected) {
      final pos = isPositive ?? true;
      if (pos) {
        decoration = BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.withValues(alpha: 0.15),
              Colors.lightGreenAccent.withValues(alpha: 0.15),
            ],
          ),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.green, width: 1.5),
        );
        labelColor = Colors.green;
      } else {
        decoration = BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange.withValues(alpha: 0.15),
              Colors.red.withValues(alpha: 0.15),
            ],
          ),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.orange, width: 1.5),
        );
        labelColor = Colors.orange;
      }
    } else {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: greyOutline, width: 1),
      );
      labelColor = textColor;
    }

    return Container(
      decoration: decoration,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: labelColor,
            ),
          ),
        ),
      ),
    );
  }
}
