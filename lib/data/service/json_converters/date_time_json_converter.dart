import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeJsonConverter implements JsonConverter<DateTime, String> {
  const DateTimeJsonConverter();

  @override
  DateTime fromJson(String json) {
    // 2023-08-28 0:10
    // if have one zero in hour or minute, add zero
    final parts = json.split(" ");
    final dateParts = parts.first.split("-");
    final timeParts = parts.last.split(":");
    final year = int.parse(dateParts[0]);
    final month = int.parse(dateParts[1]);
    final day = int.parse(dateParts[2]);
    final hour = int.parse(timeParts[0]);
    final minute = int.parse(timeParts[1]);
    return DateTime(year, month, day, hour, minute);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}
