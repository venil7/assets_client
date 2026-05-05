import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioRangeSwitch extends StatelessWidget {
  final List<String> ranges;
  final String currentRange;

  const PortfolioRangeSwitch({
    super.key,
    required this.ranges,
    required this.currentRange,
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
                  context.read<PortfolioBloc>().add(ChangeRangeEvent(range));
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
