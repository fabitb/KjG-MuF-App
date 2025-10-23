// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GamesTable extends Games with TableInfo<$GamesTable, Game> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _actionScoreMeta =
      const VerificationMeta('actionScore');
  @override
  late final GeneratedColumn<int> actionScore = GeneratedColumn<int>(
      'action_score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _cognitiveScoreMeta =
      const VerificationMeta('cognitiveScore');
  @override
  late final GeneratedColumn<int> cognitiveScore = GeneratedColumn<int>(
      'cognitive_score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _numberOfPlayersMeta =
      const VerificationMeta('numberOfPlayers');
  @override
  late final GeneratedColumn<String> numberOfPlayers = GeneratedColumn<String>(
      'number_of_players', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  @override
  late final GeneratedColumn<String> duration = GeneratedColumn<String>(
      'duration', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ageLimitationsMeta =
      const VerificationMeta('ageLimitations');
  @override
  late final GeneratedColumn<String> ageLimitations = GeneratedColumn<String>(
      'age_limitations', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _spaceLimitationsMeta =
      const VerificationMeta('spaceLimitations');
  @override
  late final GeneratedColumn<String> spaceLimitations = GeneratedColumn<String>(
      'space_limitations', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _materialsMeta =
      const VerificationMeta('materials');
  @override
  late final GeneratedColumn<String> materials = GeneratedColumn<String>(
      'materials', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _goalOfGameMeta =
      const VerificationMeta('goalOfGame');
  @override
  late final GeneratedColumn<String> goalOfGame = GeneratedColumn<String>(
      'goal_of_game', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _preparationsInstructionsMeta =
      const VerificationMeta('preparationsInstructions');
  @override
  late final GeneratedColumn<String> preparationsInstructions =
      GeneratedColumn<String>('preparations_instructions', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gameplayInstructionsMeta =
      const VerificationMeta('gameplayInstructions');
  @override
  late final GeneratedColumn<String> gameplayInstructions =
      GeneratedColumn<String>('gameplay_instructions', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _endingInstructionsMeta =
      const VerificationMeta('endingInstructions');
  @override
  late final GeneratedColumn<String> endingInstructions =
      GeneratedColumn<String>('ending_instructions', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoriesMeta =
      const VerificationMeta('categories');
  @override
  late final GeneratedColumn<String> categories = GeneratedColumn<String>(
      'categories', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reviewedMeta =
      const VerificationMeta('reviewed');
  @override
  late final GeneratedColumn<bool> reviewed = GeneratedColumn<bool>(
      'reviewed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("reviewed" IN (0, 1))'));
  static const VerificationMeta _alreadyPlayedMeta =
      const VerificationMeta('alreadyPlayed');
  @override
  late final GeneratedColumn<bool> alreadyPlayed = GeneratedColumn<bool>(
      'already_played', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("already_played" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        actionScore,
        cognitiveScore,
        numberOfPlayers,
        duration,
        ageLimitations,
        spaceLimitations,
        materials,
        goalOfGame,
        preparationsInstructions,
        gameplayInstructions,
        endingInstructions,
        categories,
        author,
        reviewed,
        alreadyPlayed
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'games';
  @override
  VerificationContext validateIntegrity(Insertable<Game> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('action_score')) {
      context.handle(
          _actionScoreMeta,
          actionScore.isAcceptableOrUnknown(
              data['action_score']!, _actionScoreMeta));
    } else if (isInserting) {
      context.missing(_actionScoreMeta);
    }
    if (data.containsKey('cognitive_score')) {
      context.handle(
          _cognitiveScoreMeta,
          cognitiveScore.isAcceptableOrUnknown(
              data['cognitive_score']!, _cognitiveScoreMeta));
    } else if (isInserting) {
      context.missing(_cognitiveScoreMeta);
    }
    if (data.containsKey('number_of_players')) {
      context.handle(
          _numberOfPlayersMeta,
          numberOfPlayers.isAcceptableOrUnknown(
              data['number_of_players']!, _numberOfPlayersMeta));
    } else if (isInserting) {
      context.missing(_numberOfPlayersMeta);
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    } else if (isInserting) {
      context.missing(_durationMeta);
    }
    if (data.containsKey('age_limitations')) {
      context.handle(
          _ageLimitationsMeta,
          ageLimitations.isAcceptableOrUnknown(
              data['age_limitations']!, _ageLimitationsMeta));
    } else if (isInserting) {
      context.missing(_ageLimitationsMeta);
    }
    if (data.containsKey('space_limitations')) {
      context.handle(
          _spaceLimitationsMeta,
          spaceLimitations.isAcceptableOrUnknown(
              data['space_limitations']!, _spaceLimitationsMeta));
    } else if (isInserting) {
      context.missing(_spaceLimitationsMeta);
    }
    if (data.containsKey('materials')) {
      context.handle(_materialsMeta,
          materials.isAcceptableOrUnknown(data['materials']!, _materialsMeta));
    } else if (isInserting) {
      context.missing(_materialsMeta);
    }
    if (data.containsKey('goal_of_game')) {
      context.handle(
          _goalOfGameMeta,
          goalOfGame.isAcceptableOrUnknown(
              data['goal_of_game']!, _goalOfGameMeta));
    } else if (isInserting) {
      context.missing(_goalOfGameMeta);
    }
    if (data.containsKey('preparations_instructions')) {
      context.handle(
          _preparationsInstructionsMeta,
          preparationsInstructions.isAcceptableOrUnknown(
              data['preparations_instructions']!,
              _preparationsInstructionsMeta));
    } else if (isInserting) {
      context.missing(_preparationsInstructionsMeta);
    }
    if (data.containsKey('gameplay_instructions')) {
      context.handle(
          _gameplayInstructionsMeta,
          gameplayInstructions.isAcceptableOrUnknown(
              data['gameplay_instructions']!, _gameplayInstructionsMeta));
    } else if (isInserting) {
      context.missing(_gameplayInstructionsMeta);
    }
    if (data.containsKey('ending_instructions')) {
      context.handle(
          _endingInstructionsMeta,
          endingInstructions.isAcceptableOrUnknown(
              data['ending_instructions']!, _endingInstructionsMeta));
    } else if (isInserting) {
      context.missing(_endingInstructionsMeta);
    }
    if (data.containsKey('categories')) {
      context.handle(
          _categoriesMeta,
          categories.isAcceptableOrUnknown(
              data['categories']!, _categoriesMeta));
    } else if (isInserting) {
      context.missing(_categoriesMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('reviewed')) {
      context.handle(_reviewedMeta,
          reviewed.isAcceptableOrUnknown(data['reviewed']!, _reviewedMeta));
    } else if (isInserting) {
      context.missing(_reviewedMeta);
    }
    if (data.containsKey('already_played')) {
      context.handle(
          _alreadyPlayedMeta,
          alreadyPlayed.isAcceptableOrUnknown(
              data['already_played']!, _alreadyPlayedMeta));
    } else if (isInserting) {
      context.missing(_alreadyPlayedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Game map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Game(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      actionScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}action_score'])!,
      cognitiveScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cognitive_score'])!,
      numberOfPlayers: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}number_of_players'])!,
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}duration'])!,
      ageLimitations: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}age_limitations'])!,
      spaceLimitations: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}space_limitations'])!,
      materials: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}materials'])!,
      goalOfGame: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}goal_of_game'])!,
      preparationsInstructions: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}preparations_instructions'])!,
      gameplayInstructions: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}gameplay_instructions'])!,
      endingInstructions: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ending_instructions'])!,
      categories: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}categories'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      reviewed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}reviewed'])!,
      alreadyPlayed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}already_played'])!,
    );
  }

  @override
  $GamesTable createAlias(String alias) {
    return $GamesTable(attachedDatabase, alias);
  }
}

class Game extends DataClass implements Insertable<Game> {
  final String id;
  final String title;
  final int actionScore;
  final int cognitiveScore;
  final String numberOfPlayers;
  final String duration;
  final String ageLimitations;
  final String spaceLimitations;
  final String materials;
  final String goalOfGame;
  final String preparationsInstructions;
  final String gameplayInstructions;
  final String endingInstructions;
  final String categories;
  final String author;
  final bool reviewed;
  final bool alreadyPlayed;
  const Game(
      {required this.id,
      required this.title,
      required this.actionScore,
      required this.cognitiveScore,
      required this.numberOfPlayers,
      required this.duration,
      required this.ageLimitations,
      required this.spaceLimitations,
      required this.materials,
      required this.goalOfGame,
      required this.preparationsInstructions,
      required this.gameplayInstructions,
      required this.endingInstructions,
      required this.categories,
      required this.author,
      required this.reviewed,
      required this.alreadyPlayed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['action_score'] = Variable<int>(actionScore);
    map['cognitive_score'] = Variable<int>(cognitiveScore);
    map['number_of_players'] = Variable<String>(numberOfPlayers);
    map['duration'] = Variable<String>(duration);
    map['age_limitations'] = Variable<String>(ageLimitations);
    map['space_limitations'] = Variable<String>(spaceLimitations);
    map['materials'] = Variable<String>(materials);
    map['goal_of_game'] = Variable<String>(goalOfGame);
    map['preparations_instructions'] =
        Variable<String>(preparationsInstructions);
    map['gameplay_instructions'] = Variable<String>(gameplayInstructions);
    map['ending_instructions'] = Variable<String>(endingInstructions);
    map['categories'] = Variable<String>(categories);
    map['author'] = Variable<String>(author);
    map['reviewed'] = Variable<bool>(reviewed);
    map['already_played'] = Variable<bool>(alreadyPlayed);
    return map;
  }

  GamesCompanion toCompanion(bool nullToAbsent) {
    return GamesCompanion(
      id: Value(id),
      title: Value(title),
      actionScore: Value(actionScore),
      cognitiveScore: Value(cognitiveScore),
      numberOfPlayers: Value(numberOfPlayers),
      duration: Value(duration),
      ageLimitations: Value(ageLimitations),
      spaceLimitations: Value(spaceLimitations),
      materials: Value(materials),
      goalOfGame: Value(goalOfGame),
      preparationsInstructions: Value(preparationsInstructions),
      gameplayInstructions: Value(gameplayInstructions),
      endingInstructions: Value(endingInstructions),
      categories: Value(categories),
      author: Value(author),
      reviewed: Value(reviewed),
      alreadyPlayed: Value(alreadyPlayed),
    );
  }

  factory Game.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Game(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      actionScore: serializer.fromJson<int>(json['actionScore']),
      cognitiveScore: serializer.fromJson<int>(json['cognitiveScore']),
      numberOfPlayers: serializer.fromJson<String>(json['numberOfPlayers']),
      duration: serializer.fromJson<String>(json['duration']),
      ageLimitations: serializer.fromJson<String>(json['ageLimitations']),
      spaceLimitations: serializer.fromJson<String>(json['spaceLimitations']),
      materials: serializer.fromJson<String>(json['materials']),
      goalOfGame: serializer.fromJson<String>(json['goalOfGame']),
      preparationsInstructions:
          serializer.fromJson<String>(json['preparationsInstructions']),
      gameplayInstructions:
          serializer.fromJson<String>(json['gameplayInstructions']),
      endingInstructions:
          serializer.fromJson<String>(json['endingInstructions']),
      categories: serializer.fromJson<String>(json['categories']),
      author: serializer.fromJson<String>(json['author']),
      reviewed: serializer.fromJson<bool>(json['reviewed']),
      alreadyPlayed: serializer.fromJson<bool>(json['alreadyPlayed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'actionScore': serializer.toJson<int>(actionScore),
      'cognitiveScore': serializer.toJson<int>(cognitiveScore),
      'numberOfPlayers': serializer.toJson<String>(numberOfPlayers),
      'duration': serializer.toJson<String>(duration),
      'ageLimitations': serializer.toJson<String>(ageLimitations),
      'spaceLimitations': serializer.toJson<String>(spaceLimitations),
      'materials': serializer.toJson<String>(materials),
      'goalOfGame': serializer.toJson<String>(goalOfGame),
      'preparationsInstructions':
          serializer.toJson<String>(preparationsInstructions),
      'gameplayInstructions': serializer.toJson<String>(gameplayInstructions),
      'endingInstructions': serializer.toJson<String>(endingInstructions),
      'categories': serializer.toJson<String>(categories),
      'author': serializer.toJson<String>(author),
      'reviewed': serializer.toJson<bool>(reviewed),
      'alreadyPlayed': serializer.toJson<bool>(alreadyPlayed),
    };
  }

  Game copyWith(
          {String? id,
          String? title,
          int? actionScore,
          int? cognitiveScore,
          String? numberOfPlayers,
          String? duration,
          String? ageLimitations,
          String? spaceLimitations,
          String? materials,
          String? goalOfGame,
          String? preparationsInstructions,
          String? gameplayInstructions,
          String? endingInstructions,
          String? categories,
          String? author,
          bool? reviewed,
          bool? alreadyPlayed}) =>
      Game(
        id: id ?? this.id,
        title: title ?? this.title,
        actionScore: actionScore ?? this.actionScore,
        cognitiveScore: cognitiveScore ?? this.cognitiveScore,
        numberOfPlayers: numberOfPlayers ?? this.numberOfPlayers,
        duration: duration ?? this.duration,
        ageLimitations: ageLimitations ?? this.ageLimitations,
        spaceLimitations: spaceLimitations ?? this.spaceLimitations,
        materials: materials ?? this.materials,
        goalOfGame: goalOfGame ?? this.goalOfGame,
        preparationsInstructions:
            preparationsInstructions ?? this.preparationsInstructions,
        gameplayInstructions: gameplayInstructions ?? this.gameplayInstructions,
        endingInstructions: endingInstructions ?? this.endingInstructions,
        categories: categories ?? this.categories,
        author: author ?? this.author,
        reviewed: reviewed ?? this.reviewed,
        alreadyPlayed: alreadyPlayed ?? this.alreadyPlayed,
      );
  Game copyWithCompanion(GamesCompanion data) {
    return Game(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      actionScore:
          data.actionScore.present ? data.actionScore.value : this.actionScore,
      cognitiveScore: data.cognitiveScore.present
          ? data.cognitiveScore.value
          : this.cognitiveScore,
      numberOfPlayers: data.numberOfPlayers.present
          ? data.numberOfPlayers.value
          : this.numberOfPlayers,
      duration: data.duration.present ? data.duration.value : this.duration,
      ageLimitations: data.ageLimitations.present
          ? data.ageLimitations.value
          : this.ageLimitations,
      spaceLimitations: data.spaceLimitations.present
          ? data.spaceLimitations.value
          : this.spaceLimitations,
      materials: data.materials.present ? data.materials.value : this.materials,
      goalOfGame:
          data.goalOfGame.present ? data.goalOfGame.value : this.goalOfGame,
      preparationsInstructions: data.preparationsInstructions.present
          ? data.preparationsInstructions.value
          : this.preparationsInstructions,
      gameplayInstructions: data.gameplayInstructions.present
          ? data.gameplayInstructions.value
          : this.gameplayInstructions,
      endingInstructions: data.endingInstructions.present
          ? data.endingInstructions.value
          : this.endingInstructions,
      categories:
          data.categories.present ? data.categories.value : this.categories,
      author: data.author.present ? data.author.value : this.author,
      reviewed: data.reviewed.present ? data.reviewed.value : this.reviewed,
      alreadyPlayed: data.alreadyPlayed.present
          ? data.alreadyPlayed.value
          : this.alreadyPlayed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Game(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('actionScore: $actionScore, ')
          ..write('cognitiveScore: $cognitiveScore, ')
          ..write('numberOfPlayers: $numberOfPlayers, ')
          ..write('duration: $duration, ')
          ..write('ageLimitations: $ageLimitations, ')
          ..write('spaceLimitations: $spaceLimitations, ')
          ..write('materials: $materials, ')
          ..write('goalOfGame: $goalOfGame, ')
          ..write('preparationsInstructions: $preparationsInstructions, ')
          ..write('gameplayInstructions: $gameplayInstructions, ')
          ..write('endingInstructions: $endingInstructions, ')
          ..write('categories: $categories, ')
          ..write('author: $author, ')
          ..write('reviewed: $reviewed, ')
          ..write('alreadyPlayed: $alreadyPlayed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      actionScore,
      cognitiveScore,
      numberOfPlayers,
      duration,
      ageLimitations,
      spaceLimitations,
      materials,
      goalOfGame,
      preparationsInstructions,
      gameplayInstructions,
      endingInstructions,
      categories,
      author,
      reviewed,
      alreadyPlayed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Game &&
          other.id == this.id &&
          other.title == this.title &&
          other.actionScore == this.actionScore &&
          other.cognitiveScore == this.cognitiveScore &&
          other.numberOfPlayers == this.numberOfPlayers &&
          other.duration == this.duration &&
          other.ageLimitations == this.ageLimitations &&
          other.spaceLimitations == this.spaceLimitations &&
          other.materials == this.materials &&
          other.goalOfGame == this.goalOfGame &&
          other.preparationsInstructions == this.preparationsInstructions &&
          other.gameplayInstructions == this.gameplayInstructions &&
          other.endingInstructions == this.endingInstructions &&
          other.categories == this.categories &&
          other.author == this.author &&
          other.reviewed == this.reviewed &&
          other.alreadyPlayed == this.alreadyPlayed);
}

class GamesCompanion extends UpdateCompanion<Game> {
  final Value<String> id;
  final Value<String> title;
  final Value<int> actionScore;
  final Value<int> cognitiveScore;
  final Value<String> numberOfPlayers;
  final Value<String> duration;
  final Value<String> ageLimitations;
  final Value<String> spaceLimitations;
  final Value<String> materials;
  final Value<String> goalOfGame;
  final Value<String> preparationsInstructions;
  final Value<String> gameplayInstructions;
  final Value<String> endingInstructions;
  final Value<String> categories;
  final Value<String> author;
  final Value<bool> reviewed;
  final Value<bool> alreadyPlayed;
  final Value<int> rowid;
  const GamesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.actionScore = const Value.absent(),
    this.cognitiveScore = const Value.absent(),
    this.numberOfPlayers = const Value.absent(),
    this.duration = const Value.absent(),
    this.ageLimitations = const Value.absent(),
    this.spaceLimitations = const Value.absent(),
    this.materials = const Value.absent(),
    this.goalOfGame = const Value.absent(),
    this.preparationsInstructions = const Value.absent(),
    this.gameplayInstructions = const Value.absent(),
    this.endingInstructions = const Value.absent(),
    this.categories = const Value.absent(),
    this.author = const Value.absent(),
    this.reviewed = const Value.absent(),
    this.alreadyPlayed = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GamesCompanion.insert({
    required String id,
    required String title,
    required int actionScore,
    required int cognitiveScore,
    required String numberOfPlayers,
    required String duration,
    required String ageLimitations,
    required String spaceLimitations,
    required String materials,
    required String goalOfGame,
    required String preparationsInstructions,
    required String gameplayInstructions,
    required String endingInstructions,
    required String categories,
    required String author,
    required bool reviewed,
    required bool alreadyPlayed,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        actionScore = Value(actionScore),
        cognitiveScore = Value(cognitiveScore),
        numberOfPlayers = Value(numberOfPlayers),
        duration = Value(duration),
        ageLimitations = Value(ageLimitations),
        spaceLimitations = Value(spaceLimitations),
        materials = Value(materials),
        goalOfGame = Value(goalOfGame),
        preparationsInstructions = Value(preparationsInstructions),
        gameplayInstructions = Value(gameplayInstructions),
        endingInstructions = Value(endingInstructions),
        categories = Value(categories),
        author = Value(author),
        reviewed = Value(reviewed),
        alreadyPlayed = Value(alreadyPlayed);
  static Insertable<Game> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<int>? actionScore,
    Expression<int>? cognitiveScore,
    Expression<String>? numberOfPlayers,
    Expression<String>? duration,
    Expression<String>? ageLimitations,
    Expression<String>? spaceLimitations,
    Expression<String>? materials,
    Expression<String>? goalOfGame,
    Expression<String>? preparationsInstructions,
    Expression<String>? gameplayInstructions,
    Expression<String>? endingInstructions,
    Expression<String>? categories,
    Expression<String>? author,
    Expression<bool>? reviewed,
    Expression<bool>? alreadyPlayed,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (actionScore != null) 'action_score': actionScore,
      if (cognitiveScore != null) 'cognitive_score': cognitiveScore,
      if (numberOfPlayers != null) 'number_of_players': numberOfPlayers,
      if (duration != null) 'duration': duration,
      if (ageLimitations != null) 'age_limitations': ageLimitations,
      if (spaceLimitations != null) 'space_limitations': spaceLimitations,
      if (materials != null) 'materials': materials,
      if (goalOfGame != null) 'goal_of_game': goalOfGame,
      if (preparationsInstructions != null)
        'preparations_instructions': preparationsInstructions,
      if (gameplayInstructions != null)
        'gameplay_instructions': gameplayInstructions,
      if (endingInstructions != null) 'ending_instructions': endingInstructions,
      if (categories != null) 'categories': categories,
      if (author != null) 'author': author,
      if (reviewed != null) 'reviewed': reviewed,
      if (alreadyPlayed != null) 'already_played': alreadyPlayed,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GamesCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<int>? actionScore,
      Value<int>? cognitiveScore,
      Value<String>? numberOfPlayers,
      Value<String>? duration,
      Value<String>? ageLimitations,
      Value<String>? spaceLimitations,
      Value<String>? materials,
      Value<String>? goalOfGame,
      Value<String>? preparationsInstructions,
      Value<String>? gameplayInstructions,
      Value<String>? endingInstructions,
      Value<String>? categories,
      Value<String>? author,
      Value<bool>? reviewed,
      Value<bool>? alreadyPlayed,
      Value<int>? rowid}) {
    return GamesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      actionScore: actionScore ?? this.actionScore,
      cognitiveScore: cognitiveScore ?? this.cognitiveScore,
      numberOfPlayers: numberOfPlayers ?? this.numberOfPlayers,
      duration: duration ?? this.duration,
      ageLimitations: ageLimitations ?? this.ageLimitations,
      spaceLimitations: spaceLimitations ?? this.spaceLimitations,
      materials: materials ?? this.materials,
      goalOfGame: goalOfGame ?? this.goalOfGame,
      preparationsInstructions:
          preparationsInstructions ?? this.preparationsInstructions,
      gameplayInstructions: gameplayInstructions ?? this.gameplayInstructions,
      endingInstructions: endingInstructions ?? this.endingInstructions,
      categories: categories ?? this.categories,
      author: author ?? this.author,
      reviewed: reviewed ?? this.reviewed,
      alreadyPlayed: alreadyPlayed ?? this.alreadyPlayed,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (actionScore.present) {
      map['action_score'] = Variable<int>(actionScore.value);
    }
    if (cognitiveScore.present) {
      map['cognitive_score'] = Variable<int>(cognitiveScore.value);
    }
    if (numberOfPlayers.present) {
      map['number_of_players'] = Variable<String>(numberOfPlayers.value);
    }
    if (duration.present) {
      map['duration'] = Variable<String>(duration.value);
    }
    if (ageLimitations.present) {
      map['age_limitations'] = Variable<String>(ageLimitations.value);
    }
    if (spaceLimitations.present) {
      map['space_limitations'] = Variable<String>(spaceLimitations.value);
    }
    if (materials.present) {
      map['materials'] = Variable<String>(materials.value);
    }
    if (goalOfGame.present) {
      map['goal_of_game'] = Variable<String>(goalOfGame.value);
    }
    if (preparationsInstructions.present) {
      map['preparations_instructions'] =
          Variable<String>(preparationsInstructions.value);
    }
    if (gameplayInstructions.present) {
      map['gameplay_instructions'] =
          Variable<String>(gameplayInstructions.value);
    }
    if (endingInstructions.present) {
      map['ending_instructions'] = Variable<String>(endingInstructions.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(categories.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (reviewed.present) {
      map['reviewed'] = Variable<bool>(reviewed.value);
    }
    if (alreadyPlayed.present) {
      map['already_played'] = Variable<bool>(alreadyPlayed.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GamesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('actionScore: $actionScore, ')
          ..write('cognitiveScore: $cognitiveScore, ')
          ..write('numberOfPlayers: $numberOfPlayers, ')
          ..write('duration: $duration, ')
          ..write('ageLimitations: $ageLimitations, ')
          ..write('spaceLimitations: $spaceLimitations, ')
          ..write('materials: $materials, ')
          ..write('goalOfGame: $goalOfGame, ')
          ..write('preparationsInstructions: $preparationsInstructions, ')
          ..write('gameplayInstructions: $gameplayInstructions, ')
          ..write('endingInstructions: $endingInstructions, ')
          ..write('categories: $categories, ')
          ..write('author: $author, ')
          ..write('reviewed: $reviewed, ')
          ..write('alreadyPlayed: $alreadyPlayed, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventsTable extends Events with TableInfo<$EventsTable, Event> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _clientIdMeta =
      const VerificationMeta('clientId');
  @override
  late final GeneratedColumn<int> clientId = GeneratedColumn<int>(
      'client_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _startDateAndTimeMeta =
      const VerificationMeta('startDateAndTime');
  @override
  late final GeneratedColumn<DateTime> startDateAndTime =
      GeneratedColumn<DateTime>('start_date_and_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endDateAndTimeMeta =
      const VerificationMeta('endDateAndTime');
  @override
  late final GeneratedColumn<DateTime> endDateAndTime =
      GeneratedColumn<DateTime>('end_date_and_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
      'group_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberOfDaysMeta =
      const VerificationMeta('numberOfDays');
  @override
  late final GeneratedColumn<int> numberOfDays = GeneratedColumn<int>(
      'number_of_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _contactNameMeta =
      const VerificationMeta('contactName');
  @override
  late final GeneratedColumn<String> contactName = GeneratedColumn<String>(
      'contact_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactEmailMeta =
      const VerificationMeta('contactEmail');
  @override
  late final GeneratedColumn<String> contactEmail = GeneratedColumn<String>(
      'contact_email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _maxParticipantsMeta =
      const VerificationMeta('maxParticipants');
  @override
  late final GeneratedColumn<int> maxParticipants = GeneratedColumn<int>(
      'max_participants', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _attachmentsMeta =
      const VerificationMeta('attachments');
  @override
  late final GeneratedColumn<String> attachments = GeneratedColumn<String>(
      'attachments', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _costMemberMeta =
      const VerificationMeta('costMember');
  @override
  late final GeneratedColumn<double> costMember = GeneratedColumn<double>(
      'cost_member', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _costGuestMeta =
      const VerificationMeta('costGuest');
  @override
  late final GeneratedColumn<double> costGuest = GeneratedColumn<double>(
      'cost_guest', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _costCompanionMeta =
      const VerificationMeta('costCompanion');
  @override
  late final GeneratedColumn<double> costCompanion = GeneratedColumn<double>(
      'cost_companion', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<String> cost = GeneratedColumn<String>(
      'cost', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publicTypeMeta =
      const VerificationMeta('publicType');
  @override
  late final GeneratedColumn<int> publicType = GeneratedColumn<int>(
      'public_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _registrationStartMeta =
      const VerificationMeta('registrationStart');
  @override
  late final GeneratedColumn<DateTime> registrationStart =
      GeneratedColumn<DateTime>('registration_start', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _registrationDeadlineMeta =
      const VerificationMeta('registrationDeadline');
  @override
  late final GeneratedColumn<DateTime> registrationDeadline =
      GeneratedColumn<DateTime>('registration_deadline', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _visibilityTypeMeta =
      const VerificationMeta('visibilityType');
  @override
  late final GeneratedColumn<int> visibilityType = GeneratedColumn<int>(
      'visibility_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deregistrationDeadlineMeta =
      const VerificationMeta('deregistrationDeadline');
  @override
  late final GeneratedColumn<DateTime> deregistrationDeadline =
      GeneratedColumn<DateTime>('deregistration_deadline', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _maxCompanionsMeta =
      const VerificationMeta('maxCompanions');
  @override
  late final GeneratedColumn<int> maxCompanions = GeneratedColumn<int>(
      'max_companions', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _seriesEventIdMeta =
      const VerificationMeta('seriesEventId');
  @override
  late final GeneratedColumn<int> seriesEventId = GeneratedColumn<int>(
      'series_event_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _visibilityAssociationMeta =
      const VerificationMeta('visibilityAssociation');
  @override
  late final GeneratedColumn<int> visibilityAssociation = GeneratedColumn<int>(
      'visibility_association', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _rvMeta = const VerificationMeta('rv');
  @override
  late final GeneratedColumn<bool> rv = GeneratedColumn<bool>(
      'rv', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("rv" IN (0, 1))'));
  static const VerificationMeta _abbreviationMeta =
      const VerificationMeta('abbreviation');
  @override
  late final GeneratedColumn<String> abbreviation = GeneratedColumn<String>(
      'abbreviation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _organizationMeta =
      const VerificationMeta('organization');
  @override
  late final GeneratedColumn<String> organization = GeneratedColumn<String>(
      'organization', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _registrationCountMeta =
      const VerificationMeta('registrationCount');
  @override
  late final GeneratedColumn<int> registrationCount = GeneratedColumn<int>(
      'registration_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _freeSlotsMeta =
      const VerificationMeta('freeSlots');
  @override
  late final GeneratedColumn<String> freeSlots = GeneratedColumn<String>(
      'free_slots', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _baseUrlMeta =
      const VerificationMeta('baseUrl');
  @override
  late final GeneratedColumn<String> baseUrl = GeneratedColumn<String>(
      'base_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clientEventIdMeta =
      const VerificationMeta('clientEventId');
  @override
  late final GeneratedColumn<String> clientEventId = GeneratedColumn<String>(
      'client_event_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clientId,
        startDateAndTime,
        endDateAndTime,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        contactName,
        contactEmail,
        maxParticipants,
        image,
        attachments,
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        type,
        registrationStart,
        registrationDeadline,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        seriesEventId,
        visibilityAssociation,
        rv,
        abbreviation,
        organization,
        registrationCount,
        freeSlots,
        link,
        baseUrl,
        clientEventId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(Insertable<Event> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('client_id')) {
      context.handle(_clientIdMeta,
          clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta));
    }
    if (data.containsKey('start_date_and_time')) {
      context.handle(
          _startDateAndTimeMeta,
          startDateAndTime.isAcceptableOrUnknown(
              data['start_date_and_time']!, _startDateAndTimeMeta));
    } else if (isInserting) {
      context.missing(_startDateAndTimeMeta);
    }
    if (data.containsKey('end_date_and_time')) {
      context.handle(
          _endDateAndTimeMeta,
          endDateAndTime.isAcceptableOrUnknown(
              data['end_date_and_time']!, _endDateAndTimeMeta));
    } else if (isInserting) {
      context.missing(_endDateAndTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    }
    if (data.containsKey('number_of_days')) {
      context.handle(
          _numberOfDaysMeta,
          numberOfDays.isAcceptableOrUnknown(
              data['number_of_days']!, _numberOfDaysMeta));
    }
    if (data.containsKey('contact_name')) {
      context.handle(
          _contactNameMeta,
          contactName.isAcceptableOrUnknown(
              data['contact_name']!, _contactNameMeta));
    }
    if (data.containsKey('contact_email')) {
      context.handle(
          _contactEmailMeta,
          contactEmail.isAcceptableOrUnknown(
              data['contact_email']!, _contactEmailMeta));
    }
    if (data.containsKey('max_participants')) {
      context.handle(
          _maxParticipantsMeta,
          maxParticipants.isAcceptableOrUnknown(
              data['max_participants']!, _maxParticipantsMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('attachments')) {
      context.handle(
          _attachmentsMeta,
          attachments.isAcceptableOrUnknown(
              data['attachments']!, _attachmentsMeta));
    }
    if (data.containsKey('cost_member')) {
      context.handle(
          _costMemberMeta,
          costMember.isAcceptableOrUnknown(
              data['cost_member']!, _costMemberMeta));
    }
    if (data.containsKey('cost_guest')) {
      context.handle(_costGuestMeta,
          costGuest.isAcceptableOrUnknown(data['cost_guest']!, _costGuestMeta));
    }
    if (data.containsKey('cost_companion')) {
      context.handle(
          _costCompanionMeta,
          costCompanion.isAcceptableOrUnknown(
              data['cost_companion']!, _costCompanionMeta));
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    }
    if (data.containsKey('public_type')) {
      context.handle(
          _publicTypeMeta,
          publicType.isAcceptableOrUnknown(
              data['public_type']!, _publicTypeMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('registration_start')) {
      context.handle(
          _registrationStartMeta,
          registrationStart.isAcceptableOrUnknown(
              data['registration_start']!, _registrationStartMeta));
    }
    if (data.containsKey('registration_deadline')) {
      context.handle(
          _registrationDeadlineMeta,
          registrationDeadline.isAcceptableOrUnknown(
              data['registration_deadline']!, _registrationDeadlineMeta));
    }
    if (data.containsKey('visibility_type')) {
      context.handle(
          _visibilityTypeMeta,
          visibilityType.isAcceptableOrUnknown(
              data['visibility_type']!, _visibilityTypeMeta));
    }
    if (data.containsKey('deregistration_deadline')) {
      context.handle(
          _deregistrationDeadlineMeta,
          deregistrationDeadline.isAcceptableOrUnknown(
              data['deregistration_deadline']!, _deregistrationDeadlineMeta));
    }
    if (data.containsKey('max_companions')) {
      context.handle(
          _maxCompanionsMeta,
          maxCompanions.isAcceptableOrUnknown(
              data['max_companions']!, _maxCompanionsMeta));
    }
    if (data.containsKey('series_event_id')) {
      context.handle(
          _seriesEventIdMeta,
          seriesEventId.isAcceptableOrUnknown(
              data['series_event_id']!, _seriesEventIdMeta));
    }
    if (data.containsKey('visibility_association')) {
      context.handle(
          _visibilityAssociationMeta,
          visibilityAssociation.isAcceptableOrUnknown(
              data['visibility_association']!, _visibilityAssociationMeta));
    }
    if (data.containsKey('rv')) {
      context.handle(_rvMeta, rv.isAcceptableOrUnknown(data['rv']!, _rvMeta));
    }
    if (data.containsKey('abbreviation')) {
      context.handle(
          _abbreviationMeta,
          abbreviation.isAcceptableOrUnknown(
              data['abbreviation']!, _abbreviationMeta));
    }
    if (data.containsKey('organization')) {
      context.handle(
          _organizationMeta,
          organization.isAcceptableOrUnknown(
              data['organization']!, _organizationMeta));
    }
    if (data.containsKey('registration_count')) {
      context.handle(
          _registrationCountMeta,
          registrationCount.isAcceptableOrUnknown(
              data['registration_count']!, _registrationCountMeta));
    }
    if (data.containsKey('free_slots')) {
      context.handle(_freeSlotsMeta,
          freeSlots.isAcceptableOrUnknown(data['free_slots']!, _freeSlotsMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    if (data.containsKey('base_url')) {
      context.handle(_baseUrlMeta,
          baseUrl.isAcceptableOrUnknown(data['base_url']!, _baseUrlMeta));
    } else if (isInserting) {
      context.missing(_baseUrlMeta);
    }
    if (data.containsKey('client_event_id')) {
      context.handle(
          _clientEventIdMeta,
          clientEventId.isAcceptableOrUnknown(
              data['client_event_id']!, _clientEventIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Event(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      clientId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}client_id']),
      startDateAndTime: attachedDatabase.typeMapping.read(DriftSqlType.dateTime,
          data['${effectivePrefix}start_date_and_time'])!,
      endDateAndTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}end_date_and_time'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_id']),
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time']),
      numberOfDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_days']),
      contactName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_name']),
      contactEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_email']),
      maxParticipants: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_participants']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      attachments: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attachments']),
      costMember: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cost_member']),
      costGuest: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cost_guest']),
      costCompanion: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cost_companion']),
      cost: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cost']),
      publicType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}public_type']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type']),
      registrationStart: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}registration_start']),
      registrationDeadline: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}registration_deadline']),
      visibilityType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}visibility_type']),
      deregistrationDeadline: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}deregistration_deadline']),
      maxCompanions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_companions']),
      seriesEventId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}series_event_id']),
      visibilityAssociation: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}visibility_association']),
      rv: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}rv']),
      abbreviation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abbreviation']),
      organization: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}organization']),
      registrationCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}registration_count']),
      freeSlots: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}free_slots']),
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link']),
      baseUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base_url'])!,
      clientEventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_event_id']),
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class Event extends DataClass implements Insertable<Event> {
  final int id;
  final int? clientId;
  final DateTime startDateAndTime;
  final DateTime endDateAndTime;
  final String title;
  final String? description;
  final String? location;
  final int? groupId;
  final String? time;
  final int? numberOfDays;
  final String? contactName;
  final String? contactEmail;
  final int? maxParticipants;
  final String? image;
  final String? attachments;
  final double? costMember;
  final double? costGuest;
  final double? costCompanion;
  final String? cost;
  final int? publicType;
  final int? type;
  final DateTime? registrationStart;
  final DateTime? registrationDeadline;
  final int? visibilityType;
  final DateTime? deregistrationDeadline;
  final int? maxCompanions;
  final int? seriesEventId;
  final int? visibilityAssociation;
  final bool? rv;
  final String? abbreviation;
  final String? organization;
  final int? registrationCount;
  final String? freeSlots;
  final String? link;
  final String baseUrl;
  final String? clientEventId;
  const Event(
      {required this.id,
      this.clientId,
      required this.startDateAndTime,
      required this.endDateAndTime,
      required this.title,
      this.description,
      this.location,
      this.groupId,
      this.time,
      this.numberOfDays,
      this.contactName,
      this.contactEmail,
      this.maxParticipants,
      this.image,
      this.attachments,
      this.costMember,
      this.costGuest,
      this.costCompanion,
      this.cost,
      this.publicType,
      this.type,
      this.registrationStart,
      this.registrationDeadline,
      this.visibilityType,
      this.deregistrationDeadline,
      this.maxCompanions,
      this.seriesEventId,
      this.visibilityAssociation,
      this.rv,
      this.abbreviation,
      this.organization,
      this.registrationCount,
      this.freeSlots,
      this.link,
      required this.baseUrl,
      this.clientEventId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || clientId != null) {
      map['client_id'] = Variable<int>(clientId);
    }
    map['start_date_and_time'] = Variable<DateTime>(startDateAndTime);
    map['end_date_and_time'] = Variable<DateTime>(endDateAndTime);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || groupId != null) {
      map['group_id'] = Variable<int>(groupId);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<String>(time);
    }
    if (!nullToAbsent || numberOfDays != null) {
      map['number_of_days'] = Variable<int>(numberOfDays);
    }
    if (!nullToAbsent || contactName != null) {
      map['contact_name'] = Variable<String>(contactName);
    }
    if (!nullToAbsent || contactEmail != null) {
      map['contact_email'] = Variable<String>(contactEmail);
    }
    if (!nullToAbsent || maxParticipants != null) {
      map['max_participants'] = Variable<int>(maxParticipants);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || attachments != null) {
      map['attachments'] = Variable<String>(attachments);
    }
    if (!nullToAbsent || costMember != null) {
      map['cost_member'] = Variable<double>(costMember);
    }
    if (!nullToAbsent || costGuest != null) {
      map['cost_guest'] = Variable<double>(costGuest);
    }
    if (!nullToAbsent || costCompanion != null) {
      map['cost_companion'] = Variable<double>(costCompanion);
    }
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<String>(cost);
    }
    if (!nullToAbsent || publicType != null) {
      map['public_type'] = Variable<int>(publicType);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<int>(type);
    }
    if (!nullToAbsent || registrationStart != null) {
      map['registration_start'] = Variable<DateTime>(registrationStart);
    }
    if (!nullToAbsent || registrationDeadline != null) {
      map['registration_deadline'] = Variable<DateTime>(registrationDeadline);
    }
    if (!nullToAbsent || visibilityType != null) {
      map['visibility_type'] = Variable<int>(visibilityType);
    }
    if (!nullToAbsent || deregistrationDeadline != null) {
      map['deregistration_deadline'] =
          Variable<DateTime>(deregistrationDeadline);
    }
    if (!nullToAbsent || maxCompanions != null) {
      map['max_companions'] = Variable<int>(maxCompanions);
    }
    if (!nullToAbsent || seriesEventId != null) {
      map['series_event_id'] = Variable<int>(seriesEventId);
    }
    if (!nullToAbsent || visibilityAssociation != null) {
      map['visibility_association'] = Variable<int>(visibilityAssociation);
    }
    if (!nullToAbsent || rv != null) {
      map['rv'] = Variable<bool>(rv);
    }
    if (!nullToAbsent || abbreviation != null) {
      map['abbreviation'] = Variable<String>(abbreviation);
    }
    if (!nullToAbsent || organization != null) {
      map['organization'] = Variable<String>(organization);
    }
    if (!nullToAbsent || registrationCount != null) {
      map['registration_count'] = Variable<int>(registrationCount);
    }
    if (!nullToAbsent || freeSlots != null) {
      map['free_slots'] = Variable<String>(freeSlots);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    map['base_url'] = Variable<String>(baseUrl);
    if (!nullToAbsent || clientEventId != null) {
      map['client_event_id'] = Variable<String>(clientEventId);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      clientId: clientId == null && nullToAbsent
          ? const Value.absent()
          : Value(clientId),
      startDateAndTime: Value(startDateAndTime),
      endDateAndTime: Value(endDateAndTime),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      groupId: groupId == null && nullToAbsent
          ? const Value.absent()
          : Value(groupId),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      numberOfDays: numberOfDays == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfDays),
      contactName: contactName == null && nullToAbsent
          ? const Value.absent()
          : Value(contactName),
      contactEmail: contactEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(contactEmail),
      maxParticipants: maxParticipants == null && nullToAbsent
          ? const Value.absent()
          : Value(maxParticipants),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      attachments: attachments == null && nullToAbsent
          ? const Value.absent()
          : Value(attachments),
      costMember: costMember == null && nullToAbsent
          ? const Value.absent()
          : Value(costMember),
      costGuest: costGuest == null && nullToAbsent
          ? const Value.absent()
          : Value(costGuest),
      costCompanion: costCompanion == null && nullToAbsent
          ? const Value.absent()
          : Value(costCompanion),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
      publicType: publicType == null && nullToAbsent
          ? const Value.absent()
          : Value(publicType),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      registrationStart: registrationStart == null && nullToAbsent
          ? const Value.absent()
          : Value(registrationStart),
      registrationDeadline: registrationDeadline == null && nullToAbsent
          ? const Value.absent()
          : Value(registrationDeadline),
      visibilityType: visibilityType == null && nullToAbsent
          ? const Value.absent()
          : Value(visibilityType),
      deregistrationDeadline: deregistrationDeadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deregistrationDeadline),
      maxCompanions: maxCompanions == null && nullToAbsent
          ? const Value.absent()
          : Value(maxCompanions),
      seriesEventId: seriesEventId == null && nullToAbsent
          ? const Value.absent()
          : Value(seriesEventId),
      visibilityAssociation: visibilityAssociation == null && nullToAbsent
          ? const Value.absent()
          : Value(visibilityAssociation),
      rv: rv == null && nullToAbsent ? const Value.absent() : Value(rv),
      abbreviation: abbreviation == null && nullToAbsent
          ? const Value.absent()
          : Value(abbreviation),
      organization: organization == null && nullToAbsent
          ? const Value.absent()
          : Value(organization),
      registrationCount: registrationCount == null && nullToAbsent
          ? const Value.absent()
          : Value(registrationCount),
      freeSlots: freeSlots == null && nullToAbsent
          ? const Value.absent()
          : Value(freeSlots),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      baseUrl: Value(baseUrl),
      clientEventId: clientEventId == null && nullToAbsent
          ? const Value.absent()
          : Value(clientEventId),
    );
  }

  factory Event.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<int>(json['id']),
      clientId: serializer.fromJson<int?>(json['clientId']),
      startDateAndTime: serializer.fromJson<DateTime>(json['startDateAndTime']),
      endDateAndTime: serializer.fromJson<DateTime>(json['endDateAndTime']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      location: serializer.fromJson<String?>(json['location']),
      groupId: serializer.fromJson<int?>(json['groupId']),
      time: serializer.fromJson<String?>(json['time']),
      numberOfDays: serializer.fromJson<int?>(json['numberOfDays']),
      contactName: serializer.fromJson<String?>(json['contactName']),
      contactEmail: serializer.fromJson<String?>(json['contactEmail']),
      maxParticipants: serializer.fromJson<int?>(json['maxParticipants']),
      image: serializer.fromJson<String?>(json['image']),
      attachments: serializer.fromJson<String?>(json['attachments']),
      costMember: serializer.fromJson<double?>(json['costMember']),
      costGuest: serializer.fromJson<double?>(json['costGuest']),
      costCompanion: serializer.fromJson<double?>(json['costCompanion']),
      cost: serializer.fromJson<String?>(json['cost']),
      publicType: serializer.fromJson<int?>(json['publicType']),
      type: serializer.fromJson<int?>(json['type']),
      registrationStart:
          serializer.fromJson<DateTime?>(json['registrationStart']),
      registrationDeadline:
          serializer.fromJson<DateTime?>(json['registrationDeadline']),
      visibilityType: serializer.fromJson<int?>(json['visibilityType']),
      deregistrationDeadline:
          serializer.fromJson<DateTime?>(json['deregistrationDeadline']),
      maxCompanions: serializer.fromJson<int?>(json['maxCompanions']),
      seriesEventId: serializer.fromJson<int?>(json['seriesEventId']),
      visibilityAssociation:
          serializer.fromJson<int?>(json['visibilityAssociation']),
      rv: serializer.fromJson<bool?>(json['rv']),
      abbreviation: serializer.fromJson<String?>(json['abbreviation']),
      organization: serializer.fromJson<String?>(json['organization']),
      registrationCount: serializer.fromJson<int?>(json['registrationCount']),
      freeSlots: serializer.fromJson<String?>(json['freeSlots']),
      link: serializer.fromJson<String?>(json['link']),
      baseUrl: serializer.fromJson<String>(json['baseUrl']),
      clientEventId: serializer.fromJson<String?>(json['clientEventId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'clientId': serializer.toJson<int?>(clientId),
      'startDateAndTime': serializer.toJson<DateTime>(startDateAndTime),
      'endDateAndTime': serializer.toJson<DateTime>(endDateAndTime),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'location': serializer.toJson<String?>(location),
      'groupId': serializer.toJson<int?>(groupId),
      'time': serializer.toJson<String?>(time),
      'numberOfDays': serializer.toJson<int?>(numberOfDays),
      'contactName': serializer.toJson<String?>(contactName),
      'contactEmail': serializer.toJson<String?>(contactEmail),
      'maxParticipants': serializer.toJson<int?>(maxParticipants),
      'image': serializer.toJson<String?>(image),
      'attachments': serializer.toJson<String?>(attachments),
      'costMember': serializer.toJson<double?>(costMember),
      'costGuest': serializer.toJson<double?>(costGuest),
      'costCompanion': serializer.toJson<double?>(costCompanion),
      'cost': serializer.toJson<String?>(cost),
      'publicType': serializer.toJson<int?>(publicType),
      'type': serializer.toJson<int?>(type),
      'registrationStart': serializer.toJson<DateTime?>(registrationStart),
      'registrationDeadline':
          serializer.toJson<DateTime?>(registrationDeadline),
      'visibilityType': serializer.toJson<int?>(visibilityType),
      'deregistrationDeadline':
          serializer.toJson<DateTime?>(deregistrationDeadline),
      'maxCompanions': serializer.toJson<int?>(maxCompanions),
      'seriesEventId': serializer.toJson<int?>(seriesEventId),
      'visibilityAssociation': serializer.toJson<int?>(visibilityAssociation),
      'rv': serializer.toJson<bool?>(rv),
      'abbreviation': serializer.toJson<String?>(abbreviation),
      'organization': serializer.toJson<String?>(organization),
      'registrationCount': serializer.toJson<int?>(registrationCount),
      'freeSlots': serializer.toJson<String?>(freeSlots),
      'link': serializer.toJson<String?>(link),
      'baseUrl': serializer.toJson<String>(baseUrl),
      'clientEventId': serializer.toJson<String?>(clientEventId),
    };
  }

  Event copyWith(
          {int? id,
          Value<int?> clientId = const Value.absent(),
          DateTime? startDateAndTime,
          DateTime? endDateAndTime,
          String? title,
          Value<String?> description = const Value.absent(),
          Value<String?> location = const Value.absent(),
          Value<int?> groupId = const Value.absent(),
          Value<String?> time = const Value.absent(),
          Value<int?> numberOfDays = const Value.absent(),
          Value<String?> contactName = const Value.absent(),
          Value<String?> contactEmail = const Value.absent(),
          Value<int?> maxParticipants = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> attachments = const Value.absent(),
          Value<double?> costMember = const Value.absent(),
          Value<double?> costGuest = const Value.absent(),
          Value<double?> costCompanion = const Value.absent(),
          Value<String?> cost = const Value.absent(),
          Value<int?> publicType = const Value.absent(),
          Value<int?> type = const Value.absent(),
          Value<DateTime?> registrationStart = const Value.absent(),
          Value<DateTime?> registrationDeadline = const Value.absent(),
          Value<int?> visibilityType = const Value.absent(),
          Value<DateTime?> deregistrationDeadline = const Value.absent(),
          Value<int?> maxCompanions = const Value.absent(),
          Value<int?> seriesEventId = const Value.absent(),
          Value<int?> visibilityAssociation = const Value.absent(),
          Value<bool?> rv = const Value.absent(),
          Value<String?> abbreviation = const Value.absent(),
          Value<String?> organization = const Value.absent(),
          Value<int?> registrationCount = const Value.absent(),
          Value<String?> freeSlots = const Value.absent(),
          Value<String?> link = const Value.absent(),
          String? baseUrl,
          Value<String?> clientEventId = const Value.absent()}) =>
      Event(
        id: id ?? this.id,
        clientId: clientId.present ? clientId.value : this.clientId,
        startDateAndTime: startDateAndTime ?? this.startDateAndTime,
        endDateAndTime: endDateAndTime ?? this.endDateAndTime,
        title: title ?? this.title,
        description: description.present ? description.value : this.description,
        location: location.present ? location.value : this.location,
        groupId: groupId.present ? groupId.value : this.groupId,
        time: time.present ? time.value : this.time,
        numberOfDays:
            numberOfDays.present ? numberOfDays.value : this.numberOfDays,
        contactName: contactName.present ? contactName.value : this.contactName,
        contactEmail:
            contactEmail.present ? contactEmail.value : this.contactEmail,
        maxParticipants: maxParticipants.present
            ? maxParticipants.value
            : this.maxParticipants,
        image: image.present ? image.value : this.image,
        attachments: attachments.present ? attachments.value : this.attachments,
        costMember: costMember.present ? costMember.value : this.costMember,
        costGuest: costGuest.present ? costGuest.value : this.costGuest,
        costCompanion:
            costCompanion.present ? costCompanion.value : this.costCompanion,
        cost: cost.present ? cost.value : this.cost,
        publicType: publicType.present ? publicType.value : this.publicType,
        type: type.present ? type.value : this.type,
        registrationStart: registrationStart.present
            ? registrationStart.value
            : this.registrationStart,
        registrationDeadline: registrationDeadline.present
            ? registrationDeadline.value
            : this.registrationDeadline,
        visibilityType:
            visibilityType.present ? visibilityType.value : this.visibilityType,
        deregistrationDeadline: deregistrationDeadline.present
            ? deregistrationDeadline.value
            : this.deregistrationDeadline,
        maxCompanions:
            maxCompanions.present ? maxCompanions.value : this.maxCompanions,
        seriesEventId:
            seriesEventId.present ? seriesEventId.value : this.seriesEventId,
        visibilityAssociation: visibilityAssociation.present
            ? visibilityAssociation.value
            : this.visibilityAssociation,
        rv: rv.present ? rv.value : this.rv,
        abbreviation:
            abbreviation.present ? abbreviation.value : this.abbreviation,
        organization:
            organization.present ? organization.value : this.organization,
        registrationCount: registrationCount.present
            ? registrationCount.value
            : this.registrationCount,
        freeSlots: freeSlots.present ? freeSlots.value : this.freeSlots,
        link: link.present ? link.value : this.link,
        baseUrl: baseUrl ?? this.baseUrl,
        clientEventId:
            clientEventId.present ? clientEventId.value : this.clientEventId,
      );
  Event copyWithCompanion(EventsCompanion data) {
    return Event(
      id: data.id.present ? data.id.value : this.id,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      startDateAndTime: data.startDateAndTime.present
          ? data.startDateAndTime.value
          : this.startDateAndTime,
      endDateAndTime: data.endDateAndTime.present
          ? data.endDateAndTime.value
          : this.endDateAndTime,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      location: data.location.present ? data.location.value : this.location,
      groupId: data.groupId.present ? data.groupId.value : this.groupId,
      time: data.time.present ? data.time.value : this.time,
      numberOfDays: data.numberOfDays.present
          ? data.numberOfDays.value
          : this.numberOfDays,
      contactName:
          data.contactName.present ? data.contactName.value : this.contactName,
      contactEmail: data.contactEmail.present
          ? data.contactEmail.value
          : this.contactEmail,
      maxParticipants: data.maxParticipants.present
          ? data.maxParticipants.value
          : this.maxParticipants,
      image: data.image.present ? data.image.value : this.image,
      attachments:
          data.attachments.present ? data.attachments.value : this.attachments,
      costMember:
          data.costMember.present ? data.costMember.value : this.costMember,
      costGuest: data.costGuest.present ? data.costGuest.value : this.costGuest,
      costCompanion: data.costCompanion.present
          ? data.costCompanion.value
          : this.costCompanion,
      cost: data.cost.present ? data.cost.value : this.cost,
      publicType:
          data.publicType.present ? data.publicType.value : this.publicType,
      type: data.type.present ? data.type.value : this.type,
      registrationStart: data.registrationStart.present
          ? data.registrationStart.value
          : this.registrationStart,
      registrationDeadline: data.registrationDeadline.present
          ? data.registrationDeadline.value
          : this.registrationDeadline,
      visibilityType: data.visibilityType.present
          ? data.visibilityType.value
          : this.visibilityType,
      deregistrationDeadline: data.deregistrationDeadline.present
          ? data.deregistrationDeadline.value
          : this.deregistrationDeadline,
      maxCompanions: data.maxCompanions.present
          ? data.maxCompanions.value
          : this.maxCompanions,
      seriesEventId: data.seriesEventId.present
          ? data.seriesEventId.value
          : this.seriesEventId,
      visibilityAssociation: data.visibilityAssociation.present
          ? data.visibilityAssociation.value
          : this.visibilityAssociation,
      rv: data.rv.present ? data.rv.value : this.rv,
      abbreviation: data.abbreviation.present
          ? data.abbreviation.value
          : this.abbreviation,
      organization: data.organization.present
          ? data.organization.value
          : this.organization,
      registrationCount: data.registrationCount.present
          ? data.registrationCount.value
          : this.registrationCount,
      freeSlots: data.freeSlots.present ? data.freeSlots.value : this.freeSlots,
      link: data.link.present ? data.link.value : this.link,
      baseUrl: data.baseUrl.present ? data.baseUrl.value : this.baseUrl,
      clientEventId: data.clientEventId.present
          ? data.clientEventId.value
          : this.clientEventId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('clientId: $clientId, ')
          ..write('startDateAndTime: $startDateAndTime, ')
          ..write('endDateAndTime: $endDateAndTime, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('location: $location, ')
          ..write('groupId: $groupId, ')
          ..write('time: $time, ')
          ..write('numberOfDays: $numberOfDays, ')
          ..write('contactName: $contactName, ')
          ..write('contactEmail: $contactEmail, ')
          ..write('maxParticipants: $maxParticipants, ')
          ..write('image: $image, ')
          ..write('attachments: $attachments, ')
          ..write('costMember: $costMember, ')
          ..write('costGuest: $costGuest, ')
          ..write('costCompanion: $costCompanion, ')
          ..write('cost: $cost, ')
          ..write('publicType: $publicType, ')
          ..write('type: $type, ')
          ..write('registrationStart: $registrationStart, ')
          ..write('registrationDeadline: $registrationDeadline, ')
          ..write('visibilityType: $visibilityType, ')
          ..write('deregistrationDeadline: $deregistrationDeadline, ')
          ..write('maxCompanions: $maxCompanions, ')
          ..write('seriesEventId: $seriesEventId, ')
          ..write('visibilityAssociation: $visibilityAssociation, ')
          ..write('rv: $rv, ')
          ..write('abbreviation: $abbreviation, ')
          ..write('organization: $organization, ')
          ..write('registrationCount: $registrationCount, ')
          ..write('freeSlots: $freeSlots, ')
          ..write('link: $link, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('clientEventId: $clientEventId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        clientId,
        startDateAndTime,
        endDateAndTime,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        contactName,
        contactEmail,
        maxParticipants,
        image,
        attachments,
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        type,
        registrationStart,
        registrationDeadline,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        seriesEventId,
        visibilityAssociation,
        rv,
        abbreviation,
        organization,
        registrationCount,
        freeSlots,
        link,
        baseUrl,
        clientEventId
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.clientId == this.clientId &&
          other.startDateAndTime == this.startDateAndTime &&
          other.endDateAndTime == this.endDateAndTime &&
          other.title == this.title &&
          other.description == this.description &&
          other.location == this.location &&
          other.groupId == this.groupId &&
          other.time == this.time &&
          other.numberOfDays == this.numberOfDays &&
          other.contactName == this.contactName &&
          other.contactEmail == this.contactEmail &&
          other.maxParticipants == this.maxParticipants &&
          other.image == this.image &&
          other.attachments == this.attachments &&
          other.costMember == this.costMember &&
          other.costGuest == this.costGuest &&
          other.costCompanion == this.costCompanion &&
          other.cost == this.cost &&
          other.publicType == this.publicType &&
          other.type == this.type &&
          other.registrationStart == this.registrationStart &&
          other.registrationDeadline == this.registrationDeadline &&
          other.visibilityType == this.visibilityType &&
          other.deregistrationDeadline == this.deregistrationDeadline &&
          other.maxCompanions == this.maxCompanions &&
          other.seriesEventId == this.seriesEventId &&
          other.visibilityAssociation == this.visibilityAssociation &&
          other.rv == this.rv &&
          other.abbreviation == this.abbreviation &&
          other.organization == this.organization &&
          other.registrationCount == this.registrationCount &&
          other.freeSlots == this.freeSlots &&
          other.link == this.link &&
          other.baseUrl == this.baseUrl &&
          other.clientEventId == this.clientEventId);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<int> id;
  final Value<int?> clientId;
  final Value<DateTime> startDateAndTime;
  final Value<DateTime> endDateAndTime;
  final Value<String> title;
  final Value<String?> description;
  final Value<String?> location;
  final Value<int?> groupId;
  final Value<String?> time;
  final Value<int?> numberOfDays;
  final Value<String?> contactName;
  final Value<String?> contactEmail;
  final Value<int?> maxParticipants;
  final Value<String?> image;
  final Value<String?> attachments;
  final Value<double?> costMember;
  final Value<double?> costGuest;
  final Value<double?> costCompanion;
  final Value<String?> cost;
  final Value<int?> publicType;
  final Value<int?> type;
  final Value<DateTime?> registrationStart;
  final Value<DateTime?> registrationDeadline;
  final Value<int?> visibilityType;
  final Value<DateTime?> deregistrationDeadline;
  final Value<int?> maxCompanions;
  final Value<int?> seriesEventId;
  final Value<int?> visibilityAssociation;
  final Value<bool?> rv;
  final Value<String?> abbreviation;
  final Value<String?> organization;
  final Value<int?> registrationCount;
  final Value<String?> freeSlots;
  final Value<String?> link;
  final Value<String> baseUrl;
  final Value<String?> clientEventId;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.clientId = const Value.absent(),
    this.startDateAndTime = const Value.absent(),
    this.endDateAndTime = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.location = const Value.absent(),
    this.groupId = const Value.absent(),
    this.time = const Value.absent(),
    this.numberOfDays = const Value.absent(),
    this.contactName = const Value.absent(),
    this.contactEmail = const Value.absent(),
    this.maxParticipants = const Value.absent(),
    this.image = const Value.absent(),
    this.attachments = const Value.absent(),
    this.costMember = const Value.absent(),
    this.costGuest = const Value.absent(),
    this.costCompanion = const Value.absent(),
    this.cost = const Value.absent(),
    this.publicType = const Value.absent(),
    this.type = const Value.absent(),
    this.registrationStart = const Value.absent(),
    this.registrationDeadline = const Value.absent(),
    this.visibilityType = const Value.absent(),
    this.deregistrationDeadline = const Value.absent(),
    this.maxCompanions = const Value.absent(),
    this.seriesEventId = const Value.absent(),
    this.visibilityAssociation = const Value.absent(),
    this.rv = const Value.absent(),
    this.abbreviation = const Value.absent(),
    this.organization = const Value.absent(),
    this.registrationCount = const Value.absent(),
    this.freeSlots = const Value.absent(),
    this.link = const Value.absent(),
    this.baseUrl = const Value.absent(),
    this.clientEventId = const Value.absent(),
  });
  EventsCompanion.insert({
    this.id = const Value.absent(),
    this.clientId = const Value.absent(),
    required DateTime startDateAndTime,
    required DateTime endDateAndTime,
    required String title,
    this.description = const Value.absent(),
    this.location = const Value.absent(),
    this.groupId = const Value.absent(),
    this.time = const Value.absent(),
    this.numberOfDays = const Value.absent(),
    this.contactName = const Value.absent(),
    this.contactEmail = const Value.absent(),
    this.maxParticipants = const Value.absent(),
    this.image = const Value.absent(),
    this.attachments = const Value.absent(),
    this.costMember = const Value.absent(),
    this.costGuest = const Value.absent(),
    this.costCompanion = const Value.absent(),
    this.cost = const Value.absent(),
    this.publicType = const Value.absent(),
    this.type = const Value.absent(),
    this.registrationStart = const Value.absent(),
    this.registrationDeadline = const Value.absent(),
    this.visibilityType = const Value.absent(),
    this.deregistrationDeadline = const Value.absent(),
    this.maxCompanions = const Value.absent(),
    this.seriesEventId = const Value.absent(),
    this.visibilityAssociation = const Value.absent(),
    this.rv = const Value.absent(),
    this.abbreviation = const Value.absent(),
    this.organization = const Value.absent(),
    this.registrationCount = const Value.absent(),
    this.freeSlots = const Value.absent(),
    this.link = const Value.absent(),
    required String baseUrl,
    this.clientEventId = const Value.absent(),
  })  : startDateAndTime = Value(startDateAndTime),
        endDateAndTime = Value(endDateAndTime),
        title = Value(title),
        baseUrl = Value(baseUrl);
  static Insertable<Event> custom({
    Expression<int>? id,
    Expression<int>? clientId,
    Expression<DateTime>? startDateAndTime,
    Expression<DateTime>? endDateAndTime,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? location,
    Expression<int>? groupId,
    Expression<String>? time,
    Expression<int>? numberOfDays,
    Expression<String>? contactName,
    Expression<String>? contactEmail,
    Expression<int>? maxParticipants,
    Expression<String>? image,
    Expression<String>? attachments,
    Expression<double>? costMember,
    Expression<double>? costGuest,
    Expression<double>? costCompanion,
    Expression<String>? cost,
    Expression<int>? publicType,
    Expression<int>? type,
    Expression<DateTime>? registrationStart,
    Expression<DateTime>? registrationDeadline,
    Expression<int>? visibilityType,
    Expression<DateTime>? deregistrationDeadline,
    Expression<int>? maxCompanions,
    Expression<int>? seriesEventId,
    Expression<int>? visibilityAssociation,
    Expression<bool>? rv,
    Expression<String>? abbreviation,
    Expression<String>? organization,
    Expression<int>? registrationCount,
    Expression<String>? freeSlots,
    Expression<String>? link,
    Expression<String>? baseUrl,
    Expression<String>? clientEventId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientId != null) 'client_id': clientId,
      if (startDateAndTime != null) 'start_date_and_time': startDateAndTime,
      if (endDateAndTime != null) 'end_date_and_time': endDateAndTime,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (location != null) 'location': location,
      if (groupId != null) 'group_id': groupId,
      if (time != null) 'time': time,
      if (numberOfDays != null) 'number_of_days': numberOfDays,
      if (contactName != null) 'contact_name': contactName,
      if (contactEmail != null) 'contact_email': contactEmail,
      if (maxParticipants != null) 'max_participants': maxParticipants,
      if (image != null) 'image': image,
      if (attachments != null) 'attachments': attachments,
      if (costMember != null) 'cost_member': costMember,
      if (costGuest != null) 'cost_guest': costGuest,
      if (costCompanion != null) 'cost_companion': costCompanion,
      if (cost != null) 'cost': cost,
      if (publicType != null) 'public_type': publicType,
      if (type != null) 'type': type,
      if (registrationStart != null) 'registration_start': registrationStart,
      if (registrationDeadline != null)
        'registration_deadline': registrationDeadline,
      if (visibilityType != null) 'visibility_type': visibilityType,
      if (deregistrationDeadline != null)
        'deregistration_deadline': deregistrationDeadline,
      if (maxCompanions != null) 'max_companions': maxCompanions,
      if (seriesEventId != null) 'series_event_id': seriesEventId,
      if (visibilityAssociation != null)
        'visibility_association': visibilityAssociation,
      if (rv != null) 'rv': rv,
      if (abbreviation != null) 'abbreviation': abbreviation,
      if (organization != null) 'organization': organization,
      if (registrationCount != null) 'registration_count': registrationCount,
      if (freeSlots != null) 'free_slots': freeSlots,
      if (link != null) 'link': link,
      if (baseUrl != null) 'base_url': baseUrl,
      if (clientEventId != null) 'client_event_id': clientEventId,
    });
  }

  EventsCompanion copyWith(
      {Value<int>? id,
      Value<int?>? clientId,
      Value<DateTime>? startDateAndTime,
      Value<DateTime>? endDateAndTime,
      Value<String>? title,
      Value<String?>? description,
      Value<String?>? location,
      Value<int?>? groupId,
      Value<String?>? time,
      Value<int?>? numberOfDays,
      Value<String?>? contactName,
      Value<String?>? contactEmail,
      Value<int?>? maxParticipants,
      Value<String?>? image,
      Value<String?>? attachments,
      Value<double?>? costMember,
      Value<double?>? costGuest,
      Value<double?>? costCompanion,
      Value<String?>? cost,
      Value<int?>? publicType,
      Value<int?>? type,
      Value<DateTime?>? registrationStart,
      Value<DateTime?>? registrationDeadline,
      Value<int?>? visibilityType,
      Value<DateTime?>? deregistrationDeadline,
      Value<int?>? maxCompanions,
      Value<int?>? seriesEventId,
      Value<int?>? visibilityAssociation,
      Value<bool?>? rv,
      Value<String?>? abbreviation,
      Value<String?>? organization,
      Value<int?>? registrationCount,
      Value<String?>? freeSlots,
      Value<String?>? link,
      Value<String>? baseUrl,
      Value<String?>? clientEventId}) {
    return EventsCompanion(
      id: id ?? this.id,
      clientId: clientId ?? this.clientId,
      startDateAndTime: startDateAndTime ?? this.startDateAndTime,
      endDateAndTime: endDateAndTime ?? this.endDateAndTime,
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      groupId: groupId ?? this.groupId,
      time: time ?? this.time,
      numberOfDays: numberOfDays ?? this.numberOfDays,
      contactName: contactName ?? this.contactName,
      contactEmail: contactEmail ?? this.contactEmail,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      image: image ?? this.image,
      attachments: attachments ?? this.attachments,
      costMember: costMember ?? this.costMember,
      costGuest: costGuest ?? this.costGuest,
      costCompanion: costCompanion ?? this.costCompanion,
      cost: cost ?? this.cost,
      publicType: publicType ?? this.publicType,
      type: type ?? this.type,
      registrationStart: registrationStart ?? this.registrationStart,
      registrationDeadline: registrationDeadline ?? this.registrationDeadline,
      visibilityType: visibilityType ?? this.visibilityType,
      deregistrationDeadline:
          deregistrationDeadline ?? this.deregistrationDeadline,
      maxCompanions: maxCompanions ?? this.maxCompanions,
      seriesEventId: seriesEventId ?? this.seriesEventId,
      visibilityAssociation:
          visibilityAssociation ?? this.visibilityAssociation,
      rv: rv ?? this.rv,
      abbreviation: abbreviation ?? this.abbreviation,
      organization: organization ?? this.organization,
      registrationCount: registrationCount ?? this.registrationCount,
      freeSlots: freeSlots ?? this.freeSlots,
      link: link ?? this.link,
      baseUrl: baseUrl ?? this.baseUrl,
      clientEventId: clientEventId ?? this.clientEventId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<int>(clientId.value);
    }
    if (startDateAndTime.present) {
      map['start_date_and_time'] = Variable<DateTime>(startDateAndTime.value);
    }
    if (endDateAndTime.present) {
      map['end_date_and_time'] = Variable<DateTime>(endDateAndTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (numberOfDays.present) {
      map['number_of_days'] = Variable<int>(numberOfDays.value);
    }
    if (contactName.present) {
      map['contact_name'] = Variable<String>(contactName.value);
    }
    if (contactEmail.present) {
      map['contact_email'] = Variable<String>(contactEmail.value);
    }
    if (maxParticipants.present) {
      map['max_participants'] = Variable<int>(maxParticipants.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (attachments.present) {
      map['attachments'] = Variable<String>(attachments.value);
    }
    if (costMember.present) {
      map['cost_member'] = Variable<double>(costMember.value);
    }
    if (costGuest.present) {
      map['cost_guest'] = Variable<double>(costGuest.value);
    }
    if (costCompanion.present) {
      map['cost_companion'] = Variable<double>(costCompanion.value);
    }
    if (cost.present) {
      map['cost'] = Variable<String>(cost.value);
    }
    if (publicType.present) {
      map['public_type'] = Variable<int>(publicType.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (registrationStart.present) {
      map['registration_start'] = Variable<DateTime>(registrationStart.value);
    }
    if (registrationDeadline.present) {
      map['registration_deadline'] =
          Variable<DateTime>(registrationDeadline.value);
    }
    if (visibilityType.present) {
      map['visibility_type'] = Variable<int>(visibilityType.value);
    }
    if (deregistrationDeadline.present) {
      map['deregistration_deadline'] =
          Variable<DateTime>(deregistrationDeadline.value);
    }
    if (maxCompanions.present) {
      map['max_companions'] = Variable<int>(maxCompanions.value);
    }
    if (seriesEventId.present) {
      map['series_event_id'] = Variable<int>(seriesEventId.value);
    }
    if (visibilityAssociation.present) {
      map['visibility_association'] =
          Variable<int>(visibilityAssociation.value);
    }
    if (rv.present) {
      map['rv'] = Variable<bool>(rv.value);
    }
    if (abbreviation.present) {
      map['abbreviation'] = Variable<String>(abbreviation.value);
    }
    if (organization.present) {
      map['organization'] = Variable<String>(organization.value);
    }
    if (registrationCount.present) {
      map['registration_count'] = Variable<int>(registrationCount.value);
    }
    if (freeSlots.present) {
      map['free_slots'] = Variable<String>(freeSlots.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (baseUrl.present) {
      map['base_url'] = Variable<String>(baseUrl.value);
    }
    if (clientEventId.present) {
      map['client_event_id'] = Variable<String>(clientEventId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('clientId: $clientId, ')
          ..write('startDateAndTime: $startDateAndTime, ')
          ..write('endDateAndTime: $endDateAndTime, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('location: $location, ')
          ..write('groupId: $groupId, ')
          ..write('time: $time, ')
          ..write('numberOfDays: $numberOfDays, ')
          ..write('contactName: $contactName, ')
          ..write('contactEmail: $contactEmail, ')
          ..write('maxParticipants: $maxParticipants, ')
          ..write('image: $image, ')
          ..write('attachments: $attachments, ')
          ..write('costMember: $costMember, ')
          ..write('costGuest: $costGuest, ')
          ..write('costCompanion: $costCompanion, ')
          ..write('cost: $cost, ')
          ..write('publicType: $publicType, ')
          ..write('type: $type, ')
          ..write('registrationStart: $registrationStart, ')
          ..write('registrationDeadline: $registrationDeadline, ')
          ..write('visibilityType: $visibilityType, ')
          ..write('deregistrationDeadline: $deregistrationDeadline, ')
          ..write('maxCompanions: $maxCompanions, ')
          ..write('seriesEventId: $seriesEventId, ')
          ..write('visibilityAssociation: $visibilityAssociation, ')
          ..write('rv: $rv, ')
          ..write('abbreviation: $abbreviation, ')
          ..write('organization: $organization, ')
          ..write('registrationCount: $registrationCount, ')
          ..write('freeSlots: $freeSlots, ')
          ..write('link: $link, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('clientEventId: $clientEventId')
          ..write(')'))
        .toString();
  }
}

class $RegisteredTableTable extends RegisteredTable
    with TableInfo<$RegisteredTableTable, RegisteredTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RegisteredTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _eventIdMeta =
      const VerificationMeta('eventId');
  @override
  late final GeneratedColumn<int> eventId = GeneratedColumn<int>(
      'event_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [eventId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'registered';
  @override
  VerificationContext validateIntegrity(
      Insertable<RegisteredTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {eventId};
  @override
  RegisteredTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RegisteredTableData(
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}event_id'])!,
    );
  }

  @override
  $RegisteredTableTable createAlias(String alias) {
    return $RegisteredTableTable(attachedDatabase, alias);
  }
}

class RegisteredTableData extends DataClass
    implements Insertable<RegisteredTableData> {
  final int eventId;
  const RegisteredTableData({required this.eventId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['event_id'] = Variable<int>(eventId);
    return map;
  }

  RegisteredTableCompanion toCompanion(bool nullToAbsent) {
    return RegisteredTableCompanion(
      eventId: Value(eventId),
    );
  }

  factory RegisteredTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RegisteredTableData(
      eventId: serializer.fromJson<int>(json['eventId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'eventId': serializer.toJson<int>(eventId),
    };
  }

  RegisteredTableData copyWith({int? eventId}) => RegisteredTableData(
        eventId: eventId ?? this.eventId,
      );
  RegisteredTableData copyWithCompanion(RegisteredTableCompanion data) {
    return RegisteredTableData(
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RegisteredTableData(')
          ..write('eventId: $eventId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => eventId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RegisteredTableData && other.eventId == this.eventId);
}

class RegisteredTableCompanion extends UpdateCompanion<RegisteredTableData> {
  final Value<int> eventId;
  const RegisteredTableCompanion({
    this.eventId = const Value.absent(),
  });
  RegisteredTableCompanion.insert({
    this.eventId = const Value.absent(),
  });
  static Insertable<RegisteredTableData> custom({
    Expression<int>? eventId,
  }) {
    return RawValuesInsertable({
      if (eventId != null) 'event_id': eventId,
    });
  }

  RegisteredTableCompanion copyWith({Value<int>? eventId}) {
    return RegisteredTableCompanion(
      eventId: eventId ?? this.eventId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (eventId.present) {
      map['event_id'] = Variable<int>(eventId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RegisteredTableCompanion(')
          ..write('eventId: $eventId')
          ..write(')'))
        .toString();
  }
}

class $NewsTableTable extends NewsTable
    with TableInfo<$NewsTableTable, NewsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageURLMeta =
      const VerificationMeta('imageURL');
  @override
  late final GeneratedColumn<String> imageURL = GeneratedColumn<String>(
      'image_u_r_l', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _websiteURLMeta =
      const VerificationMeta('websiteURL');
  @override
  late final GeneratedColumn<String> websiteURL = GeneratedColumn<String>(
      'website_u_r_l', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderNumberMeta =
      const VerificationMeta('orderNumber');
  @override
  late final GeneratedColumn<int> orderNumber = GeneratedColumn<int>(
      'order_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, imageURL, websiteURL, orderNumber];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news';
  @override
  VerificationContext validateIntegrity(Insertable<NewsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
          imageURL.isAcceptableOrUnknown(data['image_u_r_l']!, _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    if (data.containsKey('website_u_r_l')) {
      context.handle(
          _websiteURLMeta,
          websiteURL.isAcceptableOrUnknown(
              data['website_u_r_l']!, _websiteURLMeta));
    } else if (isInserting) {
      context.missing(_websiteURLMeta);
    }
    if (data.containsKey('order_number')) {
      context.handle(
          _orderNumberMeta,
          orderNumber.isAcceptableOrUnknown(
              data['order_number']!, _orderNumberMeta));
    } else if (isInserting) {
      context.missing(_orderNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NewsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NewsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      imageURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_u_r_l'])!,
      websiteURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website_u_r_l'])!,
      orderNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_number'])!,
    );
  }

  @override
  $NewsTableTable createAlias(String alias) {
    return $NewsTableTable(attachedDatabase, alias);
  }
}

class NewsTableData extends DataClass implements Insertable<NewsTableData> {
  final int id;
  final String title;
  final String content;
  final String imageURL;
  final String websiteURL;
  final int orderNumber;
  const NewsTableData(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageURL,
      required this.websiteURL,
      required this.orderNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['image_u_r_l'] = Variable<String>(imageURL);
    map['website_u_r_l'] = Variable<String>(websiteURL);
    map['order_number'] = Variable<int>(orderNumber);
    return map;
  }

  NewsTableCompanion toCompanion(bool nullToAbsent) {
    return NewsTableCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      imageURL: Value(imageURL),
      websiteURL: Value(websiteURL),
      orderNumber: Value(orderNumber),
    );
  }

  factory NewsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NewsTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
      websiteURL: serializer.fromJson<String>(json['websiteURL']),
      orderNumber: serializer.fromJson<int>(json['orderNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'imageURL': serializer.toJson<String>(imageURL),
      'websiteURL': serializer.toJson<String>(websiteURL),
      'orderNumber': serializer.toJson<int>(orderNumber),
    };
  }

  NewsTableData copyWith(
          {int? id,
          String? title,
          String? content,
          String? imageURL,
          String? websiteURL,
          int? orderNumber}) =>
      NewsTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        imageURL: imageURL ?? this.imageURL,
        websiteURL: websiteURL ?? this.websiteURL,
        orderNumber: orderNumber ?? this.orderNumber,
      );
  NewsTableData copyWithCompanion(NewsTableCompanion data) {
    return NewsTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      imageURL: data.imageURL.present ? data.imageURL.value : this.imageURL,
      websiteURL:
          data.websiteURL.present ? data.websiteURL.value : this.websiteURL,
      orderNumber:
          data.orderNumber.present ? data.orderNumber.value : this.orderNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NewsTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('imageURL: $imageURL, ')
          ..write('websiteURL: $websiteURL, ')
          ..write('orderNumber: $orderNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, imageURL, websiteURL, orderNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NewsTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.imageURL == this.imageURL &&
          other.websiteURL == this.websiteURL &&
          other.orderNumber == this.orderNumber);
}

class NewsTableCompanion extends UpdateCompanion<NewsTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<String> imageURL;
  final Value<String> websiteURL;
  final Value<int> orderNumber;
  const NewsTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.websiteURL = const Value.absent(),
    this.orderNumber = const Value.absent(),
  });
  NewsTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    required String imageURL,
    required String websiteURL,
    required int orderNumber,
  })  : title = Value(title),
        content = Value(content),
        imageURL = Value(imageURL),
        websiteURL = Value(websiteURL),
        orderNumber = Value(orderNumber);
  static Insertable<NewsTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? imageURL,
    Expression<String>? websiteURL,
    Expression<int>? orderNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (websiteURL != null) 'website_u_r_l': websiteURL,
      if (orderNumber != null) 'order_number': orderNumber,
    });
  }

  NewsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<String>? imageURL,
      Value<String>? websiteURL,
      Value<int>? orderNumber}) {
    return NewsTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      imageURL: imageURL ?? this.imageURL,
      websiteURL: websiteURL ?? this.websiteURL,
      orderNumber: orderNumber ?? this.orderNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (websiteURL.present) {
      map['website_u_r_l'] = Variable<String>(websiteURL.value);
    }
    if (orderNumber.present) {
      map['order_number'] = Variable<int>(orderNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('imageURL: $imageURL, ')
          ..write('websiteURL: $websiteURL, ')
          ..write('orderNumber: $orderNumber')
          ..write(')'))
        .toString();
  }
}

class $ActivitiesTableTable extends ActivitiesTable
    with TableInfo<$ActivitiesTableTable, ActivitiesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivitiesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageURLMeta =
      const VerificationMeta('imageURL');
  @override
  late final GeneratedColumn<String> imageURL = GeneratedColumn<String>(
      'image_u_r_l', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _websiteURLMeta =
      const VerificationMeta('websiteURL');
  @override
  late final GeneratedColumn<String> websiteURL = GeneratedColumn<String>(
      'website_u_r_l', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderNumberMeta =
      const VerificationMeta('orderNumber');
  @override
  late final GeneratedColumn<int> orderNumber = GeneratedColumn<int>(
      'order_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, imageURL, websiteURL, orderNumber];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activities';
  @override
  VerificationContext validateIntegrity(
      Insertable<ActivitiesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
          imageURL.isAcceptableOrUnknown(data['image_u_r_l']!, _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    if (data.containsKey('website_u_r_l')) {
      context.handle(
          _websiteURLMeta,
          websiteURL.isAcceptableOrUnknown(
              data['website_u_r_l']!, _websiteURLMeta));
    } else if (isInserting) {
      context.missing(_websiteURLMeta);
    }
    if (data.containsKey('order_number')) {
      context.handle(
          _orderNumberMeta,
          orderNumber.isAcceptableOrUnknown(
              data['order_number']!, _orderNumberMeta));
    } else if (isInserting) {
      context.missing(_orderNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivitiesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivitiesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      imageURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_u_r_l'])!,
      websiteURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website_u_r_l'])!,
      orderNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_number'])!,
    );
  }

  @override
  $ActivitiesTableTable createAlias(String alias) {
    return $ActivitiesTableTable(attachedDatabase, alias);
  }
}

class ActivitiesTableData extends DataClass
    implements Insertable<ActivitiesTableData> {
  final int id;
  final String title;
  final String content;
  final String imageURL;
  final String websiteURL;
  final int orderNumber;
  const ActivitiesTableData(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageURL,
      required this.websiteURL,
      required this.orderNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['image_u_r_l'] = Variable<String>(imageURL);
    map['website_u_r_l'] = Variable<String>(websiteURL);
    map['order_number'] = Variable<int>(orderNumber);
    return map;
  }

  ActivitiesTableCompanion toCompanion(bool nullToAbsent) {
    return ActivitiesTableCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      imageURL: Value(imageURL),
      websiteURL: Value(websiteURL),
      orderNumber: Value(orderNumber),
    );
  }

  factory ActivitiesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivitiesTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
      websiteURL: serializer.fromJson<String>(json['websiteURL']),
      orderNumber: serializer.fromJson<int>(json['orderNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'imageURL': serializer.toJson<String>(imageURL),
      'websiteURL': serializer.toJson<String>(websiteURL),
      'orderNumber': serializer.toJson<int>(orderNumber),
    };
  }

  ActivitiesTableData copyWith(
          {int? id,
          String? title,
          String? content,
          String? imageURL,
          String? websiteURL,
          int? orderNumber}) =>
      ActivitiesTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        imageURL: imageURL ?? this.imageURL,
        websiteURL: websiteURL ?? this.websiteURL,
        orderNumber: orderNumber ?? this.orderNumber,
      );
  ActivitiesTableData copyWithCompanion(ActivitiesTableCompanion data) {
    return ActivitiesTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      imageURL: data.imageURL.present ? data.imageURL.value : this.imageURL,
      websiteURL:
          data.websiteURL.present ? data.websiteURL.value : this.websiteURL,
      orderNumber:
          data.orderNumber.present ? data.orderNumber.value : this.orderNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivitiesTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('imageURL: $imageURL, ')
          ..write('websiteURL: $websiteURL, ')
          ..write('orderNumber: $orderNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, imageURL, websiteURL, orderNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivitiesTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.imageURL == this.imageURL &&
          other.websiteURL == this.websiteURL &&
          other.orderNumber == this.orderNumber);
}

class ActivitiesTableCompanion extends UpdateCompanion<ActivitiesTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<String> imageURL;
  final Value<String> websiteURL;
  final Value<int> orderNumber;
  const ActivitiesTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.websiteURL = const Value.absent(),
    this.orderNumber = const Value.absent(),
  });
  ActivitiesTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    required String imageURL,
    required String websiteURL,
    required int orderNumber,
  })  : title = Value(title),
        content = Value(content),
        imageURL = Value(imageURL),
        websiteURL = Value(websiteURL),
        orderNumber = Value(orderNumber);
  static Insertable<ActivitiesTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? imageURL,
    Expression<String>? websiteURL,
    Expression<int>? orderNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (websiteURL != null) 'website_u_r_l': websiteURL,
      if (orderNumber != null) 'order_number': orderNumber,
    });
  }

  ActivitiesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<String>? imageURL,
      Value<String>? websiteURL,
      Value<int>? orderNumber}) {
    return ActivitiesTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      imageURL: imageURL ?? this.imageURL,
      websiteURL: websiteURL ?? this.websiteURL,
      orderNumber: orderNumber ?? this.orderNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (websiteURL.present) {
      map['website_u_r_l'] = Variable<String>(websiteURL.value);
    }
    if (orderNumber.present) {
      map['order_number'] = Variable<int>(orderNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivitiesTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('imageURL: $imageURL, ')
          ..write('websiteURL: $websiteURL, ')
          ..write('orderNumber: $orderNumber')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GamesTable games = $GamesTable(this);
  late final $EventsTable events = $EventsTable(this);
  late final $RegisteredTableTable registeredTable =
      $RegisteredTableTable(this);
  late final $NewsTableTable newsTable = $NewsTableTable(this);
  late final $ActivitiesTableTable activitiesTable =
      $ActivitiesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [games, events, registeredTable, newsTable, activitiesTable];
}

typedef $$GamesTableCreateCompanionBuilder = GamesCompanion Function({
  required String id,
  required String title,
  required int actionScore,
  required int cognitiveScore,
  required String numberOfPlayers,
  required String duration,
  required String ageLimitations,
  required String spaceLimitations,
  required String materials,
  required String goalOfGame,
  required String preparationsInstructions,
  required String gameplayInstructions,
  required String endingInstructions,
  required String categories,
  required String author,
  required bool reviewed,
  required bool alreadyPlayed,
  Value<int> rowid,
});
typedef $$GamesTableUpdateCompanionBuilder = GamesCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<int> actionScore,
  Value<int> cognitiveScore,
  Value<String> numberOfPlayers,
  Value<String> duration,
  Value<String> ageLimitations,
  Value<String> spaceLimitations,
  Value<String> materials,
  Value<String> goalOfGame,
  Value<String> preparationsInstructions,
  Value<String> gameplayInstructions,
  Value<String> endingInstructions,
  Value<String> categories,
  Value<String> author,
  Value<bool> reviewed,
  Value<bool> alreadyPlayed,
  Value<int> rowid,
});

class $$GamesTableFilterComposer extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get actionScore => $composableBuilder(
      column: $table.actionScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get cognitiveScore => $composableBuilder(
      column: $table.cognitiveScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get numberOfPlayers => $composableBuilder(
      column: $table.numberOfPlayers,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get duration => $composableBuilder(
      column: $table.duration, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ageLimitations => $composableBuilder(
      column: $table.ageLimitations,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get spaceLimitations => $composableBuilder(
      column: $table.spaceLimitations,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get materials => $composableBuilder(
      column: $table.materials, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get goalOfGame => $composableBuilder(
      column: $table.goalOfGame, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preparationsInstructions => $composableBuilder(
      column: $table.preparationsInstructions,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gameplayInstructions => $composableBuilder(
      column: $table.gameplayInstructions,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get endingInstructions => $composableBuilder(
      column: $table.endingInstructions,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get reviewed => $composableBuilder(
      column: $table.reviewed, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get alreadyPlayed => $composableBuilder(
      column: $table.alreadyPlayed, builder: (column) => ColumnFilters(column));
}

class $$GamesTableOrderingComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get actionScore => $composableBuilder(
      column: $table.actionScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get cognitiveScore => $composableBuilder(
      column: $table.cognitiveScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get numberOfPlayers => $composableBuilder(
      column: $table.numberOfPlayers,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get duration => $composableBuilder(
      column: $table.duration, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ageLimitations => $composableBuilder(
      column: $table.ageLimitations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get spaceLimitations => $composableBuilder(
      column: $table.spaceLimitations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get materials => $composableBuilder(
      column: $table.materials, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get goalOfGame => $composableBuilder(
      column: $table.goalOfGame, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preparationsInstructions => $composableBuilder(
      column: $table.preparationsInstructions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gameplayInstructions => $composableBuilder(
      column: $table.gameplayInstructions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get endingInstructions => $composableBuilder(
      column: $table.endingInstructions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get reviewed => $composableBuilder(
      column: $table.reviewed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get alreadyPlayed => $composableBuilder(
      column: $table.alreadyPlayed,
      builder: (column) => ColumnOrderings(column));
}

class $$GamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get actionScore => $composableBuilder(
      column: $table.actionScore, builder: (column) => column);

  GeneratedColumn<int> get cognitiveScore => $composableBuilder(
      column: $table.cognitiveScore, builder: (column) => column);

  GeneratedColumn<String> get numberOfPlayers => $composableBuilder(
      column: $table.numberOfPlayers, builder: (column) => column);

  GeneratedColumn<String> get duration =>
      $composableBuilder(column: $table.duration, builder: (column) => column);

  GeneratedColumn<String> get ageLimitations => $composableBuilder(
      column: $table.ageLimitations, builder: (column) => column);

  GeneratedColumn<String> get spaceLimitations => $composableBuilder(
      column: $table.spaceLimitations, builder: (column) => column);

  GeneratedColumn<String> get materials =>
      $composableBuilder(column: $table.materials, builder: (column) => column);

  GeneratedColumn<String> get goalOfGame => $composableBuilder(
      column: $table.goalOfGame, builder: (column) => column);

  GeneratedColumn<String> get preparationsInstructions => $composableBuilder(
      column: $table.preparationsInstructions, builder: (column) => column);

  GeneratedColumn<String> get gameplayInstructions => $composableBuilder(
      column: $table.gameplayInstructions, builder: (column) => column);

  GeneratedColumn<String> get endingInstructions => $composableBuilder(
      column: $table.endingInstructions, builder: (column) => column);

  GeneratedColumn<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<bool> get reviewed =>
      $composableBuilder(column: $table.reviewed, builder: (column) => column);

  GeneratedColumn<bool> get alreadyPlayed => $composableBuilder(
      column: $table.alreadyPlayed, builder: (column) => column);
}

class $$GamesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GamesTable,
    Game,
    $$GamesTableFilterComposer,
    $$GamesTableOrderingComposer,
    $$GamesTableAnnotationComposer,
    $$GamesTableCreateCompanionBuilder,
    $$GamesTableUpdateCompanionBuilder,
    (Game, BaseReferences<_$AppDatabase, $GamesTable, Game>),
    Game,
    PrefetchHooks Function()> {
  $$GamesTableTableManager(_$AppDatabase db, $GamesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> actionScore = const Value.absent(),
            Value<int> cognitiveScore = const Value.absent(),
            Value<String> numberOfPlayers = const Value.absent(),
            Value<String> duration = const Value.absent(),
            Value<String> ageLimitations = const Value.absent(),
            Value<String> spaceLimitations = const Value.absent(),
            Value<String> materials = const Value.absent(),
            Value<String> goalOfGame = const Value.absent(),
            Value<String> preparationsInstructions = const Value.absent(),
            Value<String> gameplayInstructions = const Value.absent(),
            Value<String> endingInstructions = const Value.absent(),
            Value<String> categories = const Value.absent(),
            Value<String> author = const Value.absent(),
            Value<bool> reviewed = const Value.absent(),
            Value<bool> alreadyPlayed = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GamesCompanion(
            id: id,
            title: title,
            actionScore: actionScore,
            cognitiveScore: cognitiveScore,
            numberOfPlayers: numberOfPlayers,
            duration: duration,
            ageLimitations: ageLimitations,
            spaceLimitations: spaceLimitations,
            materials: materials,
            goalOfGame: goalOfGame,
            preparationsInstructions: preparationsInstructions,
            gameplayInstructions: gameplayInstructions,
            endingInstructions: endingInstructions,
            categories: categories,
            author: author,
            reviewed: reviewed,
            alreadyPlayed: alreadyPlayed,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            required int actionScore,
            required int cognitiveScore,
            required String numberOfPlayers,
            required String duration,
            required String ageLimitations,
            required String spaceLimitations,
            required String materials,
            required String goalOfGame,
            required String preparationsInstructions,
            required String gameplayInstructions,
            required String endingInstructions,
            required String categories,
            required String author,
            required bool reviewed,
            required bool alreadyPlayed,
            Value<int> rowid = const Value.absent(),
          }) =>
              GamesCompanion.insert(
            id: id,
            title: title,
            actionScore: actionScore,
            cognitiveScore: cognitiveScore,
            numberOfPlayers: numberOfPlayers,
            duration: duration,
            ageLimitations: ageLimitations,
            spaceLimitations: spaceLimitations,
            materials: materials,
            goalOfGame: goalOfGame,
            preparationsInstructions: preparationsInstructions,
            gameplayInstructions: gameplayInstructions,
            endingInstructions: endingInstructions,
            categories: categories,
            author: author,
            reviewed: reviewed,
            alreadyPlayed: alreadyPlayed,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GamesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GamesTable,
    Game,
    $$GamesTableFilterComposer,
    $$GamesTableOrderingComposer,
    $$GamesTableAnnotationComposer,
    $$GamesTableCreateCompanionBuilder,
    $$GamesTableUpdateCompanionBuilder,
    (Game, BaseReferences<_$AppDatabase, $GamesTable, Game>),
    Game,
    PrefetchHooks Function()>;
typedef $$EventsTableCreateCompanionBuilder = EventsCompanion Function({
  Value<int> id,
  Value<int?> clientId,
  required DateTime startDateAndTime,
  required DateTime endDateAndTime,
  required String title,
  Value<String?> description,
  Value<String?> location,
  Value<int?> groupId,
  Value<String?> time,
  Value<int?> numberOfDays,
  Value<String?> contactName,
  Value<String?> contactEmail,
  Value<int?> maxParticipants,
  Value<String?> image,
  Value<String?> attachments,
  Value<double?> costMember,
  Value<double?> costGuest,
  Value<double?> costCompanion,
  Value<String?> cost,
  Value<int?> publicType,
  Value<int?> type,
  Value<DateTime?> registrationStart,
  Value<DateTime?> registrationDeadline,
  Value<int?> visibilityType,
  Value<DateTime?> deregistrationDeadline,
  Value<int?> maxCompanions,
  Value<int?> seriesEventId,
  Value<int?> visibilityAssociation,
  Value<bool?> rv,
  Value<String?> abbreviation,
  Value<String?> organization,
  Value<int?> registrationCount,
  Value<String?> freeSlots,
  Value<String?> link,
  required String baseUrl,
  Value<String?> clientEventId,
});
typedef $$EventsTableUpdateCompanionBuilder = EventsCompanion Function({
  Value<int> id,
  Value<int?> clientId,
  Value<DateTime> startDateAndTime,
  Value<DateTime> endDateAndTime,
  Value<String> title,
  Value<String?> description,
  Value<String?> location,
  Value<int?> groupId,
  Value<String?> time,
  Value<int?> numberOfDays,
  Value<String?> contactName,
  Value<String?> contactEmail,
  Value<int?> maxParticipants,
  Value<String?> image,
  Value<String?> attachments,
  Value<double?> costMember,
  Value<double?> costGuest,
  Value<double?> costCompanion,
  Value<String?> cost,
  Value<int?> publicType,
  Value<int?> type,
  Value<DateTime?> registrationStart,
  Value<DateTime?> registrationDeadline,
  Value<int?> visibilityType,
  Value<DateTime?> deregistrationDeadline,
  Value<int?> maxCompanions,
  Value<int?> seriesEventId,
  Value<int?> visibilityAssociation,
  Value<bool?> rv,
  Value<String?> abbreviation,
  Value<String?> organization,
  Value<int?> registrationCount,
  Value<String?> freeSlots,
  Value<String?> link,
  Value<String> baseUrl,
  Value<String?> clientEventId,
});

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get clientId => $composableBuilder(
      column: $table.clientId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDateAndTime => $composableBuilder(
      column: $table.startDateAndTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDateAndTime => $composableBuilder(
      column: $table.endDateAndTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get groupId => $composableBuilder(
      column: $table.groupId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get numberOfDays => $composableBuilder(
      column: $table.numberOfDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactName => $composableBuilder(
      column: $table.contactName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxParticipants => $composableBuilder(
      column: $table.maxParticipants,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get attachments => $composableBuilder(
      column: $table.attachments, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get costMember => $composableBuilder(
      column: $table.costMember, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get costGuest => $composableBuilder(
      column: $table.costGuest, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get costCompanion => $composableBuilder(
      column: $table.costCompanion, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get publicType => $composableBuilder(
      column: $table.publicType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get registrationStart => $composableBuilder(
      column: $table.registrationStart,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get registrationDeadline => $composableBuilder(
      column: $table.registrationDeadline,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get visibilityType => $composableBuilder(
      column: $table.visibilityType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get deregistrationDeadline => $composableBuilder(
      column: $table.deregistrationDeadline,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxCompanions => $composableBuilder(
      column: $table.maxCompanions, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seriesEventId => $composableBuilder(
      column: $table.seriesEventId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get visibilityAssociation => $composableBuilder(
      column: $table.visibilityAssociation,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get rv => $composableBuilder(
      column: $table.rv, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get organization => $composableBuilder(
      column: $table.organization, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get registrationCount => $composableBuilder(
      column: $table.registrationCount,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get freeSlots => $composableBuilder(
      column: $table.freeSlots, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get clientEventId => $composableBuilder(
      column: $table.clientEventId, builder: (column) => ColumnFilters(column));
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get clientId => $composableBuilder(
      column: $table.clientId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDateAndTime => $composableBuilder(
      column: $table.startDateAndTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDateAndTime => $composableBuilder(
      column: $table.endDateAndTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get groupId => $composableBuilder(
      column: $table.groupId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get numberOfDays => $composableBuilder(
      column: $table.numberOfDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactName => $composableBuilder(
      column: $table.contactName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxParticipants => $composableBuilder(
      column: $table.maxParticipants,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get attachments => $composableBuilder(
      column: $table.attachments, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get costMember => $composableBuilder(
      column: $table.costMember, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get costGuest => $composableBuilder(
      column: $table.costGuest, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get costCompanion => $composableBuilder(
      column: $table.costCompanion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get publicType => $composableBuilder(
      column: $table.publicType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get registrationStart => $composableBuilder(
      column: $table.registrationStart,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get registrationDeadline => $composableBuilder(
      column: $table.registrationDeadline,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get visibilityType => $composableBuilder(
      column: $table.visibilityType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get deregistrationDeadline => $composableBuilder(
      column: $table.deregistrationDeadline,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxCompanions => $composableBuilder(
      column: $table.maxCompanions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seriesEventId => $composableBuilder(
      column: $table.seriesEventId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get visibilityAssociation => $composableBuilder(
      column: $table.visibilityAssociation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get rv => $composableBuilder(
      column: $table.rv, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get organization => $composableBuilder(
      column: $table.organization,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get registrationCount => $composableBuilder(
      column: $table.registrationCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get freeSlots => $composableBuilder(
      column: $table.freeSlots, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get clientEventId => $composableBuilder(
      column: $table.clientEventId,
      builder: (column) => ColumnOrderings(column));
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<DateTime> get startDateAndTime => $composableBuilder(
      column: $table.startDateAndTime, builder: (column) => column);

  GeneratedColumn<DateTime> get endDateAndTime => $composableBuilder(
      column: $table.endDateAndTime, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<int> get groupId =>
      $composableBuilder(column: $table.groupId, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<int> get numberOfDays => $composableBuilder(
      column: $table.numberOfDays, builder: (column) => column);

  GeneratedColumn<String> get contactName => $composableBuilder(
      column: $table.contactName, builder: (column) => column);

  GeneratedColumn<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail, builder: (column) => column);

  GeneratedColumn<int> get maxParticipants => $composableBuilder(
      column: $table.maxParticipants, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get attachments => $composableBuilder(
      column: $table.attachments, builder: (column) => column);

  GeneratedColumn<double> get costMember => $composableBuilder(
      column: $table.costMember, builder: (column) => column);

  GeneratedColumn<double> get costGuest =>
      $composableBuilder(column: $table.costGuest, builder: (column) => column);

  GeneratedColumn<double> get costCompanion => $composableBuilder(
      column: $table.costCompanion, builder: (column) => column);

  GeneratedColumn<String> get cost =>
      $composableBuilder(column: $table.cost, builder: (column) => column);

  GeneratedColumn<int> get publicType => $composableBuilder(
      column: $table.publicType, builder: (column) => column);

  GeneratedColumn<int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get registrationStart => $composableBuilder(
      column: $table.registrationStart, builder: (column) => column);

  GeneratedColumn<DateTime> get registrationDeadline => $composableBuilder(
      column: $table.registrationDeadline, builder: (column) => column);

  GeneratedColumn<int> get visibilityType => $composableBuilder(
      column: $table.visibilityType, builder: (column) => column);

  GeneratedColumn<DateTime> get deregistrationDeadline => $composableBuilder(
      column: $table.deregistrationDeadline, builder: (column) => column);

  GeneratedColumn<int> get maxCompanions => $composableBuilder(
      column: $table.maxCompanions, builder: (column) => column);

  GeneratedColumn<int> get seriesEventId => $composableBuilder(
      column: $table.seriesEventId, builder: (column) => column);

  GeneratedColumn<int> get visibilityAssociation => $composableBuilder(
      column: $table.visibilityAssociation, builder: (column) => column);

  GeneratedColumn<bool> get rv =>
      $composableBuilder(column: $table.rv, builder: (column) => column);

  GeneratedColumn<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation, builder: (column) => column);

  GeneratedColumn<String> get organization => $composableBuilder(
      column: $table.organization, builder: (column) => column);

  GeneratedColumn<int> get registrationCount => $composableBuilder(
      column: $table.registrationCount, builder: (column) => column);

  GeneratedColumn<String> get freeSlots =>
      $composableBuilder(column: $table.freeSlots, builder: (column) => column);

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<String> get baseUrl =>
      $composableBuilder(column: $table.baseUrl, builder: (column) => column);

  GeneratedColumn<String> get clientEventId => $composableBuilder(
      column: $table.clientEventId, builder: (column) => column);
}

class $$EventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EventsTable,
    Event,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (Event, BaseReferences<_$AppDatabase, $EventsTable, Event>),
    Event,
    PrefetchHooks Function()> {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> clientId = const Value.absent(),
            Value<DateTime> startDateAndTime = const Value.absent(),
            Value<DateTime> endDateAndTime = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<int?> groupId = const Value.absent(),
            Value<String?> time = const Value.absent(),
            Value<int?> numberOfDays = const Value.absent(),
            Value<String?> contactName = const Value.absent(),
            Value<String?> contactEmail = const Value.absent(),
            Value<int?> maxParticipants = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> attachments = const Value.absent(),
            Value<double?> costMember = const Value.absent(),
            Value<double?> costGuest = const Value.absent(),
            Value<double?> costCompanion = const Value.absent(),
            Value<String?> cost = const Value.absent(),
            Value<int?> publicType = const Value.absent(),
            Value<int?> type = const Value.absent(),
            Value<DateTime?> registrationStart = const Value.absent(),
            Value<DateTime?> registrationDeadline = const Value.absent(),
            Value<int?> visibilityType = const Value.absent(),
            Value<DateTime?> deregistrationDeadline = const Value.absent(),
            Value<int?> maxCompanions = const Value.absent(),
            Value<int?> seriesEventId = const Value.absent(),
            Value<int?> visibilityAssociation = const Value.absent(),
            Value<bool?> rv = const Value.absent(),
            Value<String?> abbreviation = const Value.absent(),
            Value<String?> organization = const Value.absent(),
            Value<int?> registrationCount = const Value.absent(),
            Value<String?> freeSlots = const Value.absent(),
            Value<String?> link = const Value.absent(),
            Value<String> baseUrl = const Value.absent(),
            Value<String?> clientEventId = const Value.absent(),
          }) =>
              EventsCompanion(
            id: id,
            clientId: clientId,
            startDateAndTime: startDateAndTime,
            endDateAndTime: endDateAndTime,
            title: title,
            description: description,
            location: location,
            groupId: groupId,
            time: time,
            numberOfDays: numberOfDays,
            contactName: contactName,
            contactEmail: contactEmail,
            maxParticipants: maxParticipants,
            image: image,
            attachments: attachments,
            costMember: costMember,
            costGuest: costGuest,
            costCompanion: costCompanion,
            cost: cost,
            publicType: publicType,
            type: type,
            registrationStart: registrationStart,
            registrationDeadline: registrationDeadline,
            visibilityType: visibilityType,
            deregistrationDeadline: deregistrationDeadline,
            maxCompanions: maxCompanions,
            seriesEventId: seriesEventId,
            visibilityAssociation: visibilityAssociation,
            rv: rv,
            abbreviation: abbreviation,
            organization: organization,
            registrationCount: registrationCount,
            freeSlots: freeSlots,
            link: link,
            baseUrl: baseUrl,
            clientEventId: clientEventId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> clientId = const Value.absent(),
            required DateTime startDateAndTime,
            required DateTime endDateAndTime,
            required String title,
            Value<String?> description = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<int?> groupId = const Value.absent(),
            Value<String?> time = const Value.absent(),
            Value<int?> numberOfDays = const Value.absent(),
            Value<String?> contactName = const Value.absent(),
            Value<String?> contactEmail = const Value.absent(),
            Value<int?> maxParticipants = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> attachments = const Value.absent(),
            Value<double?> costMember = const Value.absent(),
            Value<double?> costGuest = const Value.absent(),
            Value<double?> costCompanion = const Value.absent(),
            Value<String?> cost = const Value.absent(),
            Value<int?> publicType = const Value.absent(),
            Value<int?> type = const Value.absent(),
            Value<DateTime?> registrationStart = const Value.absent(),
            Value<DateTime?> registrationDeadline = const Value.absent(),
            Value<int?> visibilityType = const Value.absent(),
            Value<DateTime?> deregistrationDeadline = const Value.absent(),
            Value<int?> maxCompanions = const Value.absent(),
            Value<int?> seriesEventId = const Value.absent(),
            Value<int?> visibilityAssociation = const Value.absent(),
            Value<bool?> rv = const Value.absent(),
            Value<String?> abbreviation = const Value.absent(),
            Value<String?> organization = const Value.absent(),
            Value<int?> registrationCount = const Value.absent(),
            Value<String?> freeSlots = const Value.absent(),
            Value<String?> link = const Value.absent(),
            required String baseUrl,
            Value<String?> clientEventId = const Value.absent(),
          }) =>
              EventsCompanion.insert(
            id: id,
            clientId: clientId,
            startDateAndTime: startDateAndTime,
            endDateAndTime: endDateAndTime,
            title: title,
            description: description,
            location: location,
            groupId: groupId,
            time: time,
            numberOfDays: numberOfDays,
            contactName: contactName,
            contactEmail: contactEmail,
            maxParticipants: maxParticipants,
            image: image,
            attachments: attachments,
            costMember: costMember,
            costGuest: costGuest,
            costCompanion: costCompanion,
            cost: cost,
            publicType: publicType,
            type: type,
            registrationStart: registrationStart,
            registrationDeadline: registrationDeadline,
            visibilityType: visibilityType,
            deregistrationDeadline: deregistrationDeadline,
            maxCompanions: maxCompanions,
            seriesEventId: seriesEventId,
            visibilityAssociation: visibilityAssociation,
            rv: rv,
            abbreviation: abbreviation,
            organization: organization,
            registrationCount: registrationCount,
            freeSlots: freeSlots,
            link: link,
            baseUrl: baseUrl,
            clientEventId: clientEventId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EventsTable,
    Event,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (Event, BaseReferences<_$AppDatabase, $EventsTable, Event>),
    Event,
    PrefetchHooks Function()>;
typedef $$RegisteredTableTableCreateCompanionBuilder = RegisteredTableCompanion
    Function({
  Value<int> eventId,
});
typedef $$RegisteredTableTableUpdateCompanionBuilder = RegisteredTableCompanion
    Function({
  Value<int> eventId,
});

class $$RegisteredTableTableFilterComposer
    extends Composer<_$AppDatabase, $RegisteredTableTable> {
  $$RegisteredTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnFilters(column));
}

class $$RegisteredTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RegisteredTableTable> {
  $$RegisteredTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnOrderings(column));
}

class $$RegisteredTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RegisteredTableTable> {
  $$RegisteredTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get eventId =>
      $composableBuilder(column: $table.eventId, builder: (column) => column);
}

class $$RegisteredTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RegisteredTableTable,
    RegisteredTableData,
    $$RegisteredTableTableFilterComposer,
    $$RegisteredTableTableOrderingComposer,
    $$RegisteredTableTableAnnotationComposer,
    $$RegisteredTableTableCreateCompanionBuilder,
    $$RegisteredTableTableUpdateCompanionBuilder,
    (
      RegisteredTableData,
      BaseReferences<_$AppDatabase, $RegisteredTableTable, RegisteredTableData>
    ),
    RegisteredTableData,
    PrefetchHooks Function()> {
  $$RegisteredTableTableTableManager(
      _$AppDatabase db, $RegisteredTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RegisteredTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RegisteredTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RegisteredTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> eventId = const Value.absent(),
          }) =>
              RegisteredTableCompanion(
            eventId: eventId,
          ),
          createCompanionCallback: ({
            Value<int> eventId = const Value.absent(),
          }) =>
              RegisteredTableCompanion.insert(
            eventId: eventId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RegisteredTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RegisteredTableTable,
    RegisteredTableData,
    $$RegisteredTableTableFilterComposer,
    $$RegisteredTableTableOrderingComposer,
    $$RegisteredTableTableAnnotationComposer,
    $$RegisteredTableTableCreateCompanionBuilder,
    $$RegisteredTableTableUpdateCompanionBuilder,
    (
      RegisteredTableData,
      BaseReferences<_$AppDatabase, $RegisteredTableTable, RegisteredTableData>
    ),
    RegisteredTableData,
    PrefetchHooks Function()>;
typedef $$NewsTableTableCreateCompanionBuilder = NewsTableCompanion Function({
  Value<int> id,
  required String title,
  required String content,
  required String imageURL,
  required String websiteURL,
  required int orderNumber,
});
typedef $$NewsTableTableUpdateCompanionBuilder = NewsTableCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> content,
  Value<String> imageURL,
  Value<String> websiteURL,
  Value<int> orderNumber,
});

class $$NewsTableTableFilterComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => ColumnFilters(column));
}

class $$NewsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => ColumnOrderings(column));
}

class $$NewsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<String> get imageURL =>
      $composableBuilder(column: $table.imageURL, builder: (column) => column);

  GeneratedColumn<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => column);

  GeneratedColumn<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => column);
}

class $$NewsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableAnnotationComposer,
    $$NewsTableTableCreateCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder,
    (
      NewsTableData,
      BaseReferences<_$AppDatabase, $NewsTableTable, NewsTableData>
    ),
    NewsTableData,
    PrefetchHooks Function()> {
  $$NewsTableTableTableManager(_$AppDatabase db, $NewsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NewsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NewsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NewsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<String> imageURL = const Value.absent(),
            Value<String> websiteURL = const Value.absent(),
            Value<int> orderNumber = const Value.absent(),
          }) =>
              NewsTableCompanion(
            id: id,
            title: title,
            content: content,
            imageURL: imageURL,
            websiteURL: websiteURL,
            orderNumber: orderNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String content,
            required String imageURL,
            required String websiteURL,
            required int orderNumber,
          }) =>
              NewsTableCompanion.insert(
            id: id,
            title: title,
            content: content,
            imageURL: imageURL,
            websiteURL: websiteURL,
            orderNumber: orderNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NewsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableAnnotationComposer,
    $$NewsTableTableCreateCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder,
    (
      NewsTableData,
      BaseReferences<_$AppDatabase, $NewsTableTable, NewsTableData>
    ),
    NewsTableData,
    PrefetchHooks Function()>;
typedef $$ActivitiesTableTableCreateCompanionBuilder = ActivitiesTableCompanion
    Function({
  Value<int> id,
  required String title,
  required String content,
  required String imageURL,
  required String websiteURL,
  required int orderNumber,
});
typedef $$ActivitiesTableTableUpdateCompanionBuilder = ActivitiesTableCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<String> content,
  Value<String> imageURL,
  Value<String> websiteURL,
  Value<int> orderNumber,
});

class $$ActivitiesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ActivitiesTableTable> {
  $$ActivitiesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => ColumnFilters(column));
}

class $$ActivitiesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivitiesTableTable> {
  $$ActivitiesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => ColumnOrderings(column));
}

class $$ActivitiesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivitiesTableTable> {
  $$ActivitiesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<String> get imageURL =>
      $composableBuilder(column: $table.imageURL, builder: (column) => column);

  GeneratedColumn<String> get websiteURL => $composableBuilder(
      column: $table.websiteURL, builder: (column) => column);

  GeneratedColumn<int> get orderNumber => $composableBuilder(
      column: $table.orderNumber, builder: (column) => column);
}

class $$ActivitiesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ActivitiesTableTable,
    ActivitiesTableData,
    $$ActivitiesTableTableFilterComposer,
    $$ActivitiesTableTableOrderingComposer,
    $$ActivitiesTableTableAnnotationComposer,
    $$ActivitiesTableTableCreateCompanionBuilder,
    $$ActivitiesTableTableUpdateCompanionBuilder,
    (
      ActivitiesTableData,
      BaseReferences<_$AppDatabase, $ActivitiesTableTable, ActivitiesTableData>
    ),
    ActivitiesTableData,
    PrefetchHooks Function()> {
  $$ActivitiesTableTableTableManager(
      _$AppDatabase db, $ActivitiesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivitiesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivitiesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivitiesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<String> imageURL = const Value.absent(),
            Value<String> websiteURL = const Value.absent(),
            Value<int> orderNumber = const Value.absent(),
          }) =>
              ActivitiesTableCompanion(
            id: id,
            title: title,
            content: content,
            imageURL: imageURL,
            websiteURL: websiteURL,
            orderNumber: orderNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String content,
            required String imageURL,
            required String websiteURL,
            required int orderNumber,
          }) =>
              ActivitiesTableCompanion.insert(
            id: id,
            title: title,
            content: content,
            imageURL: imageURL,
            websiteURL: websiteURL,
            orderNumber: orderNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ActivitiesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ActivitiesTableTable,
    ActivitiesTableData,
    $$ActivitiesTableTableFilterComposer,
    $$ActivitiesTableTableOrderingComposer,
    $$ActivitiesTableTableAnnotationComposer,
    $$ActivitiesTableTableCreateCompanionBuilder,
    $$ActivitiesTableTableUpdateCompanionBuilder,
    (
      ActivitiesTableData,
      BaseReferences<_$AppDatabase, $ActivitiesTableTable, ActivitiesTableData>
    ),
    ActivitiesTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GamesTableTableManager get games =>
      $$GamesTableTableManager(_db, _db.games);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$RegisteredTableTableTableManager get registeredTable =>
      $$RegisteredTableTableTableManager(_db, _db.registeredTable);
  $$NewsTableTableTableManager get newsTable =>
      $$NewsTableTableTableManager(_db, _db.newsTable);
  $$ActivitiesTableTableTableManager get activitiesTable =>
      $$ActivitiesTableTableTableManager(_db, _db.activitiesTable);
}
