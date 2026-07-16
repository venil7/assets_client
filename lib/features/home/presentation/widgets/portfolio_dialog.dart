import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:flutter/material.dart';

class PortfolioDialog extends StatefulWidget {
  final PortfolioEntity? portfolio; // null = create mode

  const PortfolioDialog({super.key, this.portfolio});

  static Future<void> show(
    BuildContext context, {
    PortfolioEntity? portfolio,
  }) {
    return showDialog<void>(
      context: context,
      builder: (_) => PortfolioDialog(portfolio: portfolio),
    );
  }

  @override
  State<PortfolioDialog> createState() => _PortfolioDialogState();
}

class _PortfolioDialogState extends State<PortfolioDialog> {
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool get _isEditing => widget.portfolio != null;

  @override
  void initState() {
    super.initState();
    if (widget.portfolio != null) {
      _nameCtrl.text = widget.portfolio!.name;
      _descCtrl.text = widget.portfolio!.description;
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_isEditing ? 'Edit Portfolio' : 'New Portfolio'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: (v) =>
                  v == null || v.isEmpty ? 'Name is required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _descCtrl,
              decoration: const InputDecoration(
                labelText: 'Description (optional)',
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
          child: Text(_isEditing ? 'Save' : 'Create'),
        ),
      ],
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(context).pop({
      'name': _nameCtrl.text.trim(),
      'description': _descCtrl.text.trim(),
    });
  }
}
