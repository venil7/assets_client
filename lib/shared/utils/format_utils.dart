import 'package:intl/intl.dart';

String formatCurrency(double value) {
  if (value >= 1000000) {
    return '${(value / 1000000).toStringAsFixed(2)}M';
  } else if (value >= 1000) {
    return '${(value / 1000).toStringAsFixed(2)}K';
  }
  return value.toStringAsFixed(2);
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
