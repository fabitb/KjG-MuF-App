import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/providers/registered_list_provider.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@riverpod
Future<List<MidaEvent>> cachedEvents(Ref ref) async {
  final online = ref.watch(eventListProvider);

  if (online.valueOrNull case List<MidaEvent> list) {
    return list;
  }
  return await DBService().getCachedEvents();
}

@riverpod
class EventList extends _$EventList {
  @override
  Future<List<MidaEvent>> build() async {
    ref.watch(authProvider); // reload when auth changes (could have new events)

    final events = await MidaService().getEvents();
    await DBService().cacheEvents(events);
    return events;
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    ref.invalidate(registeredListProvider);
  }

// TODO: clean cache of old events somewhere
}

@riverpod
Future<List<MidaEvent>> filteredEvents(Ref ref) async {
  List<MidaEvent> e = await ref.watch(cachedEventsProvider.future);
  final registered = await ref.watch(registeredListProvider.future);

  final filterSettings = ref.watch(filterProvider);

  final searchText = ref.watch(filterTextProvider);

  if (filterSettings.onlyRegistered) {
    e = e.where((element) => registered.contains(element.id)).toList();
  }

  if (filterSettings.hideGremien) {
    // Natürlich nur in MuF Gremiensitzung = typ 100
    e = e.where((element) => element.type != "100").toList();
  }

  e = e
      .where(
        (element) =>
            filterSettings.showOrganizer[element.organization ?? "Unbekannt"] ??
            true,
      )
      .toList();

  final filterDateTimeRange = filterSettings.dateTimeRange;
  if (filterDateTimeRange != null) {
    e = e.where((element) {
      DateTime start = filterSettings.dateTimeRange!.start;
      // Aktionen am Endtag sollen inkludiert sein
      DateTime end = filterDateTimeRange.end.add(const Duration(days: 1));
      return element.startDateAndTime.isAfter(start) &&
          element.startDateAndTime.isBefore(end);
    }).toList();
  }

  if (searchText.isNotEmpty) {
    e = e.where((element) {
      return element.title.toLowerCase().contains(searchText) ||
          (element.location?.toLowerCase().contains(searchText) ?? false) ||
          (element.organization?.toLowerCase().contains(searchText) ?? false);
    }).toList();
  }

  return e;
}
