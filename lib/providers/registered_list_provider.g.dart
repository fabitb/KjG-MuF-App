// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cachedRegistered)
const cachedRegisteredProvider = CachedRegisteredProvider._();

final class CachedRegisteredProvider extends $FunctionalProvider<
        AsyncValue<List<int>>, List<int>, FutureOr<List<int>>>
    with $FutureModifier<List<int>>, $FutureProvider<List<int>> {
  const CachedRegisteredProvider._()
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

String _$cachedRegisteredHash() => r'8dbaeeb9dc735462db05aa4cdcda8cf04cbc71f8';

@ProviderFor(RegisteredList)
const registeredListProvider = RegisteredListProvider._();

final class RegisteredListProvider
    extends $AsyncNotifierProvider<RegisteredList, List<int>> {
  const RegisteredListProvider._()
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

String _$registeredListHash() => r'861f20b4ef356e32759f1d74d6af35260aea0f50';

abstract class _$RegisteredList extends $AsyncNotifier<List<int>> {
  FutureOr<List<int>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<int>>, List<int>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<int>>, List<int>>,
        AsyncValue<List<int>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(eventRegistered)
const eventRegisteredProvider = EventRegisteredFamily._();

final class EventRegisteredProvider
    extends $FunctionalProvider<bool, bool, bool> with $Provider<bool> {
  const EventRegisteredProvider._(
      {required EventRegisteredFamily super.from,
      required MidaEvent super.argument})
      : super(
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
    return eventRegistered(
      ref,
      argument,
    );
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
  const EventRegisteredFamily._()
      : super(
          retry: null,
          name: r'eventRegisteredProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  EventRegisteredProvider call(
    MidaEvent event,
  ) =>
      EventRegisteredProvider._(argument: event, from: this);

  @override
  String toString() => r'eventRegisteredProvider';
}
