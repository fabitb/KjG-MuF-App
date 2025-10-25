// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Games)
const gamesProvider = GamesProvider._();

final class GamesProvider extends $AsyncNotifierProvider<Games, List<Game>> {
  const GamesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'gamesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gamesHash();

  @$internal
  @override
  Games create() => Games();
}

String _$gamesHash() => r'30a21280c8bf386d260cc7f69076e69e91efcb84';

abstract class _$Games extends $AsyncNotifier<List<Game>> {
  FutureOr<List<Game>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Game>>, List<Game>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Game>>, List<Game>>,
        AsyncValue<List<Game>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(cachedGames)
const cachedGamesProvider = CachedGamesProvider._();

final class CachedGamesProvider extends $FunctionalProvider<
        AsyncValue<List<Game>>, List<Game>, FutureOr<List<Game>>>
    with $FutureModifier<List<Game>>, $FutureProvider<List<Game>> {
  const CachedGamesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cachedGamesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cachedGamesHash();

  @$internal
  @override
  $FutureProviderElement<List<Game>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Game>> create(Ref ref) {
    return cachedGames(ref);
  }
}

String _$cachedGamesHash() => r'c7a9ee30d30a4c19e25c96755f11e382ac750c6d';

@ProviderFor(filteredGames)
const filteredGamesProvider = FilteredGamesProvider._();

final class FilteredGamesProvider extends $FunctionalProvider<
        AsyncValue<List<Game>>, List<Game>, FutureOr<List<Game>>>
    with $FutureModifier<List<Game>>, $FutureProvider<List<Game>> {
  const FilteredGamesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredGamesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredGamesHash();

  @$internal
  @override
  $FutureProviderElement<List<Game>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Game>> create(Ref ref) {
    return filteredGames(ref);
  }
}

String _$filteredGamesHash() => r'e7b9841634ea9365f674414dbf6294b6ee9da3fd';

@ProviderFor(gameById)
const gameByIdProvider = GameByIdFamily._();

final class GameByIdProvider
    extends $FunctionalProvider<AsyncValue<Game?>, Game?, FutureOr<Game?>>
    with $FutureModifier<Game?>, $FutureProvider<Game?> {
  const GameByIdProvider._(
      {required GameByIdFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'gameByIdProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gameByIdHash();

  @override
  String toString() {
    return r'gameByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Game?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Game?> create(Ref ref) {
    final argument = this.argument as String;
    return gameById(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gameByIdHash() => r'9d94c9a1623a30747de2facd51f6a2f5ba280cf8';

final class GameByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Game?>, String> {
  const GameByIdFamily._()
      : super(
          retry: null,
          name: r'gameByIdProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  GameByIdProvider call(
    String id,
  ) =>
      GameByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'gameByIdProvider';
}
