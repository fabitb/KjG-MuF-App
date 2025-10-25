// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cachedEvents)
const cachedEventsProvider = CachedEventsProvider._();

final class CachedEventsProvider extends $FunctionalProvider<
        AsyncValue<List<MidaEvent>>, List<MidaEvent>, FutureOr<List<MidaEvent>>>
    with $FutureModifier<List<MidaEvent>>, $FutureProvider<List<MidaEvent>> {
  const CachedEventsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cachedEventsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cachedEventsHash();

  @$internal
  @override
  $FutureProviderElement<List<MidaEvent>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<MidaEvent>> create(Ref ref) {
    return cachedEvents(ref);
  }
}

String _$cachedEventsHash() => r'46c6139312dfbc8058ae08133e6f3dfb56daf800';

@ProviderFor(EventList)
const eventListProvider = EventListProvider._();

final class EventListProvider
    extends $AsyncNotifierProvider<EventList, List<MidaEvent>> {
  const EventListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'eventListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$eventListHash();

  @$internal
  @override
  EventList create() => EventList();
}

String _$eventListHash() => r'e8edb879de7850777a9a59626371abc6fb7cf857';

abstract class _$EventList extends $AsyncNotifier<List<MidaEvent>> {
  FutureOr<List<MidaEvent>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<MidaEvent>>, List<MidaEvent>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<MidaEvent>>, List<MidaEvent>>,
        AsyncValue<List<MidaEvent>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(filteredEvents)
const filteredEventsProvider = FilteredEventsProvider._();

final class FilteredEventsProvider extends $FunctionalProvider<
        AsyncValue<List<MidaEvent>>, List<MidaEvent>, FutureOr<List<MidaEvent>>>
    with $FutureModifier<List<MidaEvent>>, $FutureProvider<List<MidaEvent>> {
  const FilteredEventsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredEventsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredEventsHash();

  @$internal
  @override
  $FutureProviderElement<List<MidaEvent>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<MidaEvent>> create(Ref ref) {
    return filteredEvents(ref);
  }
}

String _$filteredEventsHash() => r'b70251ae6f9d1c0e4b942b7874667ff02a4c30c6';
