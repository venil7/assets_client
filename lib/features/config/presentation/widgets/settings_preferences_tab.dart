import 'package:assets_client/features/config/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const List<String> _supportedCurrencies = [
  'USD', 'GBP', 'EUR', 'CAD', 'AUD', 'CHF',
  'SEK', 'NOK', 'DKK', 'NZD', 'JPY', 'INR',
];

class SettingsPreferencesTab extends StatefulWidget {
  const SettingsPreferencesTab({super.key});

  @override
  State<SettingsPreferencesTab> createState() => _SettingsPreferencesTabState();
}

class _SettingsPreferencesTabState extends State<SettingsPreferencesTab> {
  String? _selectedCurrency;
  bool _altChart = false;

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadPreferencesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final prefs = state.preferences;
        if (state.isPreferencesLoading && prefs == null) {
          return const Center(child: CircularProgressIndicator());
        }

        if (prefs != null && _selectedCurrency == null) {
          _selectedCurrency = prefs.baseCcy;
          _altChart =
              (prefs.additional?['altChart'] as bool?) ?? false;
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Preferences',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),

            // Base Currency
            DropdownButtonFormField<String>(
              initialValue: _selectedCurrency,
              decoration: const InputDecoration(
                labelText: 'Base currency',
                prefixIcon: Icon(Icons.currency_exchange),
                border: OutlineInputBorder(),
              ),
              items: _supportedCurrencies
                  .map(
                    (ccy) => DropdownMenuItem(
                      value: ccy,
                      child: Text(ccy),
                    ),
                  )
                  .toList(),
              onChanged: (val) {
                setState(() => _selectedCurrency = val);
              },
            ),
            const SizedBox(height: 24),

            // Alt Chart Toggle
            SwitchListTile(
              title: const Text('Alternative chart style'),
              subtitle: const Text('Use alternative chart visualization'),
              value: _altChart,
              onChanged: (val) {
                setState(() => _altChart = val);
              },
              secondary: const Icon(Icons.show_chart),
            ),
            const SizedBox(height: 24),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: state.isPreferencesLoading
                    ? null
                    : () => _save(context),
                child: state.isPreferencesLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Save Preferences'),
              ),
            ),

            // Messages
            if (state.successMessage != null) ...[
              const SizedBox(height: 12),
              Text(
                state.successMessage!,
                style: const TextStyle(color: Colors.green),
              ),
            ],
            if (state.error != null) ...[
              const SizedBox(height: 12),
              Text(
                state.error!,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ],
        );
      },
    );
  }

  void _save(BuildContext context) {
    if (_selectedCurrency == null) return;
    context.read<SettingsBloc>().add(
          UpdatePreferencesEvent(
            baseCcy: _selectedCurrency!,
            additional: {'altChart': _altChart},
          ),
        );
  }
}
