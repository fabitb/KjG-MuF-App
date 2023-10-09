// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGameModelCollection on Isar {
  IsarCollection<GameModel> get gameModels => this.collection();
}

const GameModelSchema = CollectionSchema(
  name: r'GameModel',
  id: 5060082259723093958,
  properties: {
    r'actionScore': PropertySchema(
      id: 0,
      name: r'actionScore',
      type: IsarType.long,
    ),
    r'ageLimitations': PropertySchema(
      id: 1,
      name: r'ageLimitations',
      type: IsarType.string,
    ),
    r'alreadyPlayed': PropertySchema(
      id: 2,
      name: r'alreadyPlayed',
      type: IsarType.bool,
    ),
    r'author': PropertySchema(
      id: 3,
      name: r'author',
      type: IsarType.string,
    ),
    r'categories': PropertySchema(
      id: 4,
      name: r'categories',
      type: IsarType.stringList,
    ),
    r'cognitiveScore': PropertySchema(
      id: 5,
      name: r'cognitiveScore',
      type: IsarType.long,
    ),
    r'duration': PropertySchema(
      id: 6,
      name: r'duration',
      type: IsarType.string,
    ),
    r'endingInstructions': PropertySchema(
      id: 7,
      name: r'endingInstructions',
      type: IsarType.string,
    ),
    r'gameplayInstructions': PropertySchema(
      id: 8,
      name: r'gameplayInstructions',
      type: IsarType.string,
    ),
    r'goalOfGame': PropertySchema(
      id: 9,
      name: r'goalOfGame',
      type: IsarType.string,
    ),
    r'materials': PropertySchema(
      id: 10,
      name: r'materials',
      type: IsarType.string,
    ),
    r'numberOfPlayers': PropertySchema(
      id: 11,
      name: r'numberOfPlayers',
      type: IsarType.string,
    ),
    r'preparationsInstructions': PropertySchema(
      id: 12,
      name: r'preparationsInstructions',
      type: IsarType.string,
    ),
    r'spaceLimitations': PropertySchema(
      id: 13,
      name: r'spaceLimitations',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 14,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _gameModelEstimateSize,
  serialize: _gameModelSerialize,
  deserialize: _gameModelDeserialize,
  deserializeProp: _gameModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _gameModelGetId,
  getLinks: _gameModelGetLinks,
  attach: _gameModelAttach,
  version: '3.1.0+1',
);

int _gameModelEstimateSize(
  GameModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ageLimitations.length * 3;
  bytesCount += 3 + object.author.length * 3;
  bytesCount += 3 + object.categories.length * 3;
  {
    for (var i = 0; i < object.categories.length; i++) {
      final value = object.categories[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.duration.length * 3;
  bytesCount += 3 + object.endingInstructions.length * 3;
  bytesCount += 3 + object.gameplayInstructions.length * 3;
  bytesCount += 3 + object.goalOfGame.length * 3;
  bytesCount += 3 + object.materials.length * 3;
  bytesCount += 3 + object.numberOfPlayers.length * 3;
  bytesCount += 3 + object.preparationsInstructions.length * 3;
  bytesCount += 3 + object.spaceLimitations.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _gameModelSerialize(
  GameModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.actionScore);
  writer.writeString(offsets[1], object.ageLimitations);
  writer.writeBool(offsets[2], object.alreadyPlayed);
  writer.writeString(offsets[3], object.author);
  writer.writeStringList(offsets[4], object.categories);
  writer.writeLong(offsets[5], object.cognitiveScore);
  writer.writeString(offsets[6], object.duration);
  writer.writeString(offsets[7], object.endingInstructions);
  writer.writeString(offsets[8], object.gameplayInstructions);
  writer.writeString(offsets[9], object.goalOfGame);
  writer.writeString(offsets[10], object.materials);
  writer.writeString(offsets[11], object.numberOfPlayers);
  writer.writeString(offsets[12], object.preparationsInstructions);
  writer.writeString(offsets[13], object.spaceLimitations);
  writer.writeString(offsets[14], object.title);
}

GameModel _gameModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GameModel(
    actionScore: reader.readLong(offsets[0]),
    ageLimitations: reader.readString(offsets[1]),
    alreadyPlayed: reader.readBool(offsets[2]),
    author: reader.readString(offsets[3]),
    categories: reader.readStringList(offsets[4]) ?? [],
    cognitiveScore: reader.readLong(offsets[5]),
    duration: reader.readString(offsets[6]),
    endingInstructions: reader.readString(offsets[7]),
    gameplayInstructions: reader.readString(offsets[8]),
    goalOfGame: reader.readString(offsets[9]),
    id: id,
    materials: reader.readString(offsets[10]),
    numberOfPlayers: reader.readString(offsets[11]),
    preparationsInstructions: reader.readString(offsets[12]),
    spaceLimitations: reader.readString(offsets[13]),
    title: reader.readString(offsets[14]),
  );
  return object;
}

P _gameModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gameModelGetId(GameModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gameModelGetLinks(GameModel object) {
  return [];
}

void _gameModelAttach(IsarCollection<dynamic> col, Id id, GameModel object) {
  object.id = id;
}

extension GameModelQueryWhereSort
    on QueryBuilder<GameModel, GameModel, QWhere> {
  QueryBuilder<GameModel, GameModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GameModelQueryWhere
    on QueryBuilder<GameModel, GameModel, QWhereClause> {
  QueryBuilder<GameModel, GameModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GameModelQueryFilter
    on QueryBuilder<GameModel, GameModel, QFilterCondition> {
  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> actionScoreEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      actionScoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actionScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> actionScoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actionScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> actionScoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actionScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ageLimitations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ageLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ageLimitations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ageLimitations',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      ageLimitationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ageLimitations',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      alreadyPlayedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alreadyPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'author',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'author',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'author',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> authorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'author',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categories',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categories',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      categoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      cognitiveScoreEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cognitiveScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      cognitiveScoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cognitiveScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      cognitiveScoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cognitiveScore',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      cognitiveScoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cognitiveScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'duration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> durationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      durationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endingInstructions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'endingInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'endingInstructions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endingInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      endingInstructionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'endingInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameplayInstructions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gameplayInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gameplayInstructions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameplayInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      gameplayInstructionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gameplayInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      goalOfGameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'goalOfGame',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      goalOfGameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'goalOfGame',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> goalOfGameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'goalOfGame',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      goalOfGameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goalOfGame',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      goalOfGameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'goalOfGame',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      materialsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'materials',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'materials',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'materials',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> materialsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materials',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      materialsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'materials',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfPlayers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numberOfPlayers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numberOfPlayers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfPlayers',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      numberOfPlayersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numberOfPlayers',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preparationsInstructions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preparationsInstructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preparationsInstructions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preparationsInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      preparationsInstructionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preparationsInstructions',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spaceLimitations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spaceLimitations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spaceLimitations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spaceLimitations',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition>
      spaceLimitationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spaceLimitations',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension GameModelQueryObject
    on QueryBuilder<GameModel, GameModel, QFilterCondition> {}

extension GameModelQueryLinks
    on QueryBuilder<GameModel, GameModel, QFilterCondition> {}

extension GameModelQuerySortBy on QueryBuilder<GameModel, GameModel, QSortBy> {
  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByActionScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionScore', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByActionScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionScore', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAgeLimitations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageLimitations', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAgeLimitationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageLimitations', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAlreadyPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alreadyPlayed', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAlreadyPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alreadyPlayed', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAuthor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByAuthorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByCognitiveScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cognitiveScore', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByCognitiveScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cognitiveScore', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByEndingInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endingInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortByEndingInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endingInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortByGameplayInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameplayInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortByGameplayInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameplayInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByGoalOfGame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goalOfGame', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByGoalOfGameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goalOfGame', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByMaterials() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materials', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByMaterialsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materials', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByNumberOfPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfPlayers', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByNumberOfPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfPlayers', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortByPreparationsInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparationsInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortByPreparationsInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparationsInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortBySpaceLimitations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spaceLimitations', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      sortBySpaceLimitationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spaceLimitations', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension GameModelQuerySortThenBy
    on QueryBuilder<GameModel, GameModel, QSortThenBy> {
  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByActionScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionScore', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByActionScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionScore', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAgeLimitations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageLimitations', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAgeLimitationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageLimitations', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAlreadyPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alreadyPlayed', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAlreadyPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alreadyPlayed', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAuthor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByAuthorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByCognitiveScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cognitiveScore', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByCognitiveScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cognitiveScore', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByEndingInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endingInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenByEndingInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endingInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenByGameplayInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameplayInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenByGameplayInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameplayInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByGoalOfGame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goalOfGame', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByGoalOfGameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goalOfGame', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByMaterials() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materials', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByMaterialsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materials', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByNumberOfPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfPlayers', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByNumberOfPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfPlayers', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenByPreparationsInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparationsInstructions', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenByPreparationsInstructionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preparationsInstructions', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenBySpaceLimitations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spaceLimitations', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy>
      thenBySpaceLimitationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spaceLimitations', Sort.desc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GameModel, GameModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension GameModelQueryWhereDistinct
    on QueryBuilder<GameModel, GameModel, QDistinct> {
  QueryBuilder<GameModel, GameModel, QDistinct> distinctByActionScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actionScore');
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByAgeLimitations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ageLimitations',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByAlreadyPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alreadyPlayed');
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'author', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByCategories() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categories');
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByCognitiveScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cognitiveScore');
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByDuration(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByEndingInstructions(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endingInstructions',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByGameplayInstructions(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gameplayInstructions',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByGoalOfGame(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goalOfGame', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByMaterials(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'materials', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByNumberOfPlayers(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfPlayers',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct>
      distinctByPreparationsInstructions({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preparationsInstructions',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctBySpaceLimitations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spaceLimitations',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameModel, GameModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension GameModelQueryProperty
    on QueryBuilder<GameModel, GameModel, QQueryProperty> {
  QueryBuilder<GameModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GameModel, int, QQueryOperations> actionScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actionScore');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> ageLimitationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ageLimitations');
    });
  }

  QueryBuilder<GameModel, bool, QQueryOperations> alreadyPlayedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alreadyPlayed');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'author');
    });
  }

  QueryBuilder<GameModel, List<String>, QQueryOperations> categoriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categories');
    });
  }

  QueryBuilder<GameModel, int, QQueryOperations> cognitiveScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cognitiveScore');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations>
      endingInstructionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endingInstructions');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations>
      gameplayInstructionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameplayInstructions');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> goalOfGameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goalOfGame');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> materialsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materials');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> numberOfPlayersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfPlayers');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations>
      preparationsInstructionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preparationsInstructions');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> spaceLimitationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spaceLimitations');
    });
  }

  QueryBuilder<GameModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
