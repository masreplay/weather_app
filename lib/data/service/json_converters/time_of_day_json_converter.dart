import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeOfDayJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayJsonConverter();

  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(" ");
    final timeParts = parts.first.split(":");
    final hour = int.parse(timeParts.first);
    final minute = int.parse(timeParts.last);
    return TimeOfDay(hour: hour, minute: minute);
  }

  @override
  String toJson(TimeOfDay object) {
    return "${object.hour}:${object.minute}";
  }
}
