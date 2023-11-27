import 'package:flutter/cupertino.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/repository/game_repository.dart';

import '../model/game_filter.dart';

class GameDatabaseViewModel extends ChangeNotifier {
  List<GameModel>? _games;
  List<GameModel>? get games => _games;

  List<GameModel>? get filteredGames {
    return _games
        ?.where((game) => !(filter.hideAlreadyPlayed && game.alreadyPlayed))
        .where((game) =>
            game.title.toLowerCase().contains(filter.searchTerm.toLowerCase()))
        .toList()
      ?..sort((a, b) => a.title.compareTo(b.title));
  }

  GameFilter _filter = GameFilter();
  GameFilter get filter => _filter;

  GameDatabaseViewModel() {
    loadGames();
  }

  void setGameFilter(GameFilter newFilter) {
    _filter = newFilter;
    notifyListeners();
  }

  Future<void> updatedPlayedGame(GameModel game, bool played) async {
    _games = await GameRepository().saveGame(game..alreadyPlayed = played);
    notifyListeners();
  }

  Future<void> resetPlayedGames() async {
    _games = await GameRepository().resetPlayedGames();
    notifyListeners();
  }

  Future<void> loadGames() async {
    GameRepository().getGames((games) {
      _games = games;
      notifyListeners();
    });
  }
}
