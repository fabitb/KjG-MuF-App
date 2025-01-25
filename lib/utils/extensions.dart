import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension StringOptionalExtension on String? {
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

extension LocalizationExtension on BuildContext {
  AppLocalizations get localizations {
    return AppLocalizations.of(this)!;
  }
}

extension DateFormatExtension on DateFormat {
  DateTime? tryParse(String inputString) {
    try {
      return parse(inputString);
    } on Exception {
      return null;
    }
  }
}

extension StringExtension on String {
  String get hashMD5 => md5.convert(utf8.encode(this)).toString();
}
