import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@riverpod
class EventList extends _$EventList {
  @override
  Future<List<EventModel>> build() async {
    // trigger refresh on first start
    if (!state.hasValue) refresh();

    return await DBService().getCachedEvents();
  }

  Future<void> refresh() async {
    final midaEvents = await MidaService().getEvents();
    final publicEventIds = midaEvents.map((e) => e.eventID).toList();

    final loggedIn = ref.read(authProvider) is AuthStateLoggedIn;

    if (loggedIn) {
      final personalEvents = await MidaService().getFutureEventsPersonal();

      for (var event in midaEvents) {
        event.registered = personalEvents
                .where((csvEvent) => csvEvent.eventID == event.eventID)
                .firstOrNull
                ?.registered ??
            false;
      }

      for (var event in personalEvents) {
        if (!publicEventIds.contains(event.eventID)) {
          try {
            var backendEvent = await MidaService()
                .getEvent(event.eventID, baseUrl: event.baseUrl);
            midaEvents.add(backendEvent);
          } on Exception {
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
            midaEvents.add(ev);
          }
        }
      }
    }

    await DBService().cacheEvents(midaEvents);

    final newIds = midaEvents.map((e) => e.eventID).toList();
    final toDelete =
        state.value?.where((e) => !newIds.contains(e.eventID)).toList() ?? [];

    for (var del in toDelete) {
      // delete cached attachments for old event
      if (del.baseUrl case String baseUrl) {
        del.attachments?.forEach((element) {
          KjGCacheManager.instance.removeFile(
            Strings.attachmentDownloadLink(baseUrl, element),
          );
        });
      }

      // delete event image
      if (del.imageUrl case String imageUrl) {
        KjGCacheManager.instance.removeFile(imageUrl);
      }
    }

    ref.invalidateSelf();
  }
}

@riverpod
Future<List<EventModel>> filteredEvents(Ref ref) async {
  List<EventModel> e = await ref.watch(eventListProvider.future);

  final filterSettings = ref.watch(filterProvider);

  final searchText = ref.watch(filterTextProvider);

  if (filterSettings.onlyRegistered) {
    e = e.where((element) => element.registered).toList();
  }

  if (filterSettings.hideGremien) {
    // Natürlich nur in MuF Gremiensitzung = typ 100
    e = e.where((element) => element.type != "100").toList();
  }

  e = e
      .where(
        (element) =>
            filterSettings.showOrganizer[element.organizer ?? "Unbekannt"] ??
            true,
      )
      .toList();

  if (filterSettings.dateTimeRange != null) {
    e = e.where((element) {
      if (element.startDateAndTime == null) return false;
      DateTime start = filterSettings.dateTimeRange!.start;
      // Aktionen am Endtag sollen inkludiert sein
      DateTime end =
          filterSettings.dateTimeRange!.end.add(const Duration(days: 1));
      return element.startDateAndTime!.isAfter(start) &&
          element.startDateAndTime!.isBefore(end);
    }).toList();
  }

  if (searchText.isNotEmpty) {
    e = e.where((element) {
      return element.title.toLowerCase().contains(searchText) ||
          (element.location?.toLowerCase().contains(searchText) ?? false) ||
          (element.organizer?.toLowerCase().contains(searchText) ?? false);
    }).toList();
  }

  return e;
}

@riverpod
class Registered extends _$Registered {
  @override
  bool build(EventModel event) {
    final list = ref.watch(eventListProvider);

    if (list case AsyncData(:final valueOrNull?)) {
      return valueOrNull
              .where((e) => e.eventID == event.eventID)
              .firstOrNull
              ?.registered ??
          false;
    }
    return false;
  }

  Future<void> refreshUserRegisteredForEvent() async {
    final token = SharedPreferencesService.instance.token;
    if (token == null) return;

    // get events starting from event date for a week (less not possible)
    List<CSVEvent> events = await MidaService()
        .getFutureEventsPersonal(weekStartingFrom: event.startDateAndTime);

    bool isUserRegisteredForEvent = false;
    for (CSVEvent e in events) {
      if (e.eventID == event.eventID) {
        isUserRegisteredForEvent = e.registered;
        break;
      }
    }

    if (state != isUserRegisteredForEvent) {
      event.registered = isUserRegisteredForEvent;
      await DBService.instance.saveEvent(event);
      ref.invalidateSelf();
    }
  }
}

/*
@riverpod
bool registered(Ref ref, String eventId) {
  final list = ref.watch(eventListProvider);

  if (list case AsyncData(:final valueOrNull?)) {
    return valueOrNull
            .where((e) => e.eventID == eventId)
            .firstOrNull
            ?.registered ??
        false;
  }
  return false;
}
*/

/*
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
 */
