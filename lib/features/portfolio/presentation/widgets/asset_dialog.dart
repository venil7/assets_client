import 'dart:async';

import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/features/lookup/data/models/quote_model.dart';
import 'package:flutter/material.dart';

class AssetDialog extends StatefulWidget {
  final int portfolioId;
  final AssetEntity? asset; // null = create mode

  const AssetDialog({super.key, required this.portfolioId, this.asset});

  @override
  State<AssetDialog> createState() => _AssetDialogState();
}

class _AssetDialogState extends State<AssetDialog> {
  final _tickerCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<QuoteItemModel> _searchResults = [];
  bool _isSearching = false;
  Timer? _debounce;

  bool get _isEditing => widget.asset != null;

  @override
  void initState() {
    super.initState();
    if (widget.asset != null) {
      _tickerCtrl.text = widget.asset!.ticker;
      _nameCtrl.text = widget.asset!.name;
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _tickerCtrl.dispose();
    _nameCtrl.dispose();
    super.dispose();
  }

  void _onTickerChanged(String value) {
    if (!_isEditing) {
      _debounce?.cancel();
      if (value.trim().isEmpty) {
        setState(() => _searchResults = []);
        return;
      }
      _debounce = Timer(const Duration(milliseconds: 300), () {
        _searchTicker(value.trim());
      });
    }
  }

  Future<void> _searchTicker(String term) async {
    if (term.isEmpty) {
      setState(() => _searchResults = []);
      return;
    }

    setState(() => _isSearching = true);

    try {
      final apiClient = ApiClient(dioInstance);
      final response = await apiClient.searchTicker(term);

      setState(() {
        _searchResults = response.quotes;
      });
    } catch (e) {
      // Silently fail — user can type manually
      setState(() => _searchResults = []);
    } finally {
      setState(() => _isSearching = false);
    }
  }

  void _selectTicker(QuoteItemModel item) {
    setState(() {
      _tickerCtrl.text = item.symbol;
      _nameCtrl.text = item.shortname ?? item.longname ?? '';
      _searchResults = [];
    });
  }

  ListTile _buildSearchItem(QuoteItemModel item) {
    return ListTile(
      dense: true,
      title: Text(
        item.symbol,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
      ),
      subtitle: Text(
        item.shortname ?? item.longname ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 11),
      ),
      trailing: Text(
        '${item.exchange}  ${item.quoteType}',
        style: TextStyle(fontSize: 10, color: Colors.grey[600]),
      ),
      onTap: () => _selectTicker(item),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use Dialog (not AlertDialog) to avoid IntrinsicWidth wrapping the
    // content, which crashes when a scrollable child is present.
    const double dialogWidth = 420;

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
        child: SizedBox(
          width: dialogWidth,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  _isEditing ? 'Edit Asset' : 'New Asset',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _tickerCtrl,
                  decoration: InputDecoration(
                    labelText: 'Ticker',
                    border: const OutlineInputBorder(),
                    suffixIcon: _isSearching
                        ? const Padding(
                            padding: EdgeInsets.all(12),
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          )
                        : null,
                  ),
                  onChanged: _onTickerChanged,
                  validator: (v) =>
                      v == null || v.isEmpty ? 'Ticker is required' : null,
                ),
                // Search results — limit to 3 items, use Column (no ListView)
                // to avoid intrinsic-dimension crashes inside a dialog.
                if (_searchResults.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (var i = 0; i < _searchResults.length && i < 3; i++)
                          _buildSearchItem(_searchResults[i]),
                      ],
                    ),
                  ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 1,
                  validator: (v) =>
                      v == null || v.isEmpty ? 'Name is required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(width: 8),
                    FilledButton(
                      onPressed: _submit,
                      child: Text(_isEditing ? 'Save' : 'Create'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(
      context,
    ).pop({'ticker': _tickerCtrl.text.trim(), 'name': _nameCtrl.text.trim()});
  }
}
