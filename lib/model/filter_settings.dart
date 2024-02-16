import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filter_settings.g.dart';

@JsonSerializable()
@CustomDateTimeRangeConverter()
class FilterSettings {
  Map<String, bool> showOrganizer = {};
  bool onlyRegistered = false;
  DateTimeRange? dateTimeRange;

  FilterSettings();

  factory FilterSettings.fromJson(Map<String, dynamic> json) => _$FilterSettingsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FilterSettingsToJson(this);

  @override
  String toString() {
    return "$showOrganizer $onlyRegistered $dateTimeRange";
  }
}

class CustomDateTimeRangeConverter implements JsonConverter<DateTimeRange, String> {
  const CustomDateTimeRangeConverter();

  @override
  DateTimeRange fromJson(String json) {
    var parts = json.split(";");

    return DateTimeRange(start: DateTime.parse(parts[0]), end: DateTime.parse(parts[1]));
  }

  @override
  String toJson(DateTimeRange json) => "${json.start.toIso8601String()};${json.end.toIso8601String()}";
}