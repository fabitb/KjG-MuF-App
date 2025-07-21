import 'package:kjg_muf_app/backend/backend_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';

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

  Future<List<GameModel>> getGames({bool showReviewed = true}) async {
    var backendGames =
        (await backendService.getGames(showReviewedGames: showReviewed))
            .map((e) => GameModel.fromGame(e))
            .toList();
    return backendGames;
  }

/*Stream<List<GameModel>> getGames({bool showReviewed = true}) async* {
    */ /*var databaseGames = await dbService.getAllGames();
    yield databaseGames;*/ /*

    var backendGames = (await backendService.getGames(showReviewedGames: showReviewed)).map((e) => GameModel.fromGame(e)).toList();
    */ /*
    for (var dbGame in databaseGames) {
      backendGames.where((backendGame) => backendGame.id == dbGame.id).firstOrNull?.alreadyPlayed = dbGame.alreadyPlayed;
    }*/ /*

    //var backendGames = await backendService.getGames(showReviewedGames: showReviewed);//dbService.saveGames(backendGames);
    yield backendGames;
  }*/
}
