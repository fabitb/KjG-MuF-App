// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterSettings _$FilterSettingsFromJson(Map<String, dynamic> json) =>
    FilterSettings()
      ..showOrganizer = Map<String, bool>.from(json['showOrganizer'] as Map)
      ..onlyRegistered = json['onlyRegistered'] as bool
      ..dateTimeRange = _$JsonConverterFromJson<String, DateTimeRange>(
          json['dateTimeRange'], const CustomDateTimeRangeConverter().fromJson);

Map<String, dynamic> _$FilterSettingsToJson(FilterSettings instance) =>
    <String, dynamic>{
      'showOrganizer': instance.showOrganizer,
      'onlyRegistered': instance.onlyRegistered,
      'dateTimeRange': _$JsonConverterToJson<String, DateTimeRange>(
          instance.dateTimeRange, const CustomDateTimeRangeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
