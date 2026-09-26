// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cachedRegistered)
final cachedRegisteredProvider = CachedRegisteredProvider._();

final class CachedRegisteredProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<int>>,
          List<int>,
          FutureOr<List<int>>
        >
    with $FutureModifier<List<int>>, $FutureProvider<List<int>> {
  CachedRegisteredProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cachedRegisteredProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cachedRegisteredHash();

  @$internal
  @override
  $FutureProviderElement<List<int>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<int>> create(Ref ref) {
    return cachedRegistered(ref);
  }
}

String _$cachedRegisteredHash() => r'bf7e866f9204d2ca4900b6ff7c064ab73b8a4b4e';

@ProviderFor(RegisteredList)
final registeredListProvider = RegisteredListProvider._();

final class RegisteredListProvider
    extends $AsyncNotifierProvider<RegisteredList, List<int>> {
  RegisteredListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registeredListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registeredListHash();

  @$internal
  @override
  RegisteredList create() => RegisteredList();
}

String _$registeredListHash() => r'8dbd553594cef23f41de3e40a61bcc8a4f973997';

abstract class _$RegisteredList extends $AsyncNotifier<List<int>> {
  FutureOr<List<int>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<int>>, List<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<int>>, List<int>>,
              AsyncValue<List<int>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(eventRegistered)
final eventRegisteredProvider = EventRegisteredFamily._();

final class EventRegisteredProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  EventRegisteredProvider._({
    required EventRegisteredFamily super.from,
    required MidaEvent super.argument,
  }) : super(
         retry: null,
         name: r'eventRegisteredProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventRegisteredHash();

  @override
  String toString() {
    return r'eventRegisteredProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as MidaEvent;
    return eventRegistered(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EventRegisteredProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventRegisteredHash() => r'0aa7dd34777cb81e359029b0a9a6d82e5951939a';

final class EventRegisteredFamily extends $Family
    with $FunctionalFamilyOverride<bool, MidaEvent> {
  EventRegisteredFamily._()
    : super(
        retry: null,
        name: r'eventRegisteredProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventRegisteredProvider call(MidaEvent event) =>
      EventRegisteredProvider._(argument: event, from: this);

  @override
  String toString() => r'eventRegisteredProvider';
}
