import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RangeSwitch extends StatelessWidget {
  final List<String> ranges;
  final String currentRange;

  const RangeSwitch({
    super.key,
    required this.ranges,
    required this.currentRange,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: ranges.map((range) {
        final isSelected = range == currentRange;
        return ChoiceChip(
          label: Text(range),
          selected: isSelected,
          onSelected: (selected) {
            if (selected) {
              context.read<HomeBloc>().add(ChangeRangeEvent(range));
            }
          },
          selectedColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(color: isSelected ? Colors.white : null),
        );
      }).toList(),
    );
  }
}
