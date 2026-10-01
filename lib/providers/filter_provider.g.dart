// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Filter)
final filterProvider = FilterProvider._();

final class FilterProvider extends $NotifierProvider<Filter, FilterSettings> {
  FilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterHash();

  @$internal
  @override
  Filter create() => Filter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterSettings>(value),
    );
  }
}

String _$filterHash() => r'94e7dbeb0ece7e3ebfe16798edc8f29102fb8af1';

abstract class _$Filter extends $Notifier<FilterSettings> {
  FilterSettings build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<FilterSettings, FilterSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FilterSettings, FilterSettings>,
              FilterSettings,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(FilterText)
final filterTextProvider = FilterTextProvider._();

final class FilterTextProvider extends $NotifierProvider<FilterText, String> {
  FilterTextProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterTextProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterTextHash();

  @$internal
  @override
  FilterText create() => FilterText();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$filterTextHash() => r'3d2737c1ce943ab0ffcb0f46e275b1047d0cb5f8';

abstract class _$FilterText extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
