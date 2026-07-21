import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/features/asset/presentation/bloc/asset_detail_bloc.dart';
import 'package:assets_client/features/asset/presentation/widgets/add_transaction_dialog.dart';
import 'package:assets_client/features/asset/presentation/widgets/transaction_detail_dialog.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionList extends StatelessWidget {
  final int portfolioId;
  final int assetId;
  final List<TransactionEntity> transactions;

  const TransactionList({
    super.key,
    required this.portfolioId,
    required this.assetId,
    required this.transactions,
  });

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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
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
            DataColumn(label: Text('Actions')),
          ],
          rows: sorted.map((tx) {
            final isBuy = tx.type.toLowerCase() == 'buy';
            return DataRow(
              cells: [
                DataCell(_typeBadge(tx.type, isBuy)),
                DataCell(Text(formatTxDate(tx.date))),
                DataCell(Text(tx.quantity.toStringAsFixed(4))),
                DataCell(Text(formatCurrency(tx.price))),
                DataCell(Text(formatCurrency(tx.quantity * tx.price))),
                DataCell(
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.visibility, size: 18),
                        onPressed: () =>
                            TransactionDetailDialog.show(context, tx),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit, size: 18),
                        onPressed: () => AddTransactionDialog.show(
                          context,
                          portfolioId,
                          assetId,
                          tx.assetTicker,
                          transaction: tx,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          size: 18,
                          color: Colors.red,
                        ),
                        onPressed: () => _confirmDelete(context, tx),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, TransactionEntity tx) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Transaction'),
        content: Text(
          'Delete transaction from ${formatTxDate(tx.date)} (${tx.type.toUpperCase()} ${tx.quantity} @ ${formatCurrency(tx.price)})?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              context.read<AssetDetailBloc>().add(
                DeleteTransactionEvent(
                  portfolioId: portfolioId,
                  assetId: assetId,
                  txId: tx.id,
                ),
              );
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
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
        borderRadius: BorderRadius.circular(4),
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
