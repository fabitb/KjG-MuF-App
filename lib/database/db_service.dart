import 'package:isar/isar.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';
import 'package:kjg_muf_app/database/model/registered.dart';
import 'package:path_provider/path_provider.dart';

class DBService {
  static final DBService instance = DBService._internal();

  late Future<Isar> db;

  factory DBService() {
    return instance;
  }

  DBService._internal() {
    db = openDB();
  }

  Future<void> saveGame(GameModel newGame) async {
    final isar = await db;
    return isar.writeTxn(() async => await isar.gameModels.put(newGame));
  }

  Future<List<int>> saveGames(List<GameModel> newGames) async {
    final isar = await db;

    return isar.writeTxn<List<int>>(() async {
      // Step 1: Fetch all existing games
      final existingGames = await isar.gameModels.where().findAll();

      // Step 2: Keep track of IDs of already played games
      final alreadyPlayedIds = existingGames
          .where((game) => game.alreadyPlayed)
          .map((game) => game.id)
          .toSet();

      // Step 3: Clear all existing games
      await isar.gameModels.clear();

      // Step 4: Prepare new games (only those that are reviewed)
      final filteredNewGames = newGames
          .where((game) => game.reviewed) // Keep only reviewed games
          .map((game) {
        // Restore the alreadyPlayed status if it was previously marked
        if (alreadyPlayedIds.contains(game.id)) {
          game.alreadyPlayed = true;
        }
        return game;
      }).toList();

      // Step 5: Save the new games to the database
      return await isar.gameModels.putAll(filteredNewGames);
    });
  }

  Future<List<GameModel>> getAllGames() async {
    final isar = await db;
    return await isar.gameModels.where().findAll();
  }

  Future<void> resetPlayedGames() async {
    final isar = await db;

    await isar.writeTxn(() async {
      final playedGames =
          await isar.gameModels.filter().alreadyPlayedEqualTo(true).findAll();

      for (final game in playedGames) {
        game.alreadyPlayed = false;
      }

      await isar.gameModels.putAll(playedGames);
    });
  }

  Future<List<MidaEvent>> getCachedEvents() async {
    final isar = await db;
    return await isar.midaEvents.where().sortByStartDateAndTime().findAll();
  }

  Future<void> cacheEvents(List<MidaEvent> events) async {
    final isar = await db;

    isar.writeTxn(() async {
      await isar.midaEvents.clear();
      await isar.midaEvents.putAll(events);
    });
  }

  Future<List<Registered>> getCachedRegistered() async {
    final isar = await db;
    return await isar.registereds.where().findAll();
  }

  Future<void> cacheRegistered(List<Registered> registered) async {
    final isar = await db;

    isar.writeTxn(() async {
      await isar.registereds.clear();
      await isar.registereds.putAll(registered);
    });
  }

  Future<List<NewsModel>> getCachedNews() async {
    final isar = await db;
    return await isar.newsModels.where().findAll();
  }

  Future<void> cacheNews(List<NewsModel> news) async {
    final isar = await db;
    isar.writeTxn(() => isar.newsModels.clear());
    isar.writeTxn(() => isar.newsModels.putAll(news));
  }

  Future<List<ActivitiesModel>> getCachedActivities() async {
    final isar = await db;
    return await isar.activitiesModels.where().findAll();
  }

  Future<void> cacheActivities(List<ActivitiesModel> activities) async {
    final isar = await db;
    isar.writeTxn(() => isar.activitiesModels.clear());
    isar.writeTxn(() => isar.activitiesModels.putAll(activities));
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          GameModelSchema,
          MidaEventSchema,
          RegisteredSchema,
          NewsModelSchema,
          ActivitiesModelSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
