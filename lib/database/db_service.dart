import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'model/game_model.dart';

class DBService {
  late Future<Isar> db;

  DBService() {
    db = openDB();
  }

  Future<void> saveGame(GameModel newGame) async {
    final isar = await db;
    return isar.writeTxn(() async => await isar.gameModels.put(newGame));
  }

  Future<List<int>> saveGames(List<GameModel> newGames) async {
    final isar = await db;
    return isar.writeTxn<List<int>>(
        () async => await isar.gameModels.putAll(newGames));
  }

  Future<List<GameModel>> getAllGames() async {
    final isar = await db;
    return await isar.gameModels.where().findAll();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([GameModelSchema],
          directory: dir.path, inspector: true);
    }

    return Future.value(Isar.getInstance());
  }
}
