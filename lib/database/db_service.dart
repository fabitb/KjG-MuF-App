import 'package:kjg_muf_app/database/app_database.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';
import 'package:kjg_muf_app/database/model/registered.dart';

class DBService {
  static final DBService instance = DBService._internal();

  late AppDatabase db;

  factory DBService() {
    return instance;
  }

  DBService._internal() {
    db = AppDatabase();
  }

  Future<void> saveGame(Game newGame) async {
    return db.saveGame(
      GamesCompanion.insert(
        id: newGame.id,
        title: newGame.title,
        actionScore: newGame.actionScore,
        cognitiveScore: newGame.cognitiveScore,
        numberOfPlayers: newGame.numberOfPlayer,
        duration: newGame.duration,
        ageLimitations: newGame.ageLimitations ?? '',
        spaceLimitations: newGame.spaceLimitations,
        materials: newGame.materials,
        goalOfGame: newGame.goalOfGame,
        preparationsInstructions: newGame.preparationsInstructions,
        gameplayInstructions: newGame.gameplayInstructions,
        endingInstructions: newGame.endingInstructions,
        categories: newGame.categories.join(','),
        author: newGame.author,
        reviewed: newGame.reviewed,
        alreadyPlayed: newGame.alreadyPlayed,
      ),
    );
  }

  Future<List<int>> saveGames(List<Game> newGames) async {
    return db.saveGames(newGames);
  }

  Future<List<Game>> getAllGames() async {
    return db.getAllGames();
  }

  Future<void> resetPlayedGames() async {
    return db.resetPlayedGames();
  }

  Future<List<MidaEvent>> getCachedEvents() async {
    return db.getCachedEvents();
  }

  Future<void> cacheEvents(List<MidaEvent> events) async {
    return db.cacheEvents(events);
  }

  Future<List<Registered>> getCachedRegistered() async {
    return db.getCachedRegistered();
  }

  Future<void> cacheRegistered(List<Registered> registered) async {
    return db.cacheRegistered(registered);
  }

  Future<List<NewsModel>> getCachedNews() async {
    return db.getCachedNews();
  }

  Future<void> cacheNews(List<NewsModel> news) async {
    return db.cacheNews(news);
  }

  Future<List<ActivitiesModel>> getCachedActivities() async {
    return db.getCachedActivities();
  }

  Future<void> cacheActivities(List<ActivitiesModel> activities) async {
    return db.cacheActivities(activities);
  }
}
