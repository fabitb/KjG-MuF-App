// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cachedEventsHash() => r'd1523c316acf7bdef7923cdc647fa52b40fcf162';

/// See also [cachedEvents].
@ProviderFor(cachedEvents)
final cachedEventsProvider = AutoDisposeFutureProvider<List<Event>>.internal(
  cachedEvents,
  name: r'cachedEventsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cachedEventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CachedEventsRef = AutoDisposeFutureProviderRef<List<Event>>;
String _$filteredEventsHash() => r'f161d8229ce6f0a56b0065679d9c054266ba11cc';

/// See also [filteredEvents].
@ProviderFor(filteredEvents)
final filteredEventsProvider = AutoDisposeFutureProvider<List<Event>>.internal(
  filteredEvents,
  name: r'filteredEventsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredEventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredEventsRef = AutoDisposeFutureProviderRef<List<Event>>;
String _$eventListHash() => r'b9dddf71f3ecd9f81ae50dc39b08f3d7057e8434';

/// See also [EventList].
@ProviderFor(EventList)
final eventListProvider =
    AutoDisposeAsyncNotifierProvider<EventList, List<Event>>.internal(
  EventList.new,
  name: r'eventListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventList = AutoDisposeAsyncNotifier<List<Event>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
