import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/providers/registered_list_provider.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@riverpod
Future<List<Event>> cachedEvents(Ref ref) async {
  final online = ref.watch(eventListProvider);

  if (online.valueOrNull case List<Event> list) {
    return list;
  }
  return await DBService().getCachedEvents();
}

@riverpod
class EventList extends _$EventList {
  @override
  Future<List<Event>> build() async {
    // trigger refresh on first start
    if (!state.hasValue) refresh();

    return await DBService().getCachedEvents();
  }

  Future<bool> refresh() async {
    final midaEvents = await MidaService().getEvents();
    if (midaEvents == null) return false;
    ref.read(registeredListProvider.notifier).refresh();

    await DBService().cacheEvents(midaEvents);

    final newIds = midaEvents.map((e) => e.id).toList();
    final toDelete =
        state.value?.where((e) => !newIds.contains(e.id)).toList() ?? [];

    for (var del in toDelete) {
      // delete cached attachments for old event
      del.attachments
          ?.map((a) => del.attachmentDownloadLink(a))
          .nonNulls
          .forEach((element) {
        KjGCacheManager.instance.removeFile(element);
      });

      // delete event image
      if (del.imageUrl case String imageUrl) {
        KjGCacheManager.instance.removeFile(imageUrl);
      }
    }

    ref.invalidateSelf();
    return true;
  }
}

@riverpod
Future<List<Event>> filteredEvents(Ref ref) async {
  List<Event> e = await ref.watch(eventListProvider.future);
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

@riverpod
class Registered extends _$Registered {
  @override
  bool build(Event event) {
    final registered = ref.watch(registeredListProvider);

    if (registered case AsyncData(:final valueOrNull?)) {
      return valueOrNull.contains(event.id);
    }
    return false;
  }
}
