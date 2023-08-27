import 'package:intl/intl.dart';

// save request query with isar
extension DateTimeX on DateTime {
  String formatDate([String? locale]) {
    return DateFormat('yyyy/MM/dd', locale).format(this);
  }

  String formatTime([String? locale]) {
    return DateFormat('hh:mm a', locale).format(this);
  }

  String formatDOW([String? locale]) {
    return DateFormat('EEEE', locale).format(this);
  }

  String format([String? locale]) {
    return DateFormat('yyyy/MM/dd hh:mm', locale).format(this);
  }
}
