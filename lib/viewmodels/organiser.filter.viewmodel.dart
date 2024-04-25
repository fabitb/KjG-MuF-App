import 'package:flutter/material.dart';

class OrganiserFilterViewModel extends ChangeNotifier {
  final Map<String, bool> _showOrganizer;
  final List<String> _organisers;

  Map<String, bool> get showOrganizer => _showOrganizer;

  OrganiserFilterViewModel(this._organisers, this._showOrganizer) {}

  toggleFiltered(int index) {
    bool before = _showOrganizer[_organisers[index]] ?? true;
    _showOrganizer[_organisers[index]] = !before;
    notifyListeners();
  }
}
