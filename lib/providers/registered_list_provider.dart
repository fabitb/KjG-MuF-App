import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'registered_list_provider.g.dart';

@riverpod
class RegisteredList extends _$RegisteredList {
  @override
  Future<List<int>> build() async {
    // trigger refresh on first start
    if (!state.hasValue) refresh();

    return []; // TODO: use DB as cache
  }

  Future<bool> refresh() async {
    final loggedIn = ref.read(authProvider) is AuthStateLoggedIn;

    print(loggedIn);
    if (!loggedIn) {
      state = AsyncData([]);
      return true;
    }

    final personalEvents = await MidaService().getFutureEventsPersonal();
    print(personalEvents);
    final ids = personalEvents
        .where((e) => e.registered)
        .map((e) => int.tryParse(e.eventID))
        .nonNulls
        .toList();
    print(ids);
    state = AsyncData(ids);

    // TODO: cache registered
    // ref.invalidateSelf();

    return true;
  }
}
