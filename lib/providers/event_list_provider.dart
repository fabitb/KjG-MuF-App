import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/app_database.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/providers/attachment_cache_provider.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/providers/registered_list_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@riverpod
Future<List<MidaEvent>> cachedEvents(Ref ref) async {
  final online = ref.watch(eventListProvider);

  if (online.value case List<MidaEvent> list) {
    return list;
  }
  return await AppDatabase().getCachedEvents();
}

@riverpod
class EventList extends _$EventList {
  @override
  Future<List<MidaEvent>> build() async {
    ref.watch(authProvider); // reload when auth changes (could have new events)

    final events = await MidaService().getEvents();
    await AppDatabase().cacheEvents(events);
    ref.read(attachmentCacheProvider.notifier).cleanUp(events: events);
    return events;
  }

  Future<void> refresh() async {
    // use refresh to await new value for refresh loading indicator
    await ref.refresh(eventListProvider.future);
    await ref.refresh(registeredListProvider.future);
  }
}

@riverpod
Future<List<MidaEvent>> filteredEvents(Ref ref) async {
  List<MidaEvent> events = await ref.watch(cachedEventsProvider.future);
  final registered = await ref.watch(cachedRegisteredProvider.future);

  final filterSettings = ref.watch(filterProvider);

  final searchText = ref.watch(filterTextProvider);

  if (filterSettings.onlyRegistered) {
    events =
        events.where((element) => registered.contains(element.id)).toList();
  }

  if (filterSettings.hideGremien) {
    // Natürlich nur in MuF Gremiensitzung = typ 100
    events = events.where((element) => element.type != 100).toList();
  }

  events = events
      .where(
        (element) =>
            filterSettings.showOrganizer[element.organization ?? "Unbekannt"] ??
            true,
      )
      .toList();

  final filterDateTimeRange = filterSettings.dateTimeRange;
  if (filterDateTimeRange != null) {
    events = events.where((element) {
      DateTime start = filterSettings.dateTimeRange!.start;
      // Aktionen am Endtag sollen inkludiert sein
      DateTime end = filterDateTimeRange.end.add(const Duration(days: 1));
      return element.endDateAndTime.isAfter(start) &&
          element.startDateAndTime.isBefore(end);
    }).toList();
  }

  if (searchText.isNotEmpty) {
    events = events.where((element) {
      return element.title.toLowerCase().contains(searchText) ||
          (element.location?.toLowerCase().contains(searchText) ?? false) ||
          (element.organization?.toLowerCase().contains(searchText) ?? false);
    }).toList();
  }

  return events;
}
