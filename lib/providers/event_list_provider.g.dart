// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredEventsHash() => r'4d8109e5fb99fdf56d379475b59db4d0fb2525e5';

/// See also [filteredEvents].
@ProviderFor(filteredEvents)
final filteredEventsProvider =
    AutoDisposeFutureProvider<List<EventModel>>.internal(
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
typedef FilteredEventsRef = AutoDisposeFutureProviderRef<List<EventModel>>;
String _$eventListHash() => r'cf18534f645c5a72e642dbe80f1b6541d528ea89';

/// See also [EventList].
@ProviderFor(EventList)
final eventListProvider =
    AutoDisposeAsyncNotifierProvider<EventList, List<EventModel>>.internal(
  EventList.new,
  name: r'eventListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventList = AutoDisposeAsyncNotifier<List<EventModel>>;
String _$registeredHash() => r'08587ea0a7b12d2d4908aa073bc29a21d4db0aa4';

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
  late final EventModel event;

  bool build(
    EventModel event,
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
    EventModel event,
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
    EventModel event,
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

  final EventModel event;

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
  EventModel get event;
}

class _RegisteredProviderElement
    extends AutoDisposeNotifierProviderElement<Registered, bool>
    with RegisteredRef {
  _RegisteredProviderElement(super.provider);

  @override
  EventModel get event => (origin as RegisteredProvider).event;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
