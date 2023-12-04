import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/event.dart';

import '../utils/shared_prefs.dart';

class EventListViewModel extends ChangeNotifier {
  List<Event>? _events;
  Map<String, bool>? _registeredMap;

  List<Event>? get events => _events;

  Map<String, bool>? get registeredMap => _registeredMap;

  EventListViewModel() {
    loadEvents();
  }

  bool registeredForEvent(String eventID) {
    return registeredMap?[eventID] ?? false;
  }

  Future<void> loadEvents() async {
    _events = await MidaService().getEvents();

    if (_events != null) {
      List<Event> eNN = _events!;
      var list = await MidaService().getFutureEventsPersonal();

      // find personal events
      List<String> eventIDs = list.map((e) => e.eventID).toList();
      for (Event e in eNN) {
        eventIDs.remove(e.eventID);
      }

      // add personal events to list and sort
      for (String s in eventIDs) {
        eNN.add(await MidaService().getEvent(s));
      }
      if (eventIDs.isNotEmpty) {
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
    }

    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}
