import 'package:intl/intl.dart';

String formatCurrency(double value, {bool showSign = false}) {
  final sign = showSign && value >= 0 ? '+' : '';
  if (value >= 1000000) {
    return '$sign${(value / 1000000).toStringAsFixed(2)}M';
  } else if (value >= 1000) {
    return '$sign${(value / 1000).toStringAsFixed(2)}K';
  }
  return '$sign${value.toStringAsFixed(2)}';
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
      return DateFormat('dd/MM/yyyy').format(date);
    case '1y':
    case '5y':
      return DateFormat('MMM yyyy').format(date);
    case 'all':
      return DateFormat('yyyy').format(date);
    default:
      return DateFormat('dd/MM/yy').format(date);
  }
}

String formatTxDate(String dateStr) {
  final date = DateTime.tryParse(dateStr);
  if (date == null) return dateStr;
  return DateFormat('d MMM yyyy').format(date);
}
