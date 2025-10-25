// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GamesFilter)
const gamesFilterProvider = GamesFilterProvider._();

final class GamesFilterProvider
    extends $NotifierProvider<GamesFilter, GamesFilterSettings> {
  const GamesFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'gamesFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gamesFilterHash();

  @$internal
  @override
  GamesFilter create() => GamesFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GamesFilterSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GamesFilterSettings>(value),
    );
  }
}

String _$gamesFilterHash() => r'9d7931dfb5887c4df95095bf498c10b498ee5db0';

abstract class _$GamesFilter extends $Notifier<GamesFilterSettings> {
  GamesFilterSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GamesFilterSettings, GamesFilterSettings>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<GamesFilterSettings, GamesFilterSettings>,
        GamesFilterSettings,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GamesFilterText)
const gamesFilterTextProvider = GamesFilterTextProvider._();

final class GamesFilterTextProvider
    extends $NotifierProvider<GamesFilterText, String> {
  const GamesFilterTextProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'gamesFilterTextProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gamesFilterTextHash();

  @$internal
  @override
  GamesFilterText create() => GamesFilterText();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$gamesFilterTextHash() => r'c659646a62ce14182b9bca13b62523a12335cf90';

abstract class _$GamesFilterText extends $Notifier<String> {
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
