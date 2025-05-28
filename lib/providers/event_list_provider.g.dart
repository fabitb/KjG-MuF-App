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
String _$filteredEventsHash() => r'3937ab6c236ceaabb91bb883e2608588b37fa644';

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
String _$eventListHash() => r'b1d48167da8cff21e28e16838850d74329495172';

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
String _$registeredHash() => r'b202b18cac2bef93c848107edfb5887317ec98ed';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Registered extends BuildlessAutoDisposeNotifier<bool> {
  late final Event event;

  bool build(
    Event event,
  );
}

/// See also [Registered].
@ProviderFor(Registered)
const registeredProvider = RegisteredFamily();

/// See also [Registered].
class RegisteredFamily extends Family<bool> {
  /// See also [Registered].
  const RegisteredFamily();

  /// See also [Registered].
  RegisteredProvider call(
    Event event,
  ) {
    return RegisteredProvider(
      event,
    );
  }

  @override
  RegisteredProvider getProviderOverride(
    covariant RegisteredProvider provider,
  ) {
    return call(
      provider.event,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'registeredProvider';
}

/// See also [Registered].
class RegisteredProvider
    extends AutoDisposeNotifierProviderImpl<Registered, bool> {
  /// See also [Registered].
  RegisteredProvider(
    Event event,
  ) : this._internal(
          () => Registered()..event = event,
          from: registeredProvider,
          name: r'registeredProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registeredHash,
          dependencies: RegisteredFamily._dependencies,
          allTransitiveDependencies:
              RegisteredFamily._allTransitiveDependencies,
          event: event,
        );

  RegisteredProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.event,
  }) : super.internal();

  final Event event;

  @override
  bool runNotifierBuild(
    covariant Registered notifier,
  ) {
    return notifier.build(
      event,
    );
  }

  @override
  Override overrideWith(Registered Function() create) {
    return ProviderOverride(
      origin: this,
      override: RegisteredProvider._internal(
        () => create()..event = event,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        event: event,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Registered, bool> createElement() {
    return _RegisteredProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisteredProvider && other.event == event;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, event.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RegisteredRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `event` of this provider.
  Event get event;
}

class _RegisteredProviderElement
    extends AutoDisposeNotifierProviderElement<Registered, bool>
    with RegisteredRef {
  _RegisteredProviderElement(super.provider);

  @override
  Event get event => (origin as RegisteredProvider).event;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
