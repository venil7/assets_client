import 'package:assets_client/shared/widgets/financial_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

export 'financial_list_card.dart' show BottomInfo, FinancialListCard;

/// Maps an item to the data needed by [FinancialListCard].
typedef FinancialCardMapper<T> = FinancialListCardProps Function(T item);

/// Generic list of financial entity cards with optional slide-to-edit/delete.
///
/// [itemMapper] extracts card props from each [T] item.
/// [itemKey] returns a unique string for each item (used in Slidable ValueKey).
/// [sort] optional comparator; items are not mutated (sorted copy used).
class FinancialList<T> extends StatelessWidget {
  final List<T> items;
  final String emptyText;
  final FinancialCardMapper<T> itemMapper;
  final String Function(T item) itemKey;
  final Comparator<T>? sort;

  // --- callbacks (all optional) ---
  final void Function(T item)? onItemTap;
  final void Function(T item)? onItemEdit;
  final void Function(T item)? onItemDelete;

  const FinancialList({
    super.key,
    required this.items,
    required this.emptyText,
    required this.itemMapper,
    required this.itemKey,
    this.sort,
    this.onItemTap,
    this.onItemEdit,
    this.onItemDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(child: Text(emptyText));
    }

    var sortedList = List<T>.of(items);
    if (sort != null) sortedList.sort(sort!);

    final hasActions = onItemEdit != null || onItemDelete != null;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: sortedList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = sortedList[index];
        return hasActions
            ? _buildSlidable(context, item)
            : _buildCard(context, item);
      },
    );
  }

  Widget _buildSlidable(BuildContext context, T item) {
    return Slidable(
      key: ValueKey(itemKey(item)),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.45,
        children: [
          if (onItemEdit != null) ...[
            const SizedBox(width: 8),
            SlidableAction(
              onPressed: (_) => onItemEdit?.call(item),
              backgroundColor: Colors.blue.shade900.withAlpha(50),
              foregroundColor: Colors.blue.shade900,
              icon: Icons.edit,
              label: 'Edit',
              borderRadius: BorderRadius.circular(4),
            ),
          ],
          if (onItemDelete != null) ...[
            const SizedBox(width: 8),
            SlidableAction(
              onPressed: (_) => onItemDelete?.call(item),
              backgroundColor: Colors.red.shade900.withAlpha(50),
              foregroundColor: Colors.red.shade900,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ],
      ),
      child: _buildCard(context, item),
    );
  }

  Widget _buildCard(BuildContext context, T item) {
    final props = itemMapper(item);
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: onItemTap != null ? () => onItemTap!.call(item) : null,
      child: FinancialListCard(
        title: props.title,
        amount: props.amount,
        subtitle: props.subtitle,
        periodPct: props.periodPct,
        periodValue: props.periodValue,
        periodCurrency: props.periodCurrency,
        totalPct: props.totalPct,
        totalValue: props.totalValue,
        totalCurrency: props.totalCurrency,
        bottomInfos: props.bottomInfos,
        sparklineData: props.sparklineData,
      ),
    );
  }
}

/// Props extracted from a generic item and fed into [FinancialListCard].
/// Immutable and type-safe.
class FinancialListCardProps {
  final String title;
  final String amount;
  final String? subtitle;
  final double periodPct;
  final double periodValue;
  final String? periodCurrency;
  final double totalPct;
  final double totalValue;
  final String? totalCurrency;
  final List<BottomInfo> bottomInfos;

  /// Optional sparkline price points. Null = no sparkline.
  final List<double>? sparklineData;

  const FinancialListCardProps({
    required this.title,
    required this.amount,
    this.subtitle,
    required this.periodPct,
    required this.periodValue,
    this.periodCurrency,
    required this.totalPct,
    required this.totalValue,
    this.totalCurrency,
    required this.bottomInfos,
    this.sparklineData,
  });
}
