import 'package:flutter/material.dart';

class RangeSwitch extends StatelessWidget {
  final List<String> ranges;
  final String currentRange;
  final void Function(String range)? onRangeChanged;

  const RangeSwitch({
    super.key,
    required this.ranges,
    required this.currentRange,
    this.onRangeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ranges.map((range) {
          final isSelected = range == currentRange;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(range),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  onRangeChanged?.call(range);
                }
              },
              selectedColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(color: isSelected ? Colors.white : null),
            ),
          );
        }).toList(),
      ),
    );
  }
}
