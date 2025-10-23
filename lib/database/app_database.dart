import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/registered.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';

part 'app_database.g.dart';

// Games table
class Games extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  IntColumn get actionScore => integer()();
  IntColumn get cognitiveScore => integer()();
  TextColumn get numberOfPlayers => text()();
  TextColumn get duration => text()();
  TextColumn get ageLimitations => text()();
  TextColumn get spaceLimitations => text()();
  TextColumn get materials => text()();
  TextColumn get goalOfGame => text()();
  TextColumn get preparationsInstructions => text()();
  TextColumn get gameplayInstructions => text()();
  TextColumn get endingInstructions => text()();
  TextColumn get categories => text()(); // JSON string of List<String>
  TextColumn get author => text()();
  BoolColumn get reviewed => boolean()();
  BoolColumn get alreadyPlayed => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

// Events table
class Events extends Table {
  IntColumn get id => integer()();
  IntColumn get clientId => integer().nullable()();
  DateTimeColumn get startDateAndTime => dateTime()();
  DateTimeColumn get endDateAndTime => dateTime()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get location => text().nullable()();
  IntColumn get groupId => integer().nullable()();
  TextColumn get time => text().nullable()();
  IntColumn get numberOfDays => integer().nullable()();
  TextColumn get contactName => text().nullable()();
  TextColumn get contactEmail => text().nullable()();
  IntColumn get maxParticipants => integer().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get attachments =>
      text().nullable()(); // JSON string of List<String>
  RealColumn get costMember => real().nullable()();
  RealColumn get costGuest => real().nullable()();
  RealColumn get costCompanion => real().nullable()();
  TextColumn get cost => text().nullable()();
  IntColumn get publicType => integer().nullable()();
  IntColumn get type => integer().nullable()();
  DateTimeColumn get registrationStart => dateTime().nullable()();
  DateTimeColumn get registrationDeadline => dateTime().nullable()();
  IntColumn get visibilityType => integer().nullable()();
  DateTimeColumn get deregistrationDeadline => dateTime().nullable()();
  IntColumn get maxCompanions => integer().nullable()();
  IntColumn get seriesEventId => integer().nullable()();
  IntColumn get visibilityAssociation => integer().nullable()();
  BoolColumn get rv => boolean().nullable()();
  TextColumn get abbreviation => text().nullable()();
  TextColumn get organization => text().nullable()();
  IntColumn get registrationCount => integer().nullable()();
  TextColumn get freeSlots => text().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get baseUrl => text()();
  TextColumn get clientEventId => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// Registered table
class RegisteredTable extends Table {
  IntColumn get eventId => integer()();

  @override
  Set<Column> get primaryKey => {eventId};

  @override
  String get tableName => 'registered';
}

// News table
class NewsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get content => text()();
  TextColumn get imageURL => text()();
  TextColumn get websiteURL => text()();
  IntColumn get orderNumber => integer()();

  @override
  String get tableName => 'news';
}

// Activities table
class ActivitiesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get content => text()();
  TextColumn get imageURL => text()();
  TextColumn get websiteURL => text()();
  IntColumn get orderNumber => integer()();

  @override
  String get tableName => 'activities';
}

@DriftDatabase(
    tables: [Games, Events, RegisteredTable, NewsTable, ActivitiesTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'kjg_muf_app_db');
  }

  // Games operations
  Future<void> saveGame(GamesCompanion game) {
    return into(games).insert(game, mode: InsertMode.insertOrReplace);
  }

  Future<List<int>> saveGames(List<GameModel> newGames) async {
    // Get existing games
    final existingGames = await select(games).get();
    final alreadyPlayedIds = existingGames
        .where((game) => game.alreadyPlayed)
        .map((game) => game.id)
        .toSet();

    // Clear all games
    await delete(games).go();

    // Filter and prepare new games
    final filteredNewGames =
        newGames.where((game) => game.reviewed).map((gameModel) {
      return GamesCompanion.insert(
        id: gameModel.id,
        title: gameModel.title,
        actionScore: gameModel.actionScore,
        cognitiveScore: gameModel.cognitiveScore,
        numberOfPlayers: gameModel.numberOfPlayers,
        duration: gameModel.duration,
        ageLimitations: gameModel.ageLimitations,
        spaceLimitations: gameModel.spaceLimitations,
        materials: gameModel.materials,
        goalOfGame: gameModel.goalOfGame,
        preparationsInstructions: gameModel.preparationsInstructions,
        gameplayInstructions: gameModel.gameplayInstructions,
        endingInstructions: gameModel.endingInstructions,
        categories: gameModel.categories.join(','),
        author: gameModel.author,
        reviewed: gameModel.reviewed,
        alreadyPlayed: alreadyPlayedIds.contains(gameModel.id),
      );
    }).toList();

    // Insert all games
    await batch((batch) {
      batch.insertAll(games, filteredNewGames);
    });

    return filteredNewGames
        .map((e) => 1)
        .toList(); // Return dummy list for compatibility
  }

  Future<List<GameModel>> getAllGames() async {
    final results = await select(games).get();
    return results.map(_gameRowToModel).toList();
  }

  Future<void> resetPlayedGames() async {
    await (update(games)..where((g) => g.alreadyPlayed.equals(true)))
        .write(const GamesCompanion(alreadyPlayed: Value(false)));
  }

  // Events operations
  Future<List<MidaEvent>> getCachedEvents() async {
    final results = await (select(events)
          ..orderBy([(e) => OrderingTerm.asc(e.startDateAndTime)]))
        .get();
    return results.map(_eventRowToModel).toList();
  }

  Future<void> cacheEvents(List<MidaEvent> eventsList) async {
    await delete(events).go();
    await batch((batch) {
      batch.insertAll(
        events,
        eventsList.map((e) => _eventModelToCompanion(e)).toList(),
      );
    });
  }

  // Registered operations
  Future<List<Registered>> getCachedRegistered() async {
    final results = await select(registeredTable).get();
    return results.map((r) => Registered(eventId: r.eventId)).toList();
  }

  Future<void> cacheRegistered(List<Registered> registeredList) async {
    await delete(registeredTable).go();
    await batch((batch) {
      batch.insertAll(
        registeredTable,
        registeredList
            .map((r) =>
                RegisteredTableCompanion.insert(eventId: Value(r.eventId)))
            .toList(),
      );
    });
  }

  // News operations
  Future<List<NewsModel>> getCachedNews() async {
    final results = await select(newsTable).get();
    return results.map(_newsRowToModel).toList();
  }

  Future<void> cacheNews(List<NewsModel> newsList) async {
    await delete(newsTable).go();
    await batch((batch) {
      batch.insertAll(
        newsTable,
        newsList.map((n) => _newsModelToCompanion(n)).toList(),
      );
    });
  }

  // Activities operations
  Future<List<ActivitiesModel>> getCachedActivities() async {
    final results = await select(activitiesTable).get();
    return results.map(_activitiesRowToModel).toList();
  }

  Future<void> cacheActivities(List<ActivitiesModel> activitiesList) async {
    await delete(activitiesTable).go();
    await batch((batch) {
      batch.insertAll(
        activitiesTable,
        activitiesList.map((a) => _activitiesModelToCompanion(a)).toList(),
      );
    });
  }

  // Helper converters
  GameModel _gameRowToModel(Game game) {
    return GameModel(
      id: game.id,
      title: game.title,
      actionScore: game.actionScore,
      cognitiveScore: game.cognitiveScore,
      numberOfPlayers: game.numberOfPlayers,
      duration: game.duration,
      ageLimitations: game.ageLimitations,
      spaceLimitations: game.spaceLimitations,
      materials: game.materials,
      goalOfGame: game.goalOfGame,
      preparationsInstructions: game.preparationsInstructions,
      gameplayInstructions: game.gameplayInstructions,
      endingInstructions: game.endingInstructions,
      categories:
          game.categories.split(',').where((c) => c.isNotEmpty).toList(),
      author: game.author,
      reviewed: game.reviewed,
      alreadyPlayed: game.alreadyPlayed,
    );
  }

  MidaEvent _eventRowToModel(Event event) {
    return MidaEvent(
      id: event.id,
      clientId: event.clientId,
      startDateAndTime: event.startDateAndTime,
      endDateAndTime: event.endDateAndTime,
      title: event.title,
      description: event.description,
      location: event.location,
      groupId: event.groupId,
      time: event.time,
      numberOfDays: event.numberOfDays,
      contactName: event.contactName,
      contactEmail: event.contactEmail,
      maxParticipants: event.maxParticipants,
      image: event.image,
      attachments:
          event.attachments?.split(',').where((a) => a.isNotEmpty).toList(),
      costMember: event.costMember,
      costGuest: event.costGuest,
      costCompanion: event.costCompanion,
      cost: event.cost,
      publicType: event.publicType,
      type: event.type,
      registrationStart: event.registrationStart,
      registrationDeadline: event.registrationDeadline,
      visibilityType: event.visibilityType,
      deregistrationDeadline: event.deregistrationDeadline,
      maxCompanions: event.maxCompanions,
      seriesEventId: event.seriesEventId,
      visibilityAssociation: event.visibilityAssociation,
      rv: event.rv,
      abbreviation: event.abbreviation,
      organization: event.organization,
      registrationCount: event.registrationCount,
      freeSlots: event.freeSlots,
      link: event.link,
      baseUrl: event.baseUrl,
      clientEventId: event.clientEventId,
    );
  }

  EventsCompanion _eventModelToCompanion(MidaEvent event) {
    return EventsCompanion.insert(
      id: Value(event.id),
      clientId: Value(event.clientId),
      startDateAndTime: event.startDateAndTime,
      endDateAndTime: event.endDateAndTime,
      title: event.title,
      description: Value(event.description),
      location: Value(event.location),
      groupId: Value(event.groupId),
      time: Value(event.time),
      numberOfDays: Value(event.numberOfDays),
      contactName: Value(event.contactName),
      contactEmail: Value(event.contactEmail),
      maxParticipants: Value(event.maxParticipants),
      image: Value(event.image),
      attachments: Value(event.attachments?.join(',')),
      costMember: Value(event.costMember),
      costGuest: Value(event.costGuest),
      costCompanion: Value(event.costCompanion),
      cost: Value(event.cost),
      publicType: Value(event.publicType),
      type: Value(event.type),
      registrationStart: Value(event.registrationStart),
      registrationDeadline: Value(event.registrationDeadline),
      visibilityType: Value(event.visibilityType),
      deregistrationDeadline: Value(event.deregistrationDeadline),
      maxCompanions: Value(event.maxCompanions),
      seriesEventId: Value(event.seriesEventId),
      visibilityAssociation: Value(event.visibilityAssociation),
      rv: Value(event.rv),
      abbreviation: Value(event.abbreviation),
      organization: Value(event.organization),
      registrationCount: Value(event.registrationCount),
      freeSlots: Value(event.freeSlots),
      link: Value(event.link),
      baseUrl: event.baseUrl,
      clientEventId: Value(event.clientEventId),
    );
  }

  NewsModel _newsRowToModel(NewsTableData news) {
    return NewsModel()
      ..title = news.title
      ..content = news.content
      ..imageURL = news.imageURL
      ..websiteURL = news.websiteURL
      ..orderNumber = news.orderNumber;
  }

  NewsTableCompanion _newsModelToCompanion(NewsModel news) {
    return NewsTableCompanion.insert(
      title: news.title,
      content: news.content,
      imageURL: news.imageURL,
      websiteURL: news.websiteURL,
      orderNumber: news.orderNumber,
    );
  }

  ActivitiesModel _activitiesRowToModel(ActivitiesTableData activity) {
    return ActivitiesModel()
      ..title = activity.title
      ..content = activity.content
      ..imageURL = activity.imageURL
      ..websiteURL = activity.websiteURL
      ..orderNumber = activity.orderNumber;
  }

  ActivitiesTableCompanion _activitiesModelToCompanion(
      ActivitiesModel activity) {
    return ActivitiesTableCompanion.insert(
      title: activity.title,
      content: activity.content,
      imageURL: activity.imageURL,
      websiteURL: activity.websiteURL,
      orderNumber: activity.orderNumber,
    );
  }
}
