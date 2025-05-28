// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cachedEventsHash() => r'ef05505e3a0a436c541705f64471cc296a9badc3';

/// See also [cachedEvents].
@ProviderFor(cachedEvents)
final cachedEventsProvider =
    AutoDisposeFutureProvider<List<MidaEvent>>.internal(
  cachedEvents,
  name: r'cachedEventsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cachedEventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CachedEventsRef = AutoDisposeFutureProviderRef<List<MidaEvent>>;
String _$filteredEventsHash() => r'63f134f9d03072c4fa2c8a30cea93c150e4af27f';

/// See also [filteredEvents].
@ProviderFor(filteredEvents)
final filteredEventsProvider =
    AutoDisposeFutureProvider<List<MidaEvent>>.internal(
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
typedef FilteredEventsRef = AutoDisposeFutureProviderRef<List<MidaEvent>>;
String _$eventListHash() => r'0f108884da0a73661b6f63779deca39d46aafc4d';

/// See also [EventList].
@ProviderFor(EventList)
final eventListProvider =
    AutoDisposeAsyncNotifierProvider<EventList, List<MidaEvent>>.internal(
  EventList.new,
  name: r'eventListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventList = AutoDisposeAsyncNotifier<List<MidaEvent>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
