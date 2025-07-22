// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cachedGamesHash() => r'64bf1dc035b5e348276aac30d36d51ab515d0691';

/// See also [cachedGames].
@ProviderFor(cachedGames)
final cachedGamesProvider = AutoDisposeFutureProvider<List<GameModel>>.internal(
  cachedGames,
  name: r'cachedGamesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cachedGamesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CachedGamesRef = AutoDisposeFutureProviderRef<List<GameModel>>;
String _$filteredGamesHash() => r'5c69e49e2366c77d48ab516a8792c28d773f7ce1';

/// See also [filteredGames].
@ProviderFor(filteredGames)
final filteredGamesProvider =
    AutoDisposeFutureProvider<List<GameModel>>.internal(
  filteredGames,
  name: r'filteredGamesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredGamesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredGamesRef = AutoDisposeFutureProviderRef<List<GameModel>>;
String _$gamesHash() => r'7e9dcc28e705ba208284b090bc53460e8bd53826';

/// See also [Games].
@ProviderFor(Games)
final gamesProvider =
    AutoDisposeAsyncNotifierProvider<Games, List<GameModel>>.internal(
  Games.new,
  name: r'gamesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gamesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Games = AutoDisposeAsyncNotifier<List<GameModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
