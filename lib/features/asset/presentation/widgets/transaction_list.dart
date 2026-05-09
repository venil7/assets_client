import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:assets_client/features/asset/presentation/widgets/transaction_detail_dialog.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionEntity> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: Text('No transactions found')),
      );
    }

    final sorted = List<TransactionEntity>.of(transactions)
      ..sort((a, b) => b.date.compareTo(a.date));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DataTable(
        showCheckboxColumn: false,
        columnSpacing: 16,
        headingRowHeight: 40,
        dataRowMinHeight: 36,
        dataRowMaxHeight: 44,
        columns: const [
          DataColumn(label: Text('Type')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Qty'), numeric: true),
          DataColumn(label: Text('Price'), numeric: true),
          DataColumn(label: Text('Value'), numeric: true),
          DataColumn(label: Text('Notes')),
        ],
        rows: sorted.map((tx) {
          final isBuy = tx.type.toLowerCase() == 'buy';
          return DataRow(
            onSelectChanged: (_) =>
                TransactionDetailDialog.show(context, tx),
            cells: [
              DataCell(_typeBadge(tx.type, isBuy)),
              DataCell(Text(formatTxDate(tx.date))),
              DataCell(Text(tx.quantity.toStringAsFixed(4))),
              DataCell(Text(formatCurrency(tx.price))),
              DataCell(Text(formatCurrency(tx.quantity * tx.price))),
              DataCell(
                tx.comments != null && tx.comments!.isNotEmpty
                    ? Text(
                        tx.comments!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )
                    : const Text(''),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _typeBadge(String type, bool isBuy) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: isBuy
            ? Colors.green.withValues(alpha: 0.1)
            : Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        type.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: isBuy ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}