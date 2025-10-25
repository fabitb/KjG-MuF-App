import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/backend_service.dart';
import 'package:kjg_muf_app/database/app_database.dart';
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'games_provider.g.dart';

@riverpod
class Games extends _$Games {
  @override
  Future<List<Game>> build() async {
    final gamesFilter = ref.watch(gamesFilterProvider);

    final games = await BackendService()
        .getGames(showReviewedGames: gamesFilter.showReviewed);

    if (gamesFilter.showReviewed) {
      await AppDatabase().saveGames(games);
    }

    return games;
  }

  void updatedPlayedGame(Game game, bool played) async {
    await AppDatabase().saveGameModel(game.copyWith(alreadyPlayed: played));
    ref.notifyListeners();
  }

  Future<void> createGame(Game game) async {
    await BackendService().createGame(game);
  }

  Future<void> updateGame(Game game) async {
    await BackendService().updateGame(game);
    ref.invalidateSelf();
  }

  Future<void> setReviewStatus(String gameID, bool reviewed) async {
    await BackendService().setReviewStatus(gameID, reviewed);
    ref.invalidateSelf();
  }

  Future<void> deleteGame(String gameID) async {
    await BackendService().deleteGame(gameID);
    ref.invalidateSelf();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  Future<void> resetPlayedGames() async {
    await AppDatabase().resetPlayedGames();
    ref.invalidateSelf();
  }
}

@riverpod
Future<List<Game>> cachedGames(Ref ref) async {
  final online = ref.watch(gamesProvider);
  final filterSettings = ref.read(gamesFilterProvider);

  if (online.value case List<Game> gamesList) {
    if (!filterSettings.showReviewed) {
      return gamesList;
    }
  }

  return await AppDatabase().getAllGames();
}

@riverpod
Future<List<Game>> filteredGames(Ref ref) async {
  List<Game> games = await ref.watch(cachedGamesProvider.future);
  final gamesFilterSettings = ref.watch(gamesFilterProvider);
  final searchText = ref.watch(gamesFilterTextProvider);

  if (gamesFilterSettings.showOnlyUnplayed) {
    games = games.where((g) => !g.alreadyPlayed).toList();
  }

  RangeValues? actionRange = gamesFilterSettings.actionRange;
  if (actionRange != null) {
    games = games
        .where(
          (g) =>
              g.actionScore >= actionRange.start &&
              g.actionScore <= actionRange.end,
        )
        .toList();
  }

  RangeValues? thinkingRange = gamesFilterSettings.thinkingRange;
  if (thinkingRange != null) {
    games = games
        .where(
          (g) =>
              g.cognitiveScore >= thinkingRange.start &&
              g.cognitiveScore <= thinkingRange.end,
        )
        .toList();
  }

  if (searchText.isNotEmpty) {
    final lowerSearch = searchText.toLowerCase();

    games = games.where((element) {
      final titleMatch = element.title.toLowerCase().contains(lowerSearch);

      final categoryMatch = element.categories.any(
        (category) => category.toLowerCase().contains(lowerSearch),
      );

      return titleMatch || categoryMatch;
    }).toList();
  }

  games.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));

  return games;
}

@riverpod
Future<Game?> gameById(Ref ref, String id) async {
  final games = await ref.watch(cachedGamesProvider.future);
  return games.firstWhere(
    (game) => game.id == id,
  );
}
