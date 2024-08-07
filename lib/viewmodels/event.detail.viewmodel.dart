import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:url_launcher/url_launcher.dart';

enum GeolocationState { loaded, loading, error }

class EventDetailViewModel extends ChangeNotifier {
  double? latitudeCache;
  double? longitudeCache;

  final EventModel event;
  final bool offline;
  bool _showDownloadDialog = true;

  Location? _location;

  Location? get location => _location;

  GeolocationState _geolocationState = GeolocationState.loading;

  GeolocationState get geolocationState => _geolocationState;

  bool get showDownloadDialog => _showDownloadDialog;

  bool loadingAttachments = false;

  EventDetailViewModel(this.event, this.offline) {
    if (event.locationForMap.isNotNullAndNotEmpty) {
      getLocationFromAddress(event);
    } else {
      _geolocationState = GeolocationState.error;
    }
    refreshUserRegisteredForEvent(event.eventID);

    _init();
  }

  _init() async {
    _showDownloadDialog = await SharedPref().getDownloadDialog() ?? true;
    if (!_showDownloadDialog) {
      notifyListeners();
    }
  }

  getLocationFromAddress(EventModel event) async {
    List<Location> locations = List.empty();
    try {
      locations = await locationFromAddress(event.locationForMap!);
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

  Future<void> refreshUserRegisteredForEvent(String eventID) async {
    if (offline) return;
    if (await SharedPref().getToken() == null) {
      return;
    }

    // get events starting from event date for a week (less not possible)
    List<CSVEvent> events = await MidaService()
        .getFutureEventsPersonal(weekStartingFrom: event.startDateAndTime);

    bool isUserRegisteredForEvent = false;
    for (CSVEvent e in events) {
      if (e.eventID == eventID) {
        isUserRegisteredForEvent = e.registered;
        break;
      }
    }

    if (event.registered != isUserRegisteredForEvent) {
      event.registered = isUserRegisteredForEvent;
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

  cacheAttachments(bool showDownloadDialog) async {
    SharedPref().setDownloadDialog(showDownloadDialog);

    loadingAttachments = true;
    notifyListeners();

    List<Future> futures = [];

    for (var attachment in event.attachments ?? []) {
      final url = Strings.attachmentDownloadLink(event.baseUrl!, attachment);

      futures.add(KjGCacheManager.instance.downloadFile(url));
    }

    Future.wait(futures, eagerError: true).then(
      (value) {
        event.cachedTime = DateTime.now();
        DBService().saveEvent(event);
        loadingAttachments = false;

        notifyListeners();
      },
      onError: (error, stackTrace) {
        // do nothing, probably no internet
        loadingAttachments = false;
        notifyListeners();
      },
    );
  }

  deleteAttachments() {
    for (var attachment in event.attachments ?? []) {
      final url = Strings.attachmentDownloadLink(event.baseUrl!, attachment);

      KjGCacheManager.instance.removeFile(url);
    }

    event.cachedTime = null;
    DBService().saveEvent(event);

    notifyListeners();
  }
}
