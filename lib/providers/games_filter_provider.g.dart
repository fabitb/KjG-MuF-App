// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GamesFilter)
final gamesFilterProvider = GamesFilterProvider._();

final class GamesFilterProvider
    extends $NotifierProvider<GamesFilter, GamesFilterSettings> {
  GamesFilterProvider._()
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

String _$gamesFilterHash() => r'eb1d7ceb70724017ea33dde527e652a8cc71cf3b';

abstract class _$GamesFilter extends $Notifier<GamesFilterSettings> {
  GamesFilterSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GamesFilterSettings, GamesFilterSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GamesFilterSettings, GamesFilterSettings>,
              GamesFilterSettings,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(GamesFilterText)
final gamesFilterTextProvider = GamesFilterTextProvider._();

final class GamesFilterTextProvider
    extends $NotifierProvider<GamesFilterText, String> {
  GamesFilterTextProvider._()
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

String _$gamesFilterTextHash() => r'e14c6f22f5999a0c7c837500edbafbc434205b07';

abstract class _$GamesFilterText extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
