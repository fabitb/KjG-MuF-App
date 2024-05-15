import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';

import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';

class EventListViewModel extends ChangeNotifier {
  List<EventModel>? _events;
  TextEditingController filterController = TextEditingController();

  List<EventModel>? get events => _filteredEvents();

  List<EventModel>? get eventsUnfiltered => _events;

  FilterSettings _filterSettings = FilterSettings();

  FilterSettings get filterSettings => _filterSettings;

  setFilterSettings(FilterSettings newValue, {bool saveInPrefs = true}) {
    _filterSettings = newValue;
    notifyListeners();

    if (saveInPrefs) SharedPref().saveFilterSettings(newValue);
  }

  searchChanged() {
    notifyListeners();
  }

  List<EventModel>? _filteredEvents() {
    List<EventModel>? e = _events;

    if (_filterSettings.onlyRegistered) {
      e = e?.where((element) => element.registered).toList();
    }

    if (_filterSettings.hideGremien) {
      // Natürlich nur in MuF Gremiensitzung = typ 100
      e = e?.where((element) => element.type != "100").toList();
    }

    e = e
        ?.where((element) =>
            _filterSettings.showOrganizer[element.organizer ?? "Unbekannt"] ??
            true)
        .toList();

    if (_filterSettings.dateTimeRange != null) {
      e = e?.where((element) {
        if (element.startDateAndTime == null) return false;
        DateTime start = _filterSettings.dateTimeRange!.start;
        // Aktionen am Endtag sollen inkludiert sein
        DateTime end =
            _filterSettings.dateTimeRange!.end.add(const Duration(days: 1));
        return element.startDateAndTime!.isAfter(start) &&
            element.startDateAndTime!.isBefore(end);
      }).toList();
    }

    final searchText = filterController.text.toLowerCase();
    if (searchText.isNotEmpty) {
      e = e?.where((element) {
        return element.title.toLowerCase().contains(searchText) ||
            (element.location?.toLowerCase().contains(searchText) ?? false) ||
            (element.organizer?.toLowerCase().contains(searchText) ?? false);
      }).toList();
    }

    return e;
  }

  EventListViewModel() {
    _loadFilterSettings();
    _loadCachedEvents();
  }

  Future<void> _loadFilterSettings() async {
    FilterSettings? cached = await SharedPref().getFilterSettings();
    if (cached != null) setFilterSettings(cached, saveInPrefs: false);
  }

  Future<void> _loadCachedEvents() async {
    List<EventModel> eventModels = await DBService().getCachedEvents();

    final now = DateTime.now();
    final startOfToday = DateTime(now.year, now.month, now.day);

    _events = [];
    for (EventModel eM in eventModels) {
      if (eM.startDateAndTime?.isAfter(startOfToday) ?? false) {
        _events?.add(eM);
      }
    }
    notifyListeners();
  }

  Future<void> loadEvents(bool loggedIn) async {
    _events = await MidaService().getEvents();

    if (_events != null && loggedIn) {
      List<EventModel> eNN = _events!;
      var list = await MidaService().getFutureEventsPersonal();

      List<String> publicEventIDs = eNN.map((e) => e.eventID).toList();
      bool inserted = false;

      // add personal events to list and sort
      for (CSVEvent event in list) {
        if (!publicEventIDs.contains(event.eventID)) {
          try {
            // getEvent sometimes empty... catch while investigating
            final backendEvent = await MidaService().getEvent(event.eventID);
            backendEvent.registered = event.registered;
            eNN.add(backendEvent);
          } catch (e) {
            // display event with basic information instead
            // WebView will have full information
            EventModel ev = EventModel(
              title: event.title,
              description:
                  "<b>Genaue Daten zur Veranstaltung sind nicht in der App verfügbar.<br>Bitte über den MiDa Knopf anschauen.</b>",
              imageUrl: "",
              location: event.place,
              attachments: [],
              contactEmail: "",
              contactName: "",
              durationDays: 0,
              eventID: event.eventID,
              eventUrl: event.link,
              startDateAndTime: event.startTime,
              endTime: event.startTime,
              organizer: "",
              registered: event.registered,
            );
            eNN.add(ev);
          }
          inserted = true;
        }
      }

      if (inserted) {
        eNN.sort((a, b) {
          if (a.startDateAndTime != null && b.startDateAndTime != null) {
            return a.startDateAndTime!.compareTo(b.startDateAndTime!);
          } else {
            return -1;
          }
        });
      }
    }

    DBService().cacheEvents(_events ?? []);

    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}
