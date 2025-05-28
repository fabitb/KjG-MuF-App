// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cachedRegisteredHash() => r'510bc94000e1aa2a3451f1e9f8345ce186428080';

/// See also [cachedRegistered].
@ProviderFor(cachedRegistered)
final cachedRegisteredProvider = AutoDisposeFutureProvider<List<int>>.internal(
  cachedRegistered,
  name: r'cachedRegisteredProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cachedRegisteredHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CachedRegisteredRef = AutoDisposeFutureProviderRef<List<int>>;
String _$eventRegisteredHash() => r'a9a40ecb3e2b15cb18ddde67e60eac589d87798c';

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

/// See also [eventRegistered].
@ProviderFor(eventRegistered)
const eventRegisteredProvider = EventRegisteredFamily();

/// See also [eventRegistered].
class EventRegisteredFamily extends Family<bool> {
  /// See also [eventRegistered].
  const EventRegisteredFamily();

  /// See also [eventRegistered].
  EventRegisteredProvider call(
    Event event,
  ) {
    return EventRegisteredProvider(
      event,
    );
  }

  @override
  EventRegisteredProvider getProviderOverride(
    covariant EventRegisteredProvider provider,
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
  String? get name => r'eventRegisteredProvider';
}

/// See also [eventRegistered].
class EventRegisteredProvider extends AutoDisposeProvider<bool> {
  /// See also [eventRegistered].
  EventRegisteredProvider(
    Event event,
  ) : this._internal(
          (ref) => eventRegistered(
            ref as EventRegisteredRef,
            event,
          ),
          from: eventRegisteredProvider,
          name: r'eventRegisteredProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$eventRegisteredHash,
          dependencies: EventRegisteredFamily._dependencies,
          allTransitiveDependencies:
              EventRegisteredFamily._allTransitiveDependencies,
          event: event,
        );

  EventRegisteredProvider._internal(
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
  Override overrideWith(
    bool Function(EventRegisteredRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EventRegisteredProvider._internal(
        (ref) => create(ref as EventRegisteredRef),
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
  AutoDisposeProviderElement<bool> createElement() {
    return _EventRegisteredProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EventRegisteredProvider && other.event == event;
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
mixin EventRegisteredRef on AutoDisposeProviderRef<bool> {
  /// The parameter `event` of this provider.
  Event get event;
}

class _EventRegisteredProviderElement extends AutoDisposeProviderElement<bool>
    with EventRegisteredRef {
  _EventRegisteredProviderElement(super.provider);

  @override
  Event get event => (origin as EventRegisteredProvider).event;
}

String _$registeredListHash() => r'057973f72c9e8a67a251efcb2ed12099f8d3c3ec';

/// See also [RegisteredList].
@ProviderFor(RegisteredList)
final registeredListProvider =
    AutoDisposeAsyncNotifierProvider<RegisteredList, List<int>>.internal(
  RegisteredList.new,
  name: r'registeredListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registeredListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisteredList = AutoDisposeAsyncNotifier<List<int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
