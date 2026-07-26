import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';

class TransactionDetailDialog extends StatelessWidget {
  final TransactionEntity transaction;
  final String currency;

  const TransactionDetailDialog({super.key, required this.transaction, required this.currency});

  static void show(BuildContext context, TransactionEntity tx, {String currency = 'USD'}) {
    showDialog(
      context: context,
      builder: (_) => TransactionDetailDialog(transaction: tx, currency: currency),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tx = transaction;
    final isBuy = tx.type.toLowerCase() == 'buy';

    return AlertDialog(
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isBuy
                  ? Colors.green.withValues(alpha: 0.1)
                  : Colors.red.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              tx.type.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: isBuy ? Colors.green : Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              tx.assetTicker.isNotEmpty ? tx.assetTicker : 'Transaction',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _row('Date', formatTxDate(tx.date)),
            _row('Quantity', tx.quantity.toString()),
            _row('Price', formatCurrency(tx.price, currency: currency)),
            _row('Value', formatCurrency(tx.price * tx.quantity, currency: currency)),
            if (tx.comments != null && tx.comments!.isNotEmpty)
              _row('Comments', tx.comments!),
            const Divider(height: 24),
            if (tx.runningHolding > 0)
              _row('Running Holding', tx.runningHolding.toStringAsFixed(4)),
            if (tx.runningAveragePrice > 0)
              _row('Avg Price', formatCurrency(tx.runningAveragePrice, currency: currency)),
            if (tx.runningBreakEven > 0)
              _row('Break Even', formatCurrency(tx.runningBreakEven, currency: currency)),
            if (tx.realizedPnl != 0)
              _row(
                'Realized P&L',
                formatCurrency(tx.realizedPnl, currency: currency, showSign: true),
                valueColor: tx.realizedPnl >= 0 ? Colors.green : Colors.red,
              ),
            _row('Cost', formatCurrency(tx.cost, currency: currency)),
            _row('Cost Basis', formatCurrency(tx.costBasis, currency: currency)),
            _row('Contribution', formatCurrency(tx.contribution, currency: currency)),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _row(String label, String value, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 13, color: Colors.grey[700])),
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
