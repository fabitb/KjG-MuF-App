import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailViewModel extends ChangeNotifier {
  double? latitudeCache;
  double? longitudeCache;
  bool _userRegisteredForEvent = false;
  bool get userRegisteredForEvent => _userRegisteredForEvent;

  EventDetailViewModel(String eventID) {
    isUserRegisteredForEvent(eventID);
  }

  setPositionCache(double latitude, double longitude) {
    latitudeCache = latitude;
    longitudeCache = longitude;
  }

  Future<void> isUserRegisteredForEvent(String eventID) async {
    if (await SharedPref().getToken() == null) {
      return;
    }

    var registrations = await MidaService().getRegistrationsForEvent(eventID);
    var userID = await SharedPref().getUserID();

    bool isUserRegisteredForEvent = registrations
        .where((element) =>
            element.userID == userID.toString() && element.status == 0)
        .isNotEmpty;

    if (_userRegisteredForEvent != isUserRegisteredForEvent) {
      _userRegisteredForEvent = isUserRegisteredForEvent;
      notifyListeners();
    }
  }

  Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
