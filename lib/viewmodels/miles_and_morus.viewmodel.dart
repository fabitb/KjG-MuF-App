import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/backend_service.dart';
import 'package:kjg_muf_app/model/miles_data.dart';

import '../utils/shared_prefs.dart';

class MilesAndMorusViewModel extends ChangeNotifier {
  MilesData? _milesData;
  MilesData? get milesData => _milesData;

  MilesAndMorusViewModel() {
    loadMilesData();
  }

  Future<void> loadMilesData() async {
    String? userName = await SharedPref().getUserName();
    if (userName != null && userName.isNotEmpty) {
      _milesData = await BackendService().getMilesData(userName.toLowerCase());
      notifyListeners();
    }
  }
}
