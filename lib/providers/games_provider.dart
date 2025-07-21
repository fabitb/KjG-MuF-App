import 'package:kjg_muf_app/backend/backend_service.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';
import 'package:kjg_muf_app/repository/game_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'games_provider.g.dart';

@riverpod
class Games extends _$Games {
  /*@override
  Stream<List<GameModel>> build() {
    final gamesFilter = ref.watch(gamesFilterProvider);
    return GameRepository().getGames(showReviewed: gamesFilter.showReviewed);
  }*/

  @override
  Future<List<GameModel>> build() {
    final gamesFilter = ref.watch(gamesFilterProvider);
    return GameRepository().getGames(showReviewed: gamesFilter.showReviewed);
  }

  void updatedPlayedGame(GameModel game, bool played) async {
    await GameRepository().saveGame(game..alreadyPlayed = played);
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
}
