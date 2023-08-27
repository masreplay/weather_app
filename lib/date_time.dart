import 'package:intl/intl.dart';
import 'package:weather_app/common_lib.dart';

// save request query with isar
extension DateTimeX on DateTime {
  String formatDate([String? locale]) =>
      DateFormat('yyyy/MM/dd', locale).format(this);

  String formatTime([String? locale]) =>
      DateFormat('hh:mm a', locale).format(this);

  String formatHour([String? locale]) => DateFormat('h a', locale).format(this);

  String formatDOW([String? locale]) => DateFormat('EEEE', locale).format(this);

  String format([String? locale]) =>
      DateFormat('yyyy/MM/dd hh:mm', locale).format(this);
}

extension TimeOfDayX on TimeOfDay {
  DateTime toDateTime() => DateTime(0, 0, 0, hour, minute);
}
