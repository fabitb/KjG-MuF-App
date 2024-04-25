import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExtension on String? {
  bool isNotNullAndNotEmpty() => this != null && this!.isNotEmpty;
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
