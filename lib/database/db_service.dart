import 'package:isar/isar.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:path_provider/path_provider.dart';

class DBService {
  static final DBService _instance = DBService._internal();

  late Future<Isar> db;

  factory DBService() {
    return _instance;
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

  Future<List<EventModel>> getCachedEvents() async {
    final isar = await db;
    return await isar.eventModels.where().sortByStartDateAndTime().findAll();
  }

  Future<void> cacheEvents(List<EventModel> events) async {
    final isar = await db;
    isar.writeTxn(() => isar.eventModels.clear());
    isar.writeTxn(() => isar.eventModels.putAll(events));
  }

  Future<void> saveEvent(EventModel event) async {
    final isar = await db;
    isar.writeTxn(() => isar.eventModels.put(event));
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([GameModelSchema, EventModelSchema],
          directory: dir.path, inspector: true);
    }

    return Future.value(Isar.getInstance());
  }
}
