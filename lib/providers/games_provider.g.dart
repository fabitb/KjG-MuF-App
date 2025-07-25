// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cachedGamesHash() => r'08e80fbf7c67c2597b53623e876dc73c4b2a6930';

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
String _$filteredGamesHash() => r'a2d52fe613020361a6e3213d78dbf51a440caf55';

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
String _$gameByIdHash() => r'00ead54465794dadc6ccfc6186f37f3ec318b7d8';

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

/// See also [gameById].
@ProviderFor(gameById)
const gameByIdProvider = GameByIdFamily();

/// See also [gameById].
class GameByIdFamily extends Family<AsyncValue<GameModel?>> {
  /// See also [gameById].
  const GameByIdFamily();

  /// See also [gameById].
  GameByIdProvider call(
    String id,
  ) {
    return GameByIdProvider(
      id,
    );
  }

  @override
  GameByIdProvider getProviderOverride(
    covariant GameByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'gameByIdProvider';
}

/// See also [gameById].
class GameByIdProvider extends AutoDisposeFutureProvider<GameModel?> {
  /// See also [gameById].
  GameByIdProvider(
    String id,
  ) : this._internal(
          (ref) => gameById(
            ref as GameByIdRef,
            id,
          ),
          from: gameByIdProvider,
          name: r'gameByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameByIdHash,
          dependencies: GameByIdFamily._dependencies,
          allTransitiveDependencies: GameByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GameByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<GameModel?> Function(GameByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GameByIdProvider._internal(
        (ref) => create(ref as GameByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GameModel?> createElement() {
    return _GameByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GameByIdRef on AutoDisposeFutureProviderRef<GameModel?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GameByIdProviderElement
    extends AutoDisposeFutureProviderElement<GameModel?> with GameByIdRef {
  _GameByIdProviderElement(super.provider);

  @override
  String get id => (origin as GameByIdProvider).id;
}

String _$gamesHash() => r'1a63aa63f5fde8538f67e2cd16c067cfeae40bd1';

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
