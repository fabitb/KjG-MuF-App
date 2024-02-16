import 'package:flutter/material.dart';

class FilterSettings {
  Map<String, bool> showOrganizer = {};
  bool onlyRegistered = false;
  DateTimeRange? dateTimeRange;

  @override
  String toString() {
    List<String> parts = [];

    if(onlyRegistered) parts.add("nur angemeldet");
    if(onlyRegistered) parts.add("nur angemeldet");

    return "$showOrganizer $onlyRegistered $dateTimeRange";
  }
}