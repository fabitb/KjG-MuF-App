import 'package:isar/isar.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
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
    return isar.writeTxn<List<int>>(
        () async => await isar.gameModels.putAll(newGames));
  }

  Future<List<GameModel>> getAllGames() async {
    final isar = await db;
    return await isar.gameModels.where().findAll();
  }

  Future<List<Event>> getCachedEvents() async {
    final isar = await db;
    return await isar.events.where().sortByStartDateAndTime().findAll();
  }

  Future<void> cacheEvents(List<Event> events) async {
    final isar = await db;

    isar.writeTxn(() async {
      await isar.events.clear();
      await isar.events.putAll(events);
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

  Future<void> saveEvent(EventModel event) async {
    final isar = await db;
    isar.writeTxn(() => isar.eventModels.put(event));
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
          EventModelSchema,
          EventSchema,
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
