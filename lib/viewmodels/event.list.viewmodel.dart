import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/event.dart';

class EventListViewModel extends ChangeNotifier {
  List<Event>? _events;
  List<Event>? get events => _events;

  EventListViewModel() {
    loadEvents();
  }

  Future<void> loadEvents() async {
    _events = await MidaService().getEvents();
    notifyListeners();
  }
}
