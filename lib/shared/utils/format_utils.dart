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

String formatCurrency(
  double value, {
  String? currency,
  bool showSign = false,
  int? decimals,
  bool trimTrailingZeros = false,
}) {
  final sign = value < 0 ? '-' : (showSign ? '+' : '');
  value = value.abs();

  final symbol = currency != null
      ? (_currencySymbols[currency] ?? currency)
      : '';

  final d = decimals ?? 2;
  String amount;
  if (value >= 1000000) {
    amount = '${(value / 1000_000).toStringAsFixed(d)}M';
  } else if (value >= 1000) {
    amount = '${(value / 1000).toStringAsFixed(d)}K';
  } else {
    amount = value.toStringAsFixed(d);
  }
  if (trimTrailingZeros) amount = _trimZeros(amount);

  if (symbol.isNotEmpty) {
    return '$sign$symbol$amount';
  }
  return '$sign$amount';
}

String formatPct(
  double value, {
  int decimals = 2,
  bool showSign = true,
  bool trimTrailingZeros = false,
}) {
  final sign = showSign && value >= 0 ? '+' : '';
  var formatted = (value * 100).toStringAsFixed(decimals);
  if (trimTrailingZeros) formatted = _trimZeros(formatted);
  return '$sign$formatted%';
}

/// Removes trailing zeros from a decimal string (e.g. '4.00' -> '4',
/// '0.10' -> '0.1', '2.50k' -> '2.5k', '5.00M' -> '5M').
String _trimZeros(String s) {
  if (!s.contains('.')) return s;
  // Split off a trailing unit suffix (e.g. 'k', 'M'); none for plain values.
  final match = RegExp(r'^(.*?)([kM]?)$').firstMatch(s)!;
  var numPart = match.group(1)!;
  final suffix = match.group(2)!;
  numPart = numPart.replaceFirst(RegExp(r'0+$'), '');
  numPart = numPart.replaceFirst(RegExp(r'\.$'), '');
  return '$numPart$suffix';
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
