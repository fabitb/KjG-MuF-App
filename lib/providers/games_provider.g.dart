// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Games)
const gamesProvider = GamesProvider._();

final class GamesProvider
    extends $AsyncNotifierProvider<Games, List<GameModel>> {
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

String _$gamesHash() => r'1a63aa63f5fde8538f67e2cd16c067cfeae40bd1';

abstract class _$Games extends $AsyncNotifier<List<GameModel>> {
  FutureOr<List<GameModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<GameModel>>, List<GameModel>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<GameModel>>, List<GameModel>>,
        AsyncValue<List<GameModel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(cachedGames)
const cachedGamesProvider = CachedGamesProvider._();

final class CachedGamesProvider extends $FunctionalProvider<
        AsyncValue<List<GameModel>>, List<GameModel>, FutureOr<List<GameModel>>>
    with $FutureModifier<List<GameModel>>, $FutureProvider<List<GameModel>> {
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
  $FutureProviderElement<List<GameModel>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<GameModel>> create(Ref ref) {
    return cachedGames(ref);
  }
}

String _$cachedGamesHash() => r'987d7b1bc6c052fca8d7436f8e3cc216885f717b';

@ProviderFor(filteredGames)
const filteredGamesProvider = FilteredGamesProvider._();

final class FilteredGamesProvider extends $FunctionalProvider<
        AsyncValue<List<GameModel>>, List<GameModel>, FutureOr<List<GameModel>>>
    with $FutureModifier<List<GameModel>>, $FutureProvider<List<GameModel>> {
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
  $FutureProviderElement<List<GameModel>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<GameModel>> create(Ref ref) {
    return filteredGames(ref);
  }
}

String _$filteredGamesHash() => r'a2d52fe613020361a6e3213d78dbf51a440caf55';

@ProviderFor(gameById)
const gameByIdProvider = GameByIdFamily._();

final class GameByIdProvider extends $FunctionalProvider<AsyncValue<GameModel?>,
        GameModel?, FutureOr<GameModel?>>
    with $FutureModifier<GameModel?>, $FutureProvider<GameModel?> {
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
  $FutureProviderElement<GameModel?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GameModel?> create(Ref ref) {
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

String _$gameByIdHash() => r'00ead54465794dadc6ccfc6186f37f3ec318b7d8';

final class GameByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<GameModel?>, String> {
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
