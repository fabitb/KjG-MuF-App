import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:url_launcher/url_launcher.dart';

enum GeolocationState { loaded, loading, error }

class EventDetailViewModel extends ChangeNotifier {
  double? latitudeCache;
  double? longitudeCache;

  bool get userRegisteredForEvent => registeredMap[event.eventID] ?? false;
  final Map<String, bool> registeredMap;
  final Event event;
  final bool offline;

  Location? _location;

  Location? get location => _location;

  GeolocationState _geolocationState = GeolocationState.loading;

  GeolocationState get geolocationState => _geolocationState;

  EventDetailViewModel(this.event, this.registeredMap, this.offline) {
    getLocationFromAddress(event);
    isUserRegisteredForEvent(event.eventID);
  }

  getLocationFromAddress(Event event) async {
    List<Location> locations = List.empty();
    try {
      locations = await locationFromAddress(event.location);
    } catch (_) {
      _geolocationState = GeolocationState.error;
      notifyListeners();
      return;
    }

    _location = locations.first;
    _geolocationState = GeolocationState.loaded;

    if (_location != null) {
      setPositionCache(_location!.latitude, _location!.longitude);
    }

    notifyListeners();
  }

  setPositionCache(double latitude, double longitude) {
    latitudeCache = latitude;
    longitudeCache = longitude;
  }

  Future<void> isUserRegisteredForEvent(String eventID) async {
    if (offline) return;
    if (await SharedPref().getToken() == null) {
      return;
    }

    // get events starting from event date for a week (less not possible)
    List<CSVEvent> events =
        await MidaService().getFutureEventsPersonal(weekStartingFrom: event.startDateAndTime);

    bool isUserRegisteredForEvent = false;
    for (CSVEvent e in events) {
      if (e.eventID == eventID) {
        isUserRegisteredForEvent = e.registered;
        break;
      }
    }

    if (userRegisteredForEvent != isUserRegisteredForEvent) {
      registeredMap[eventID] = isUserRegisteredForEvent;
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
