import 'package:flutter/material.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';

class FilterViewModel extends ChangeNotifier {
  final List<String> _organisers;
  final FilterSettings _filterSettings;

  FilterSettings get filterSettings => _filterSettings;

  List<String> get organisers => _organisers;

  Map<String, bool> get showOrganizer => _filterSettings.showOrganizer;

  DateTimeRange? get dateTimeRange => _filterSettings.dateTimeRange;

  bool get onlyRegistered => _filterSettings.onlyRegistered;

  bool get hideGremien => _filterSettings.hideGremien;

  FilterViewModel(List<Event> events, this._filterSettings)
      : _organisers =
            events.map((e) => e.organizer ?? "Unbekannt").toSet().toList() {
    _organisers.sort();
    for (var element in _organisers) {
      if (!_filterSettings.showOrganizer.containsKey(element)) {
        _filterSettings.showOrganizer[element] = true;
      }
    }
  }

  setOnlyRegistered(bool newValue) {
    _filterSettings.onlyRegistered = newValue;
    notifyListeners();
  }

  setShowOrganizer(Map<String, bool> newValue) {
    _filterSettings.showOrganizer = newValue;
    notifyListeners();
  }

  setDateTimeRange(DateTimeRange? newValue) {
    _filterSettings.dateTimeRange = newValue;
    notifyListeners();
  }

  setHideGremien(bool newValue) {
    _filterSettings.hideGremien = newValue;
    notifyListeners();
  }

  resetFilterSettings() {
    _filterSettings.onlyRegistered = false;
    _filterSettings.dateTimeRange = null;
    _filterSettings.hideGremien = false;
    _filterSettings.showOrganizer.forEach((key, value) {
      _filterSettings.showOrganizer[key] = true;
    });
    notifyListeners();
  }
}
