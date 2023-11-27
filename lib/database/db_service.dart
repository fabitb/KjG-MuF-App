import 'package:isar/isar.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:path_provider/path_provider.dart';

import 'model/game_model.dart';

const NEWEST_DATABASE_VERSION = 1;

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

  Future<int> deleteGames(List<int> gameIds) async {
    final isar = await db;
    return await isar
        .writeTxn(() async => await isar.gameModels.deleteAll(gameIds));
  }

  Future<void> _performMigrationIfNeeded(Isar isar) async {
    final currentDatabaseVersion = await SharedPref().getDatabaseVersion();

    switch (currentDatabaseVersion) {
      case null:
        _migrateV1ToV2(isar);
        break;
      case NEWEST_DATABASE_VERSION:
        return;
      default:
        throw Exception('Unknown database version: $currentDatabaseVersion');
    }

    // Update version
    await SharedPref().setDatabaseVersion(NEWEST_DATABASE_VERSION);
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      Isar isar = await Isar.open([GameModelSchema],
          directory: dir.path, inspector: true);
      await _performMigrationIfNeeded(isar);
      return isar;
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> _migrateV1ToV2(Isar isar) async {
    await isar.writeTxn<void>(() async => await isar.clear());
  }
}
