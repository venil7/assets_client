import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/features/asset/presentation/bloc/asset_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddTransactionDialog extends StatefulWidget {
  final int portfolioId;
  final int assetId;
  final String ticker;
  final AssetDetailBloc bloc;
  final TransactionEntity? transaction;

  const AddTransactionDialog({
    super.key,
    required this.portfolioId,
    required this.assetId,
    required this.ticker,
    required this.bloc,
    this.transaction,
  });

  static void show(
    BuildContext context,
    int portfolioId,
    int assetId,
    String ticker, {
    TransactionEntity? transaction,
  }) {
    final bloc = context.read<AssetDetailBloc>();
    showDialog(
      context: context,
      builder: (_) => AddTransactionDialog(
        portfolioId: portfolioId,
        assetId: assetId,
        ticker: ticker,
        bloc: bloc,
        transaction: transaction,
      ),
    );
  }

  @override
  State<AddTransactionDialog> createState() => _AddTransactionDialogState();
}

class _AddTransactionDialogState extends State<AddTransactionDialog> {
  final _typeNotifier = ValueNotifier<String>('buy');
  final _qtyCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _totalCtrl = TextEditingController();
  final _dateCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  DateTime _selectedDate = DateTime.now();
  bool _isLookupLoading = false;
  bool get _isEditing => widget.transaction != null;

  @override
  void initState() {
    super.initState();
    _qtyCtrl.addListener(_onQtyChanged);
    _priceCtrl.addListener(_onPriceChanged);
    _totalCtrl.addListener(_onTotalChanged);

    final tx = widget.transaction;
    if (tx != null) {
      _typeNotifier.value = tx.type.toLowerCase() == 'buy' ? 'buy' : 'sell';
      _qtyCtrl.text = tx.quantity.toString();
      _priceCtrl.text = tx.price.toString();
      _totalCtrl.text = (tx.quantity * tx.price).toStringAsFixed(2);
      _selectedDate = DateTime.tryParse(tx.date) ?? DateTime.now();
      _dateCtrl.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      if (tx.comments != null && tx.comments!.isNotEmpty) {
        _notesCtrl.text = tx.comments!;
      }
    } else {
      _dateCtrl.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      _lookupPrice(_selectedDate);
    }
  }

  @override
  void dispose() {
    _typeNotifier.dispose();
    _qtyCtrl.dispose();
    _priceCtrl.dispose();
    _totalCtrl.dispose();
    _dateCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  void _onQtyChanged() {
    final qty = double.tryParse(_qtyCtrl.text);
    final price = double.tryParse(_priceCtrl.text);
    if (qty != null && price != null && price > 0) {
      _totalCtrl.removeListener(_onTotalChanged);
      _totalCtrl.text = (qty * price).toStringAsFixed(2);
      _totalCtrl.addListener(_onTotalChanged);
    }
  }

  void _onPriceChanged() {
    final qty = double.tryParse(_qtyCtrl.text);
    final price = double.tryParse(_priceCtrl.text);
    if (qty != null && price != null && qty > 0) {
      _totalCtrl.removeListener(_onTotalChanged);
      _totalCtrl.text = (qty * price).toStringAsFixed(2);
      _totalCtrl.addListener(_onTotalChanged);
    }
  }

  void _onTotalChanged() {
    final total = double.tryParse(_totalCtrl.text);
    final price = double.tryParse(_priceCtrl.text);
    if (total != null && price != null && price > 0) {
      _qtyCtrl.removeListener(_onQtyChanged);
      _qtyCtrl.text = (total / price).toStringAsFixed(4);
      _qtyCtrl.addListener(_onQtyChanged);
    }
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked == null) return;
    setState(() => _selectedDate = picked);
    _dateCtrl.text = DateFormat('yyyy-MM-dd').format(picked);
    if (!_isEditing) {
      await _lookupPrice(picked);
    }
  }

  Future<void> _lookupPrice(DateTime date) async {
    setState(() => _isLookupLoading = true);
    try {
      final apiClient = ApiClient(dioInstance);
      final dateStr = DateFormat('yyyy-MM-dd').format(date);
      final quote = await apiClient.getQuoteForDate(widget.ticker, dateStr);
      _priceCtrl.text = quote.price.toStringAsFixed(4);
    } catch (_) {
      // silent — user can type price manually
    } finally {
      setState(() => _isLookupLoading = false);
    }
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final qty = double.parse(_qtyCtrl.text);
    final price = double.parse(_priceCtrl.text);
    final date = _dateCtrl.text;
    final comments = _notesCtrl.text.isEmpty ? null : _notesCtrl.text;

    final tx = widget.transaction;
    if (tx != null) {
      widget.bloc.add(
        UpdateTransactionEvent(
          portfolioId: widget.portfolioId,
          assetId: widget.assetId,
          txId: tx.id,
          type: _typeNotifier.value,
          quantity: qty,
          price: price,
          date: date,
          comments: comments,
        ),
      );
    } else {
      widget.bloc.add(
        CreateTransactionEvent(
          portfolioId: widget.portfolioId,
          assetId: widget.assetId,
          type: _typeNotifier.value,
          quantity: qty,
          price: price,
          date: date,
          comments: comments,
        ),
      );
    }

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        _isEditing ? 'Edit Transaction — ${widget.ticker}' : 'Add Transaction — ${widget.ticker}',
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: _typeNotifier,
              builder: (context, type, _) {
                return SegmentedButton<String>(
                  segments: const [
                    ButtonSegment(value: 'buy', label: Text('Buy')),
                    ButtonSegment(value: 'sell', label: Text('Sell')),
                  ],
                  selected: {type},
                  onSelectionChanged: (v) => _typeNotifier.value = v.first,
                );
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _qtyCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Quantity',
                border: OutlineInputBorder(),
              ),
              validator: (v) => v == null || v.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _priceCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Price per unit',
                border: const OutlineInputBorder(),
                suffixIcon: _isLookupLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                    : null,
              ),
              validator: (v) => v == null || v.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _totalCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Total amount',
                border: OutlineInputBorder(),
              ),
              validator: (v) => v == null || v.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _dateCtrl,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Transaction Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              onTap: _pickDate,
              validator: (v) => v == null || v.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _notesCtrl,
              decoration: const InputDecoration(
                labelText: 'Notes (optional)',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: _submit,
          child: Text(_isEditing ? 'Save' : 'Submit'),
        ),
      ],
    );
  }
}