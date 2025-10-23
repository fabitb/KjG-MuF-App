import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/registered.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'registered_list_provider.g.dart';

@riverpod
Future<List<int>> cachedRegistered(Ref ref) async {
  final online = ref.watch(registeredListProvider);

  if (online.value case List<int> list) {
    return list;
  }
  return (await DBService().getCachedRegistered())
      .map((r) => r.eventId)
      .toList();
}

@riverpod
class RegisteredList extends _$RegisteredList {
  @override
  Future<List<int>> build() async {
    final loggedIn = ref.watch(authProvider) is AuthStateLoggedIn;

    if (!loggedIn) {
      await DBService().cacheRegistered([]);
      return [];
    }

    final personalEvents = await MidaService().getFutureEventsPersonal();
    final registeredIds = personalEvents
        .where((e) => e.registered)
        .map((e) => int.tryParse(e.eventID))
        .nonNulls
        .toList();
    await DBService().cacheRegistered(
      registeredIds.map((r) => Registered(eventId: r)).toList(),
    );

    return registeredIds;
  }
}

@riverpod
bool eventRegistered(Ref ref, MidaEvent event) {
  final registered = ref.watch(cachedRegisteredProvider);

  if (registered.value case List<int> value) {
    return value.contains(event.id);
  }
  return false;
}
