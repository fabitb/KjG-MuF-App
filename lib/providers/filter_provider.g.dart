// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Filter)
const filterProvider = FilterProvider._();

final class FilterProvider extends $NotifierProvider<Filter, FilterSettings> {
  const FilterProvider._()
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

String _$filterHash() => r'c5a9c320987b3eefa7d949948545723b646e6855';

abstract class _$Filter extends $Notifier<FilterSettings> {
  FilterSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FilterSettings, FilterSettings>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<FilterSettings, FilterSettings>,
        FilterSettings,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(FilterText)
const filterTextProvider = FilterTextProvider._();

final class FilterTextProvider extends $NotifierProvider<FilterText, String> {
  const FilterTextProvider._()
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

String _$filterTextHash() => r'731bbce588e7dbab8702bc4cfc8b55a5337c145e';

abstract class _$FilterText extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String, String>, String, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
