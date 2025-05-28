// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventCollection on Isar {
  IsarCollection<Event> get events => this.collection();
}

const EventSchema = CollectionSchema(
  name: r'Event',
  id: 2102939193127251002,
  properties: {
    r'abbreviation': PropertySchema(
      id: 0,
      name: r'abbreviation',
      type: IsarType.string,
    ),
    r'attachments': PropertySchema(
      id: 1,
      name: r'attachments',
      type: IsarType.stringList,
    ),
    r'baseUrl': PropertySchema(
      id: 2,
      name: r'baseUrl',
      type: IsarType.string,
    ),
    r'clientEventId': PropertySchema(
      id: 3,
      name: r'clientEventId',
      type: IsarType.long,
    ),
    r'clientId': PropertySchema(
      id: 4,
      name: r'clientId',
      type: IsarType.long,
    ),
    r'contactEmail': PropertySchema(
      id: 5,
      name: r'contactEmail',
      type: IsarType.string,
    ),
    r'contactName': PropertySchema(
      id: 6,
      name: r'contactName',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 7,
      name: r'cost',
      type: IsarType.string,
    ),
    r'costCompanion': PropertySchema(
      id: 8,
      name: r'costCompanion',
      type: IsarType.double,
    ),
    r'costGuest': PropertySchema(
      id: 9,
      name: r'costGuest',
      type: IsarType.double,
    ),
    r'costMember': PropertySchema(
      id: 10,
      name: r'costMember',
      type: IsarType.double,
    ),
    r'deregistrationDeadline': PropertySchema(
      id: 11,
      name: r'deregistrationDeadline',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 12,
      name: r'description',
      type: IsarType.string,
    ),
    r'endDateAndTime': PropertySchema(
      id: 13,
      name: r'endDateAndTime',
      type: IsarType.dateTime,
    ),
    r'eventUrl': PropertySchema(
      id: 14,
      name: r'eventUrl',
      type: IsarType.string,
    ),
    r'freeSlots': PropertySchema(
      id: 15,
      name: r'freeSlots',
      type: IsarType.long,
    ),
    r'groupId': PropertySchema(
      id: 16,
      name: r'groupId',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 17,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 18,
      name: r'image',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 19,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'link': PropertySchema(
      id: 20,
      name: r'link',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 21,
      name: r'location',
      type: IsarType.string,
    ),
    r'locationForMap': PropertySchema(
      id: 22,
      name: r'locationForMap',
      type: IsarType.string,
    ),
    r'locationName': PropertySchema(
      id: 23,
      name: r'locationName',
      type: IsarType.string,
    ),
    r'maxCompanions': PropertySchema(
      id: 24,
      name: r'maxCompanions',
      type: IsarType.long,
    ),
    r'maxParticipants': PropertySchema(
      id: 25,
      name: r'maxParticipants',
      type: IsarType.long,
    ),
    r'numberOfDays': PropertySchema(
      id: 26,
      name: r'numberOfDays',
      type: IsarType.long,
    ),
    r'organization': PropertySchema(
      id: 27,
      name: r'organization',
      type: IsarType.string,
    ),
    r'publicType': PropertySchema(
      id: 28,
      name: r'publicType',
      type: IsarType.long,
    ),
    r'registrationCount': PropertySchema(
      id: 29,
      name: r'registrationCount',
      type: IsarType.long,
    ),
    r'registrationDeadline': PropertySchema(
      id: 30,
      name: r'registrationDeadline',
      type: IsarType.dateTime,
    ),
    r'registrationStart': PropertySchema(
      id: 31,
      name: r'registrationStart',
      type: IsarType.dateTime,
    ),
    r'rv': PropertySchema(
      id: 32,
      name: r'rv',
      type: IsarType.bool,
    ),
    r'seriesEventId': PropertySchema(
      id: 33,
      name: r'seriesEventId',
      type: IsarType.long,
    ),
    r'startDateAndTime': PropertySchema(
      id: 34,
      name: r'startDateAndTime',
      type: IsarType.dateTime,
    ),
    r'time': PropertySchema(
      id: 35,
      name: r'time',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 36,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 37,
      name: r'type',
      type: IsarType.long,
    ),
    r'visibilityAssociation': PropertySchema(
      id: 38,
      name: r'visibilityAssociation',
      type: IsarType.long,
    ),
    r'visibilityType': PropertySchema(
      id: 39,
      name: r'visibilityType',
      type: IsarType.long,
    )
  },
  estimateSize: _eventEstimateSize,
  serialize: _eventSerialize,
  deserialize: _eventDeserialize,
  deserializeProp: _eventDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _eventGetId,
  getLinks: _eventGetLinks,
  attach: _eventAttach,
  version: '3.1.8',
);

int _eventEstimateSize(
  Event object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.abbreviation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.attachments;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.baseUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contactEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contactName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cost;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventUrl.length * 3;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.link;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.locationForMap;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.locationName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.organization;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.time;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _eventSerialize(
  Event object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.abbreviation);
  writer.writeStringList(offsets[1], object.attachments);
  writer.writeString(offsets[2], object.baseUrl);
  writer.writeLong(offsets[3], object.clientEventId);
  writer.writeLong(offsets[4], object.clientId);
  writer.writeString(offsets[5], object.contactEmail);
  writer.writeString(offsets[6], object.contactName);
  writer.writeString(offsets[7], object.cost);
  writer.writeDouble(offsets[8], object.costCompanion);
  writer.writeDouble(offsets[9], object.costGuest);
  writer.writeDouble(offsets[10], object.costMember);
  writer.writeDateTime(offsets[11], object.deregistrationDeadline);
  writer.writeString(offsets[12], object.description);
  writer.writeDateTime(offsets[13], object.endDateAndTime);
  writer.writeString(offsets[14], object.eventUrl);
  writer.writeLong(offsets[15], object.freeSlots);
  writer.writeLong(offsets[16], object.groupId);
  writer.writeLong(offsets[17], object.id);
  writer.writeString(offsets[18], object.image);
  writer.writeString(offsets[19], object.imageUrl);
  writer.writeString(offsets[20], object.link);
  writer.writeString(offsets[21], object.location);
  writer.writeString(offsets[22], object.locationForMap);
  writer.writeString(offsets[23], object.locationName);
  writer.writeLong(offsets[24], object.maxCompanions);
  writer.writeLong(offsets[25], object.maxParticipants);
  writer.writeLong(offsets[26], object.numberOfDays);
  writer.writeString(offsets[27], object.organization);
  writer.writeLong(offsets[28], object.publicType);
  writer.writeLong(offsets[29], object.registrationCount);
  writer.writeDateTime(offsets[30], object.registrationDeadline);
  writer.writeDateTime(offsets[31], object.registrationStart);
  writer.writeBool(offsets[32], object.rv);
  writer.writeLong(offsets[33], object.seriesEventId);
  writer.writeDateTime(offsets[34], object.startDateAndTime);
  writer.writeString(offsets[35], object.time);
  writer.writeString(offsets[36], object.title);
  writer.writeLong(offsets[37], object.type);
  writer.writeLong(offsets[38], object.visibilityAssociation);
  writer.writeLong(offsets[39], object.visibilityType);
}

Event _eventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Event(
    abbreviation: reader.readStringOrNull(offsets[0]),
    attachments: reader.readStringList(offsets[1]),
    baseUrl: reader.readStringOrNull(offsets[2]),
    clientEventId: reader.readLongOrNull(offsets[3]),
    clientId: reader.readLongOrNull(offsets[4]),
    contactEmail: reader.readStringOrNull(offsets[5]),
    contactName: reader.readStringOrNull(offsets[6]),
    cost: reader.readStringOrNull(offsets[7]),
    costCompanion: reader.readDoubleOrNull(offsets[8]),
    costGuest: reader.readDoubleOrNull(offsets[9]),
    costMember: reader.readDoubleOrNull(offsets[10]),
    deregistrationDeadline: reader.readDateTimeOrNull(offsets[11]),
    description: reader.readStringOrNull(offsets[12]),
    endDateAndTime: reader.readDateTime(offsets[13]),
    freeSlots: reader.readLongOrNull(offsets[15]),
    groupId: reader.readLongOrNull(offsets[16]),
    id: reader.readLong(offsets[17]),
    image: reader.readStringOrNull(offsets[18]),
    link: reader.readStringOrNull(offsets[20]),
    location: reader.readStringOrNull(offsets[21]),
    maxCompanions: reader.readLongOrNull(offsets[24]),
    maxParticipants: reader.readLongOrNull(offsets[25]),
    numberOfDays: reader.readLongOrNull(offsets[26]),
    organization: reader.readStringOrNull(offsets[27]),
    publicType: reader.readLongOrNull(offsets[28]),
    registrationCount: reader.readLongOrNull(offsets[29]),
    registrationDeadline: reader.readDateTimeOrNull(offsets[30]),
    registrationStart: reader.readDateTimeOrNull(offsets[31]),
    rv: reader.readBoolOrNull(offsets[32]),
    seriesEventId: reader.readLongOrNull(offsets[33]),
    startDateAndTime: reader.readDateTime(offsets[34]),
    time: reader.readStringOrNull(offsets[35]),
    title: reader.readString(offsets[36]),
    type: reader.readLongOrNull(offsets[37]),
    visibilityAssociation: reader.readLongOrNull(offsets[38]),
    visibilityType: reader.readLongOrNull(offsets[39]),
  );
  return object;
}

P _eventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset)) as P;
    case 25:
      return (reader.readLongOrNull(offset)) as P;
    case 26:
      return (reader.readLongOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readLongOrNull(offset)) as P;
    case 29:
      return (reader.readLongOrNull(offset)) as P;
    case 30:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 31:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 32:
      return (reader.readBoolOrNull(offset)) as P;
    case 33:
      return (reader.readLongOrNull(offset)) as P;
    case 34:
      return (reader.readDateTime(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readString(offset)) as P;
    case 37:
      return (reader.readLongOrNull(offset)) as P;
    case 38:
      return (reader.readLongOrNull(offset)) as P;
    case 39:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eventGetId(Event object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _eventGetLinks(Event object) {
  return [];
}

void _eventAttach(IsarCollection<dynamic> col, Id id, Event object) {}

extension EventQueryWhereSort on QueryBuilder<Event, Event, QWhere> {
  QueryBuilder<Event, Event, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EventQueryWhere on QueryBuilder<Event, Event, QWhereClause> {
  QueryBuilder<Event, Event, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventQueryFilter on QueryBuilder<Event, Event, QFilterCondition> {
  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'abbreviation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'abbreviation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> abbreviationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachments',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachments',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attachmentsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachments',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attachmentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachments',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attachmentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachments',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attachmentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachments',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attachmentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attachmentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachments',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'baseUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> baseUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientEventId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientEventId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientEventIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> clientIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactEmail',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactEmail',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactName',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactName',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactName',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> contactNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactName',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cost',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costCompanion',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costCompanion',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costCompanion',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costCompanion',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costCompanion',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costCompanionBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costCompanion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costGuest',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costGuest',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costGuest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costGuest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costGuest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costGuestBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costGuest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costMember',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costMember',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costMember',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costMember',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costMember',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> costMemberBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costMember',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deregistrationDeadline',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deregistrationDeadline',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deregistrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deregistrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deregistrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      deregistrationDeadlineBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deregistrationDeadline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateAndTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateAndTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateAndTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateAndTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDateAndTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> eventUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'freeSlots',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'freeSlots',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freeSlots',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freeSlots',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freeSlots',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> freeSlotsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freeSlots',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> groupIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idGreaterThan(
    int value, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'link',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'link',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationForMap',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationForMap',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationForMap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationForMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationForMap',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationForMap',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationForMapIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationForMap',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationName',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationName',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationName',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationName',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxCompanions',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxCompanions',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxCompanions',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxCompanions',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxCompanions',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxCompanionsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxCompanions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxParticipants',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxParticipants',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxParticipants',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxParticipants',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxParticipants',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> maxParticipantsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxParticipants',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> numberOfDaysBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'organization',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'organization',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> organizationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'publicType',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'publicType',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publicType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'publicType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'publicType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> publicTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'publicType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationCount',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationCount',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationDeadlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationDeadline',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationDeadlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationDeadline',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationDeadlineEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationDeadlineGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationDeadlineLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationDeadlineBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationDeadline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationStart',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationStart',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationStartEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationStart',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      registrationStartGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationStart',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationStartLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationStart',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> registrationStartBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rv',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rvIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rv',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rvEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rv',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesEventId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesEventId',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> seriesEventIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateAndTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateAndTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateAndTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateAndTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startDateAndTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEqualTo(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleBetween(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleStartsWith(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> typeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibilityAssociation',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibilityAssociation',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibilityAssociation',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibilityAssociation',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibilityAssociation',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      visibilityAssociationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibilityAssociation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibilityType',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibilityType',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibilityType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibilityType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibilityType',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> visibilityTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibilityType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventQueryObject on QueryBuilder<Event, Event, QFilterCondition> {}

extension EventQueryLinks on QueryBuilder<Event, Event, QFilterCondition> {}

extension EventQuerySortBy on QueryBuilder<Event, Event, QSortBy> {
  QueryBuilder<Event, Event, QAfterSortBy> sortByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByBaseUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByBaseUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByClientEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByClientEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByContactEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByContactEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByContactName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByContactNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostCompanionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostGuestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCostMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDeregistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEndDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEventUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEventUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByFreeSlots() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByFreeSlotsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationForMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationForMap', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationForMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationForMap', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByMaxCompanionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByMaxParticipantsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByOrganization() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByOrganizationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByPublicTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRegistrationStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortBySeriesEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStartDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByVisibilityAssociationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByVisibilityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.desc);
    });
  }
}

extension EventQuerySortThenBy on QueryBuilder<Event, Event, QSortThenBy> {
  QueryBuilder<Event, Event, QAfterSortBy> thenByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByBaseUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByBaseUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByClientEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByClientEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByContactEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByContactEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByContactName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByContactNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostCompanionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostGuestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCostMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDeregistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEndDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEventUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEventUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByFreeSlots() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByFreeSlotsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationForMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationForMap', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationForMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationForMap', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByMaxCompanionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByMaxParticipantsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByOrganization() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByOrganizationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByPublicTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRegistrationStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenBySeriesEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStartDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByVisibilityAssociationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByVisibilityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.desc);
    });
  }
}

extension EventQueryWhereDistinct on QueryBuilder<Event, Event, QDistinct> {
  QueryBuilder<Event, Event, QDistinct> distinctByAbbreviation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abbreviation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByAttachments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachments');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByBaseUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'baseUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByClientEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientEventId');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientId');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByContactEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByContactName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByCost(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costCompanion');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costGuest');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costMember');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deregistrationDeadline');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDateAndTime');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByEventUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByFreeSlots() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freeSlots');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'link', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLocationForMap(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationForMap',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLocationName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxCompanions');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxParticipants');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfDays');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByOrganization(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'organization', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publicType');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationCount');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDeadline');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationStart');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rv');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesEventId');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDateAndTime');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibilityAssociation');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibilityType');
    });
  }
}

extension EventQueryProperty on QueryBuilder<Event, Event, QQueryProperty> {
  QueryBuilder<Event, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> abbreviationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abbreviation');
    });
  }

  QueryBuilder<Event, List<String>?, QQueryOperations> attachmentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachments');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> baseUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'baseUrl');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> clientEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientEventId');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> clientIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientId');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> contactEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactEmail');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> contactNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactName');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<Event, double?, QQueryOperations> costCompanionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costCompanion');
    });
  }

  QueryBuilder<Event, double?, QQueryOperations> costGuestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costGuest');
    });
  }

  QueryBuilder<Event, double?, QQueryOperations> costMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costMember');
    });
  }

  QueryBuilder<Event, DateTime?, QQueryOperations>
      deregistrationDeadlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deregistrationDeadline');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Event, DateTime, QQueryOperations> endDateAndTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDateAndTime');
    });
  }

  QueryBuilder<Event, String, QQueryOperations> eventUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventUrl');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> freeSlotsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freeSlots');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<Event, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> linkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'link');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> locationForMapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationForMap');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> locationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationName');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> maxCompanionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxCompanions');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> maxParticipantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxParticipants');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> numberOfDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfDays');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> organizationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'organization');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> publicTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publicType');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> registrationCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationCount');
    });
  }

  QueryBuilder<Event, DateTime?, QQueryOperations>
      registrationDeadlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDeadline');
    });
  }

  QueryBuilder<Event, DateTime?, QQueryOperations> registrationStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationStart');
    });
  }

  QueryBuilder<Event, bool?, QQueryOperations> rvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rv');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> seriesEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesEventId');
    });
  }

  QueryBuilder<Event, DateTime, QQueryOperations> startDateAndTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDateAndTime');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<Event, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> visibilityAssociationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibilityAssociation');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> visibilityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibilityType');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidaEventImpl _$$MidaEventImplFromJson(Map<String, dynamic> json) =>
    _$MidaEventImpl(
      id: json['id'] as String?,
      clientId: json['mandant'] as String?,
      date: json['datum'] as String?,
      title: json['titel'] as String?,
      description: json['beschreibung'] as String?,
      location: json['ort'] as String?,
      groupId: json['akid'] as String?,
      time: json['zeit'] as String?,
      numberOfDays: json['anzahltage'] as String?,
      overlapping: json['ueberlappend'] as String?,
      userId: json['userid'] as String?,
      contactName: json['kontakt'] as String?,
      contactEmail: json['kontaktemail'] as String?,
      contactPhone: json['kontakttelefon'] as String?,
      contactStreet: json['kontaktstrasse'] as String?,
      contactCity: json['kontaktort'] as String?,
      contactFax: json['kontaktfax'] as String?,
      maxParticipants: json['maxpersonen'] as String?,
      image: json['bild'] as String?,
      attachments: json['attachments'] as String?,
      reminderDaysBefore: json['remindertagezuvor'] as String?,
      reminderTarget: json['remindertarget'] as String?,
      costMember: json['kostenmitglied'] as String?,
      costGuest: json['kostenfremd'] as String?,
      costCompanion: json['kostenbegleitung'] as String?,
      cost: json['kosten'] as String?,
      publicType: json['oeffentlich'] as String?,
      visibleFrom: json['sichtbarab'] as String?,
      reminderSent: json['remindersent'] as String?,
      registrationEmail: json['anmeldemail'] as String?,
      registrationEmailContent: json['anmeldemailcontent'] as String?,
      registrationUserPublic: json['anmeldunguserpublic'] as String?,
      type: json['typ'] as String?,
      registrationStart: json['anmeldebeginn'] as String?,
      registrationDeadline: json['anmeldeschluss'] as String?,
      colorPrimary: json['vfarbe'] as String?,
      colorSecondary: json['hfarbe'] as String?,
      specialDate: json['datumspezial'] as String?,
      visibilityType: json['sichtbar'] as String?,
      deregistrationDeadline: json['abmeldeschluss'] as String?,
      maxCompanions: json['maxbegleiter'] as String?,
      workflowStatus: json['workflowstatus'] as String?,
      workflowUserId: json['workflowuserid'] as String?,
      groupId2: json['akid2'] as String?,
      followUp: json['nachlese'] as String?,
      reminderDaysBefore2: json['remindertagezuvor2'] as String?,
      reminderTarget2: json['remindertarget2'] as String?,
      waitlist: json['warteliste'] as String?,
      paymentMethod: json['zahlungsweise'] as String?,
      accessControlList: json['acl'] as String?,
      registrationConfirmationEmail:
          json['anmeldebestaetigungsmail'] as String?,
      seriesEventId: json['serienveranstaltungid'] as String?,
      imageCount: json['bilder'] as String?,
      notes: json['bemerkung'] as String?,
      modified: json['modified'] as String?,
      kvp: json['kvp'] as String?,
      currency: json['currency'] as String?,
      visibilityAssociation: json['sichtbarverband'] as String?,
      course: json['kurs'] as String?,
      assembly: json['versammlung'] as String?,
      rv: json['rv'] as String?,
      abbreviation: json['kuerzel'] as String?,
      organization: json['verein'] as String?,
      registrationCount: json['anmeldungen'] as String?,
      descriptionTeaser: json['beschreibungteaser'] as String?,
      freeSlots: json['freieplaetze'] as String?,
      weekdayDate: json['wotagdatum'] as String?,
      trafficLight: json['ampel'] as String?,
      discountInfo: json['rabattinfo'] as String?,
      link: json['link'] as String?,
      url: json['url'] as String?,
      clientEventId: json['idmandant'] as String?,
    );

Map<String, dynamic> _$$MidaEventImplToJson(_$MidaEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mandant': instance.clientId,
      'datum': instance.date,
      'titel': instance.title,
      'beschreibung': instance.description,
      'ort': instance.location,
      'akid': instance.groupId,
      'zeit': instance.time,
      'anzahltage': instance.numberOfDays,
      'ueberlappend': instance.overlapping,
      'userid': instance.userId,
      'kontakt': instance.contactName,
      'kontaktemail': instance.contactEmail,
      'kontakttelefon': instance.contactPhone,
      'kontaktstrasse': instance.contactStreet,
      'kontaktort': instance.contactCity,
      'kontaktfax': instance.contactFax,
      'maxpersonen': instance.maxParticipants,
      'bild': instance.image,
      'attachments': instance.attachments,
      'remindertagezuvor': instance.reminderDaysBefore,
      'remindertarget': instance.reminderTarget,
      'kostenmitglied': instance.costMember,
      'kostenfremd': instance.costGuest,
      'kostenbegleitung': instance.costCompanion,
      'kosten': instance.cost,
      'oeffentlich': instance.publicType,
      'sichtbarab': instance.visibleFrom,
      'remindersent': instance.reminderSent,
      'anmeldemail': instance.registrationEmail,
      'anmeldemailcontent': instance.registrationEmailContent,
      'anmeldunguserpublic': instance.registrationUserPublic,
      'typ': instance.type,
      'anmeldebeginn': instance.registrationStart,
      'anmeldeschluss': instance.registrationDeadline,
      'vfarbe': instance.colorPrimary,
      'hfarbe': instance.colorSecondary,
      'datumspezial': instance.specialDate,
      'sichtbar': instance.visibilityType,
      'abmeldeschluss': instance.deregistrationDeadline,
      'maxbegleiter': instance.maxCompanions,
      'workflowstatus': instance.workflowStatus,
      'workflowuserid': instance.workflowUserId,
      'akid2': instance.groupId2,
      'nachlese': instance.followUp,
      'remindertagezuvor2': instance.reminderDaysBefore2,
      'remindertarget2': instance.reminderTarget2,
      'warteliste': instance.waitlist,
      'zahlungsweise': instance.paymentMethod,
      'acl': instance.accessControlList,
      'anmeldebestaetigungsmail': instance.registrationConfirmationEmail,
      'serienveranstaltungid': instance.seriesEventId,
      'bilder': instance.imageCount,
      'bemerkung': instance.notes,
      'modified': instance.modified,
      'kvp': instance.kvp,
      'currency': instance.currency,
      'sichtbarverband': instance.visibilityAssociation,
      'kurs': instance.course,
      'versammlung': instance.assembly,
      'rv': instance.rv,
      'kuerzel': instance.abbreviation,
      'verein': instance.organization,
      'anmeldungen': instance.registrationCount,
      'beschreibungteaser': instance.descriptionTeaser,
      'freieplaetze': instance.freeSlots,
      'wotagdatum': instance.weekdayDate,
      'ampel': instance.trafficLight,
      'rabattinfo': instance.discountInfo,
      'link': instance.link,
      'url': instance.url,
      'idmandant': instance.clientEventId,
    };

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: (json['id'] as num).toInt(),
      clientId: (json['clientId'] as num?)?.toInt(),
      startDateAndTime: DateTime.parse(json['startDateAndTime'] as String),
      endDateAndTime: DateTime.parse(json['endDateAndTime'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      location: json['location'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      time: json['time'] as String?,
      numberOfDays: (json['numberOfDays'] as num?)?.toInt(),
      contactName: json['contactName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      maxParticipants: (json['maxParticipants'] as num?)?.toInt(),
      image: json['image'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      costMember: (json['costMember'] as num?)?.toDouble(),
      costGuest: (json['costGuest'] as num?)?.toDouble(),
      costCompanion: (json['costCompanion'] as num?)?.toDouble(),
      cost: json['cost'] as String?,
      publicType: (json['publicType'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      registrationStart: json['registrationStart'] == null
          ? null
          : DateTime.parse(json['registrationStart'] as String),
      registrationDeadline: json['registrationDeadline'] == null
          ? null
          : DateTime.parse(json['registrationDeadline'] as String),
      visibilityType: (json['visibilityType'] as num?)?.toInt(),
      deregistrationDeadline: json['deregistrationDeadline'] == null
          ? null
          : DateTime.parse(json['deregistrationDeadline'] as String),
      maxCompanions: (json['maxCompanions'] as num?)?.toInt(),
      seriesEventId: (json['seriesEventId'] as num?)?.toInt(),
      visibilityAssociation: (json['visibilityAssociation'] as num?)?.toInt(),
      rv: json['rv'] as bool?,
      abbreviation: json['abbreviation'] as String?,
      organization: json['organization'] as String?,
      registrationCount: (json['registrationCount'] as num?)?.toInt(),
      freeSlots: (json['freeSlots'] as num?)?.toInt(),
      link: json['link'] as String?,
      baseUrl: json['baseUrl'] as String?,
      clientEventId: (json['clientEventId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'startDateAndTime': instance.startDateAndTime.toIso8601String(),
      'endDateAndTime': instance.endDateAndTime.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'groupId': instance.groupId,
      'time': instance.time,
      'numberOfDays': instance.numberOfDays,
      'contactName': instance.contactName,
      'contactEmail': instance.contactEmail,
      'maxParticipants': instance.maxParticipants,
      'image': instance.image,
      'attachments': instance.attachments,
      'costMember': instance.costMember,
      'costGuest': instance.costGuest,
      'costCompanion': instance.costCompanion,
      'cost': instance.cost,
      'publicType': instance.publicType,
      'type': instance.type,
      'registrationStart': instance.registrationStart?.toIso8601String(),
      'registrationDeadline': instance.registrationDeadline?.toIso8601String(),
      'visibilityType': instance.visibilityType,
      'deregistrationDeadline':
          instance.deregistrationDeadline?.toIso8601String(),
      'maxCompanions': instance.maxCompanions,
      'seriesEventId': instance.seriesEventId,
      'visibilityAssociation': instance.visibilityAssociation,
      'rv': instance.rv,
      'abbreviation': instance.abbreviation,
      'organization': instance.organization,
      'registrationCount': instance.registrationCount,
      'freeSlots': instance.freeSlots,
      'link': instance.link,
      'baseUrl': instance.baseUrl,
      'clientEventId': instance.clientEventId,
    };
