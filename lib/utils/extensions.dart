import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExtension on String? {
  bool get isNotNullAndNotEmpty => this != null && this!.isNotEmpty;
}

extension JsonExtension on Map<String, dynamic> {
  /// Returns null if value for key is null or empty
  String? getStringNonEmpty(String key) {
    final value = this[key];
    if (value is String) return value.isNotEmpty ? value : null;

    return null;
  }
}

extension DateTimeRangeExtension on DateTimeRange {
  String startEndString() {
    var dateFormat = DateFormat("dd.MM.yyyy");
    if (start == end) {
      return dateFormat.format(start);
    }
    return "${dateFormat.format(start)} - ${DateFormat("dd.MM.yyyy").format(end)}";
  }
}
