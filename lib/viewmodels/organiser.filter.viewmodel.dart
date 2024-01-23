import 'package:flutter/material.dart';

class OrganiserFilterViewModel extends ChangeNotifier {
  final List<bool> _filtered;

  List<bool> get filtered => _filtered;

  OrganiserFilterViewModel(List<String> organisers, List<String> filters)
      : _filtered = [] {
    for (int i = 0; i < organisers.length; i++) {
      _filtered.add(!filters.contains(organisers[i]));
    }
  }

  setFiltered(int index, bool enabled) {
    filtered[index] = enabled;
    notifyListeners();
  }
}
