import 'package:intl/intl.dart';

class DateTimeService {
  String formatDate(String? dateString) {
    try {
      if (dateString == null || dateString.isEmpty) {
        throw const FormatException("Date string is null or empty");
      }

      DateTime parsedDate = DateTime.parse(dateString);

      return DateFormat('dd.MM.yyyy').format(parsedDate);
    } catch (e) {
      return "";
    }
  }
}
