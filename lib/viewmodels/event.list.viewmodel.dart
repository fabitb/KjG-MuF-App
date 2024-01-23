import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/event.dart';

import '../database/model/event_model.dart';

class EventListViewModel extends ChangeNotifier {
  List<Event>? _events;
  Map<String, bool>? _registeredMap;

  List<Event>? get events => _filteredEvents();

  Map<String, bool>? get registeredMap => _registeredMap;

  List<Event>? _filteredEvents() {
    List<Event>? e = _events;

    if (onlyRegistered) {
      e = e
          ?.where((element) => registeredMap?[element.eventID] ?? false)
          .toList();
    }

    if (_organiserFilter.isNotEmpty) {
      e = e
          ?.where((element) => !_organiserFilter.contains(element.organizer))
          .toList();
    }

    if (_dateTimeRange != null) {
      e = e
          ?.where(
            (element) =>
                element.startDateAndTime.isAfter(_dateTimeRange!.start) &&
                element.startDateAndTime.isBefore(_dateTimeRange!.end),
          )
          .toList();
    }

    return e;
  }

  List<String>? getOrganisers() {
    List<String>? organisers =
        _events?.map((e) => e.organizer).toSet().toList();
    organisers?.sort(
      (a, b) => a.compareTo(b),
    );
    return organisers;
  }

  bool onlyRegistered = false;

  List<String> get organiserFilter => _organiserFilter;

  List<String> _organiserFilter = [];

  DateTimeRange? _dateTimeRange;

  DateTimeRange? get dateTimeRange => _dateTimeRange;

  setDateTimeRange(DateTimeRange? dateTimeRange) {
    _dateTimeRange = dateTimeRange;
    notifyListeners();
  }

  void setOrganiserFilter(List<String> newFilter) {
    _organiserFilter = newFilter;
    notifyListeners();
  }

  void setOnlyRegistered(bool newValue) {
    onlyRegistered = newValue;
    notifyListeners();
  }

  EventListViewModel() {
    _loadCachedEvents();
  }

  Future<void> _loadCachedEvents() async {
    List<EventModel> eventModels = await DBService().getCachedEvents();

    _events = [];
    _registeredMap = {};
    for (EventModel eM in eventModels) {
      _events?.add(eM.toEvent());
      _registeredMap?[eM.eventID] = eM.registered;
    }
    notifyListeners();
  }

  bool registeredForEvent(String eventID) {
    return registeredMap?[eventID] ?? false;
  }

  Future<void> loadEvents(bool loggedIn) async {
    _events = await MidaService().getEvents();

    if (_events != null && loggedIn) {
      List<Event> eNN = _events!;
      var list = await MidaService().getFutureEventsPersonal();

      List<String> publicEventIDs = eNN.map((e) => e.eventID).toList();
      bool inserted = false;

      // add personal events to list and sort
      for (CSVEvent event in list) {
        if (!publicEventIDs.contains(event.eventID)) {
          try {
            // getEvent sometimes empty... catch while investigating
            eNN.add(await MidaService().getEvent(event.eventID));
          } catch (e) {
            // display event with basic information instead
            // WebView will have full information
            Event ev = Event(
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
                organizer: "");
            eNN.add(ev);
          }
          inserted = true;
        }
      }

      if (inserted) {
        eNN.sort(
          (a, b) => a.startDateAndTime.compareTo(b.startDateAndTime),
        );
      }

      // create map eventID -> registered
      Map<String, bool> registeredMap = {};
      for (CSVEvent e in list) {
        registeredMap[e.eventID] = e.registered;
      }
      _registeredMap = registeredMap;
    } else {
      _registeredMap = {};
    }

    DBService().cacheEvents(_events ?? [], _registeredMap ?? {});

    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}
