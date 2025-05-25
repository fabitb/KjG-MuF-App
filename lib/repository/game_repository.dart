import 'package:collection/collection.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';

import '../backend/backend_service.dart';
import '../database/db_service.dart';

class GameRepository {
  DBService dbService = DBService();
  BackendService backendService = BackendService();

  GameRepository();

  Future<List<GameModel>> saveGame(GameModel updatedGame) async {
    await dbService.saveGame(updatedGame);
    return await dbService.getAllGames();
  }

  Future<List<GameModel>> resetPlayedGames() async {
    List<GameModel> games = await dbService.getAllGames();
    for (var game in games) {
      game.alreadyPlayed = false;
    }
    await dbService.saveGames(games);
    return dbService.getAllGames();
  }

  Stream<List<GameModel>> getGames() async* {
    var databaseGames = await dbService.getAllGames();
    yield databaseGames;

    var backendGames = (await backendService.getGames()).map((e) => GameModel.fromGame(e)).toList();

    for (var dbGame in databaseGames) {
      backendGames.firstWhereOrNull((backendGame) => backendGame.id == dbGame.id)?.alreadyPlayed = dbGame.alreadyPlayed;
    }

    await dbService.saveGames(backendGames);
    yield backendGames;
  }
}
