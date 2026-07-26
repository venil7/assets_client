import 'package:intl/intl.dart';

/// Currency code → symbol map.
const Map<String, String> _currencySymbols = {
  'USD': '\$',
  'GBP': '£',
  'EUR': '€',
  'CAD': 'C\$',
  'AUD': 'A\$',
  'CHF': 'CHF',
  'SEK': 'kr',
  'NOK': 'kr',
  'DKK': 'kr',
  'NZD': 'NZ\$',
  'JPY': '¥',
  'INR': '₹',
};

String formatCurrency(double value, {String? currency, bool showSign = false}) {
  final sign = showSign && value >= 0 ? '+' : '';
  final symbol = currency != null
      ? (_currencySymbols[currency] ?? currency)
      : '';

  String amount;
  if (value >= 1000000) {
    amount = '${(value / 1000000).toStringAsFixed(2)}M';
  } else if (value >= 1000) {
    amount = '${(value / 1000).toStringAsFixed(2)}K';
  } else {
    amount = value.toStringAsFixed(2);
  }

  if (symbol.isNotEmpty) {
    return '$sign$symbol$amount';
  }
  return '$sign$amount';
}

String formatPct(double value, {int decimals = 2, bool showSign = true}) {
  final sign = showSign && value >= 0 ? '+' : '';
  final formatted = (value * 100).toStringAsFixed(decimals);
  return '$sign$formatted%';
}

String formatChartDate(int timestamp, String range) {
  final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  switch (range) {
    case '1d':
      return DateFormat('HH:mm').format(date);
    case '1w':
      return DateFormat('EEE').format(date);
    case '1m':
    case '3m':
      return DateFormat('dd-MMM').format(date);
    case '1y':
    case '5y':
      return DateFormat('MMM-yy').format(date);
    case 'all':
      return DateFormat('yyyy').format(date);
    default:
      return DateFormat('dd-MMM').format(date);
  }
}

String formatTxDate(String dateStr) {
  final date = DateTime.tryParse(dateStr);
  if (date == null) return dateStr;
  return DateFormat('d MMM yy').format(date);
}
