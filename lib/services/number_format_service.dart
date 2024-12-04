import 'package:intl/intl.dart';

String formatNumber(double number) {
  final formatter = NumberFormat("#,##0.00", "en_US"); // Ensures two decimal places
  String formattedNumber = formatter.format(number).replaceAll(',', ' '); // Replaces commas with spaces
  return formattedNumber;
}
