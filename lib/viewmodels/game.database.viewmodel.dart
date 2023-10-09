import 'package:flutter/cupertino.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/repository/game_repository.dart';

class GameDatabaseViewModel extends ChangeNotifier {
  List<GameModel>? _games;
  List<GameModel>? get games => _games;

  GameDatabaseViewModel() {
    loadGames();
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
