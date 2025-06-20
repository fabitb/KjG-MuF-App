// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMidaEventCollection on Isar {
  IsarCollection<MidaEvent> get midaEvents => this.collection();
}

const MidaEventSchema = CollectionSchema(
  name: r'MidaEvent',
  id: -2281719294625486412,
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
      type: IsarType.string,
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
    r'freeSlots': PropertySchema(
      id: 14,
      name: r'freeSlots',
      type: IsarType.string,
    ),
    r'groupId': PropertySchema(
      id: 15,
      name: r'groupId',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 16,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 17,
      name: r'image',
      type: IsarType.string,
    ),
    r'link': PropertySchema(
      id: 18,
      name: r'link',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 19,
      name: r'location',
      type: IsarType.string,
    ),
    r'maxCompanions': PropertySchema(
      id: 20,
      name: r'maxCompanions',
      type: IsarType.long,
    ),
    r'maxParticipants': PropertySchema(
      id: 21,
      name: r'maxParticipants',
      type: IsarType.long,
    ),
    r'numberOfDays': PropertySchema(
      id: 22,
      name: r'numberOfDays',
      type: IsarType.long,
    ),
    r'organization': PropertySchema(
      id: 23,
      name: r'organization',
      type: IsarType.string,
    ),
    r'publicType': PropertySchema(
      id: 24,
      name: r'publicType',
      type: IsarType.long,
    ),
    r'registrationCount': PropertySchema(
      id: 25,
      name: r'registrationCount',
      type: IsarType.long,
    ),
    r'registrationDeadline': PropertySchema(
      id: 26,
      name: r'registrationDeadline',
      type: IsarType.dateTime,
    ),
    r'registrationStart': PropertySchema(
      id: 27,
      name: r'registrationStart',
      type: IsarType.dateTime,
    ),
    r'rv': PropertySchema(
      id: 28,
      name: r'rv',
      type: IsarType.bool,
    ),
    r'seriesEventId': PropertySchema(
      id: 29,
      name: r'seriesEventId',
      type: IsarType.long,
    ),
    r'startDateAndTime': PropertySchema(
      id: 30,
      name: r'startDateAndTime',
      type: IsarType.dateTime,
    ),
    r'time': PropertySchema(
      id: 31,
      name: r'time',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 32,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 33,
      name: r'type',
      type: IsarType.long,
    ),
    r'visibilityAssociation': PropertySchema(
      id: 34,
      name: r'visibilityAssociation',
      type: IsarType.long,
    ),
    r'visibilityType': PropertySchema(
      id: 35,
      name: r'visibilityType',
      type: IsarType.long,
    )
  },
  estimateSize: _midaEventEstimateSize,
  serialize: _midaEventSerialize,
  deserialize: _midaEventDeserialize,
  deserializeProp: _midaEventDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _midaEventGetId,
  getLinks: _midaEventGetLinks,
  attach: _midaEventAttach,
  version: '3.1.8',
);

int _midaEventEstimateSize(
  MidaEvent object,
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
  bytesCount += 3 + object.baseUrl.length * 3;
  {
    final value = object.clientEventId;
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
  {
    final value = object.freeSlots;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
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

void _midaEventSerialize(
  MidaEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.abbreviation);
  writer.writeStringList(offsets[1], object.attachments);
  writer.writeString(offsets[2], object.baseUrl);
  writer.writeString(offsets[3], object.clientEventId);
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
  writer.writeString(offsets[14], object.freeSlots);
  writer.writeLong(offsets[15], object.groupId);
  writer.writeLong(offsets[16], object.id);
  writer.writeString(offsets[17], object.image);
  writer.writeString(offsets[18], object.link);
  writer.writeString(offsets[19], object.location);
  writer.writeLong(offsets[20], object.maxCompanions);
  writer.writeLong(offsets[21], object.maxParticipants);
  writer.writeLong(offsets[22], object.numberOfDays);
  writer.writeString(offsets[23], object.organization);
  writer.writeLong(offsets[24], object.publicType);
  writer.writeLong(offsets[25], object.registrationCount);
  writer.writeDateTime(offsets[26], object.registrationDeadline);
  writer.writeDateTime(offsets[27], object.registrationStart);
  writer.writeBool(offsets[28], object.rv);
  writer.writeLong(offsets[29], object.seriesEventId);
  writer.writeDateTime(offsets[30], object.startDateAndTime);
  writer.writeString(offsets[31], object.time);
  writer.writeString(offsets[32], object.title);
  writer.writeLong(offsets[33], object.type);
  writer.writeLong(offsets[34], object.visibilityAssociation);
  writer.writeLong(offsets[35], object.visibilityType);
}

MidaEvent _midaEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MidaEvent(
    abbreviation: reader.readStringOrNull(offsets[0]),
    attachments: reader.readStringList(offsets[1]),
    baseUrl: reader.readString(offsets[2]),
    clientEventId: reader.readStringOrNull(offsets[3]),
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
    freeSlots: reader.readStringOrNull(offsets[14]),
    groupId: reader.readLongOrNull(offsets[15]),
    id: reader.readLong(offsets[16]),
    image: reader.readStringOrNull(offsets[17]),
    link: reader.readStringOrNull(offsets[18]),
    location: reader.readStringOrNull(offsets[19]),
    maxCompanions: reader.readLongOrNull(offsets[20]),
    maxParticipants: reader.readLongOrNull(offsets[21]),
    numberOfDays: reader.readLongOrNull(offsets[22]),
    organization: reader.readStringOrNull(offsets[23]),
    publicType: reader.readLongOrNull(offsets[24]),
    registrationCount: reader.readLongOrNull(offsets[25]),
    registrationDeadline: reader.readDateTimeOrNull(offsets[26]),
    registrationStart: reader.readDateTimeOrNull(offsets[27]),
    rv: reader.readBoolOrNull(offsets[28]),
    seriesEventId: reader.readLongOrNull(offsets[29]),
    startDateAndTime: reader.readDateTime(offsets[30]),
    time: reader.readStringOrNull(offsets[31]),
    title: reader.readString(offsets[32]),
    type: reader.readLongOrNull(offsets[33]),
    visibilityAssociation: reader.readLongOrNull(offsets[34]),
    visibilityType: reader.readLongOrNull(offsets[35]),
  );
  return object;
}

P _midaEventDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readLongOrNull(offset)) as P;
    case 21:
      return (reader.readLongOrNull(offset)) as P;
    case 22:
      return (reader.readLongOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset)) as P;
    case 25:
      return (reader.readLongOrNull(offset)) as P;
    case 26:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 27:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 28:
      return (reader.readBoolOrNull(offset)) as P;
    case 29:
      return (reader.readLongOrNull(offset)) as P;
    case 30:
      return (reader.readDateTime(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readString(offset)) as P;
    case 33:
      return (reader.readLongOrNull(offset)) as P;
    case 34:
      return (reader.readLongOrNull(offset)) as P;
    case 35:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _midaEventGetId(MidaEvent object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _midaEventGetLinks(MidaEvent object) {
  return [];
}

void _midaEventAttach(IsarCollection<dynamic> col, Id id, MidaEvent object) {}

extension MidaEventQueryWhereSort
    on QueryBuilder<MidaEvent, MidaEvent, QWhere> {
  QueryBuilder<MidaEvent, MidaEvent, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MidaEventQueryWhere
    on QueryBuilder<MidaEvent, MidaEvent, QWhereClause> {
  QueryBuilder<MidaEvent, MidaEvent, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterWhereClause> isarIdBetween(
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

extension MidaEventQueryFilter
    on QueryBuilder<MidaEvent, MidaEvent, QFilterCondition> {
  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> abbreviationEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> abbreviationBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> abbreviationMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      abbreviationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachments',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachments',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachments',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachments',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachments',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsLengthEqualTo(int length) {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsIsEmpty() {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsIsNotEmpty() {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsLengthLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      attachmentsLengthBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlEqualTo(
    String value, {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlGreaterThan(
    String value, {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlLessThan(
    String value, {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlBetween(
    String lower,
    String upper, {
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlContains(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> baseUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      baseUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientEventId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientEventId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clientEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clientEventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientEventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> clientIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      clientIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> clientIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientId',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> clientIdGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> clientIdLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> clientIdBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactEmail',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactEmail',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactEmailEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactEmailBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactEmailMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactName',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactName',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameContains(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> contactNameMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactName',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      contactNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactName',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cost',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costCompanion',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costCompanion',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costCompanionBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costGuestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costGuest',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costGuestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costGuest',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costGuestEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costGuestGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costGuestLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costGuestBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costMember',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costMember',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costMemberEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      costMemberGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costMemberLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> costMemberBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      deregistrationDeadlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deregistrationDeadline',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      deregistrationDeadlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deregistrationDeadline',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      deregistrationDeadlineEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deregistrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionContains(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> descriptionMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      endDateAndTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      endDateAndTimeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      endDateAndTimeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      endDateAndTimeBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'freeSlots',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      freeSlotsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'freeSlots',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      freeSlotsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freeSlots',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'freeSlots',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'freeSlots',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> freeSlotsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freeSlots',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      freeSlotsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'freeSlots',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> groupIdBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'link',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> linkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationContains(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxCompanions',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxCompanions',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxCompanions',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxCompanionsBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxParticipants',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxParticipants',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxParticipants',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      maxParticipantsBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      numberOfDaysIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      numberOfDaysIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> numberOfDaysEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      numberOfDaysGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      numberOfDaysLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> numberOfDaysBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> organizationEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> organizationBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> organizationMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      organizationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> publicTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'publicType',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      publicTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'publicType',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> publicTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publicType',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      publicTypeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> publicTypeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> publicTypeBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationCount',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationCount',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationCount',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationCountLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationCountBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationDeadlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationDeadline',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationDeadlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationDeadline',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationDeadlineEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDeadline',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationDeadlineBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registrationStart',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registrationStart',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationStartEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationStart',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationStartLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      registrationStartBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> rvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rv',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> rvIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rv',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> rvEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rv',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesEventId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesEventId',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      seriesEventIdBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      startDateAndTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDateAndTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      startDateAndTimeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      startDateAndTimeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      startDateAndTimeBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleEqualTo(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleStartsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleContains(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleMatches(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition> typeBetween(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityAssociationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibilityAssociation',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityAssociationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibilityAssociation',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityAssociationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibilityAssociation',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibilityType',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibilityType',
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibilityType',
        value: value,
      ));
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeGreaterThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeLessThan(
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

  QueryBuilder<MidaEvent, MidaEvent, QAfterFilterCondition>
      visibilityTypeBetween(
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

extension MidaEventQueryObject
    on QueryBuilder<MidaEvent, MidaEvent, QFilterCondition> {}

extension MidaEventQueryLinks
    on QueryBuilder<MidaEvent, MidaEvent, QFilterCondition> {}

extension MidaEventQuerySortBy on QueryBuilder<MidaEvent, MidaEvent, QSortBy> {
  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByBaseUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByBaseUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByClientEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByClientEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByContactEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByContactEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByContactName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByContactNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostCompanionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostGuestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByCostMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByDeregistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByEndDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByFreeSlots() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByFreeSlotsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByMaxCompanionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByMaxParticipantsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByOrganization() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByOrganizationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByPublicTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByRegistrationCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByRegistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByRegistrationStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByRvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortBySeriesEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByStartDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      sortByVisibilityAssociationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> sortByVisibilityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.desc);
    });
  }
}

extension MidaEventQuerySortThenBy
    on QueryBuilder<MidaEvent, MidaEvent, QSortThenBy> {
  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByBaseUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByBaseUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseUrl', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByClientEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByClientEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientEventId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByContactEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByContactEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactEmail', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByContactName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByContactNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactName', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostCompanionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costCompanion', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostGuestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costGuest', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByCostMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costMember', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByDeregistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deregistrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByEndDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByFreeSlots() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByFreeSlotsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freeSlots', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'link', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByMaxCompanionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxCompanions', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByMaxParticipantsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxParticipants', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByOrganization() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByOrganizationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'organization', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByPublicTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicType', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByRegistrationCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationCount', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByRegistrationDeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDeadline', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByRegistrationStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationStart', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByRvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rv', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenBySeriesEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesEventId', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByStartDateAndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDateAndTime', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy>
      thenByVisibilityAssociationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityAssociation', Sort.desc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.asc);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QAfterSortBy> thenByVisibilityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibilityType', Sort.desc);
    });
  }
}

extension MidaEventQueryWhereDistinct
    on QueryBuilder<MidaEvent, MidaEvent, QDistinct> {
  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByAbbreviation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abbreviation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByAttachments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachments');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByBaseUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'baseUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByClientEventId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientEventId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientId');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByContactEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByContactName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByCost(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByCostCompanion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costCompanion');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByCostGuest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costGuest');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByCostMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costMember');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct>
      distinctByDeregistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deregistrationDeadline');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByEndDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDateAndTime');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByFreeSlots(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freeSlots', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'link', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByMaxCompanions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxCompanions');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByMaxParticipants() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxParticipants');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfDays');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByOrganization(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'organization', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByPublicType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publicType');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByRegistrationCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationCount');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct>
      distinctByRegistrationDeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDeadline');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByRegistrationStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationStart');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByRv() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rv');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctBySeriesEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesEventId');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByStartDateAndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDateAndTime');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct>
      distinctByVisibilityAssociation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibilityAssociation');
    });
  }

  QueryBuilder<MidaEvent, MidaEvent, QDistinct> distinctByVisibilityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibilityType');
    });
  }
}

extension MidaEventQueryProperty
    on QueryBuilder<MidaEvent, MidaEvent, QQueryProperty> {
  QueryBuilder<MidaEvent, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> abbreviationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abbreviation');
    });
  }

  QueryBuilder<MidaEvent, List<String>?, QQueryOperations>
      attachmentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachments');
    });
  }

  QueryBuilder<MidaEvent, String, QQueryOperations> baseUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'baseUrl');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> clientEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientEventId');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> clientIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientId');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> contactEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactEmail');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> contactNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactName');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<MidaEvent, double?, QQueryOperations> costCompanionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costCompanion');
    });
  }

  QueryBuilder<MidaEvent, double?, QQueryOperations> costGuestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costGuest');
    });
  }

  QueryBuilder<MidaEvent, double?, QQueryOperations> costMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costMember');
    });
  }

  QueryBuilder<MidaEvent, DateTime?, QQueryOperations>
      deregistrationDeadlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deregistrationDeadline');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<MidaEvent, DateTime, QQueryOperations> endDateAndTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDateAndTime');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> freeSlotsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freeSlots');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<MidaEvent, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> linkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'link');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> maxCompanionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxCompanions');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> maxParticipantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxParticipants');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> numberOfDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfDays');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> organizationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'organization');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> publicTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publicType');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> registrationCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationCount');
    });
  }

  QueryBuilder<MidaEvent, DateTime?, QQueryOperations>
      registrationDeadlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDeadline');
    });
  }

  QueryBuilder<MidaEvent, DateTime?, QQueryOperations>
      registrationStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationStart');
    });
  }

  QueryBuilder<MidaEvent, bool?, QQueryOperations> rvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rv');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> seriesEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesEventId');
    });
  }

  QueryBuilder<MidaEvent, DateTime, QQueryOperations>
      startDateAndTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDateAndTime');
    });
  }

  QueryBuilder<MidaEvent, String?, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<MidaEvent, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations>
      visibilityAssociationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibilityAssociation');
    });
  }

  QueryBuilder<MidaEvent, int?, QQueryOperations> visibilityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibilityType');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackendMidaEventImpl _$$BackendMidaEventImplFromJson(
        Map<String, dynamic> json) =>
    _$BackendMidaEventImpl(
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

Map<String, dynamic> _$$BackendMidaEventImplToJson(
        _$BackendMidaEventImpl instance) =>
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

_$MidaEventImpl _$$MidaEventImplFromJson(Map<String, dynamic> json) =>
    _$MidaEventImpl(
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
      freeSlots: json['freeSlots'] as String?,
      link: json['link'] as String?,
      baseUrl: json['baseUrl'] as String,
      clientEventId: json['clientEventId'] as String?,
    );

Map<String, dynamic> _$$MidaEventImplToJson(_$MidaEventImpl instance) =>
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
