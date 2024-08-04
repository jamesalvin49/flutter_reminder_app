// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReminderModelCollection on Isar {
  IsarCollection<ReminderModel> get reminderModels => this.collection();
}

const ReminderModelSchema = CollectionSchema(
  name: r'ReminderModel',
  id: -6553527084112746384,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'customMessage': PropertySchema(
      id: 1,
      name: r'customMessage',
      type: IsarType.string,
    ),
    r'dateTime': PropertySchema(
      id: 2,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'endDate': PropertySchema(
      id: 3,
      name: r'endDate',
      type: IsarType.dateTime,
    ),
    r'icon': PropertySchema(
      id: 4,
      name: r'icon',
      type: IsarType.string,
    ),
    r'isActive': PropertySchema(
      id: 5,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isLifetime': PropertySchema(
      id: 6,
      name: r'isLifetime',
      type: IsarType.bool,
    ),
    r'isRecurring': PropertySchema(
      id: 7,
      name: r'isRecurring',
      type: IsarType.bool,
    ),
    r'notificationSound': PropertySchema(
      id: 8,
      name: r'notificationSound',
      type: IsarType.string,
    ),
    r'recurrenceType': PropertySchema(
      id: 9,
      name: r'recurrenceType',
      type: IsarType.string,
    ),
    r'timeZone': PropertySchema(
      id: 10,
      name: r'timeZone',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 11,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 12,
      name: r'type',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 13,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 14,
      name: r'userId',
      type: IsarType.long,
    ),
    r'vibrationEnabled': PropertySchema(
      id: 15,
      name: r'vibrationEnabled',
      type: IsarType.bool,
    )
  },
  estimateSize: _reminderModelEstimateSize,
  serialize: _reminderModelSerialize,
  deserialize: _reminderModelDeserialize,
  deserializeProp: _reminderModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _reminderModelGetId,
  getLinks: _reminderModelGetLinks,
  attach: _reminderModelAttach,
  version: '3.1.0+1',
);

int _reminderModelEstimateSize(
  ReminderModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.customMessage.length * 3;
  {
    final value = object.icon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notificationSound;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.recurrenceType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.timeZone.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _reminderModelSerialize(
  ReminderModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.customMessage);
  writer.writeDateTime(offsets[2], object.dateTime);
  writer.writeDateTime(offsets[3], object.endDate);
  writer.writeString(offsets[4], object.icon);
  writer.writeBool(offsets[5], object.isActive);
  writer.writeBool(offsets[6], object.isLifetime);
  writer.writeBool(offsets[7], object.isRecurring);
  writer.writeString(offsets[8], object.notificationSound);
  writer.writeString(offsets[9], object.recurrenceType);
  writer.writeString(offsets[10], object.timeZone);
  writer.writeString(offsets[11], object.title);
  writer.writeString(offsets[12], object.type);
  writer.writeDateTime(offsets[13], object.updatedAt);
  writer.writeLong(offsets[14], object.userId);
  writer.writeBool(offsets[15], object.vibrationEnabled);
}

ReminderModel _reminderModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReminderModel(
    createdAt: reader.readDateTime(offsets[0]),
    customMessage: reader.readString(offsets[1]),
    dateTime: reader.readDateTime(offsets[2]),
    endDate: reader.readDateTimeOrNull(offsets[3]),
    icon: reader.readStringOrNull(offsets[4]),
    isActive: reader.readBool(offsets[5]),
    isLifetime: reader.readBool(offsets[6]),
    isRecurring: reader.readBool(offsets[7]),
    notificationSound: reader.readStringOrNull(offsets[8]),
    recurrenceType: reader.readStringOrNull(offsets[9]),
    timeZone: reader.readString(offsets[10]),
    title: reader.readString(offsets[11]),
    type: reader.readString(offsets[12]),
    updatedAt: reader.readDateTimeOrNull(offsets[13]),
    userId: reader.readLong(offsets[14]),
    vibrationEnabled: reader.readBool(offsets[15]),
  );
  object.id = id;
  return object;
}

P _reminderModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reminderModelGetId(ReminderModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reminderModelGetLinks(ReminderModel object) {
  return [];
}

void _reminderModelAttach(
    IsarCollection<dynamic> col, Id id, ReminderModel object) {
  object.id = id;
}

extension ReminderModelQueryWhereSort
    on QueryBuilder<ReminderModel, ReminderModel, QWhere> {
  QueryBuilder<ReminderModel, ReminderModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReminderModelQueryWhere
    on QueryBuilder<ReminderModel, ReminderModel, QWhereClause> {
  QueryBuilder<ReminderModel, ReminderModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterWhereClause> idBetween(
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

extension ReminderModelQueryFilter
    on QueryBuilder<ReminderModel, ReminderModel, QFilterCondition> {
  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      customMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      dateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      endDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> iconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> iconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      isActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      isLifetimeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLifetime',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      isRecurringEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRecurring',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notificationSound',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notificationSound',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationSound',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationSound',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationSound',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      notificationSoundIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationSound',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recurrenceType',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recurrenceType',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recurrenceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recurrenceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recurrenceType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recurrenceType',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      recurrenceTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recurrenceType',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeZone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeZone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      timeZoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleEqualTo(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleGreaterThan(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleLessThan(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleBetween(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleStartsWith(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleEndsWith(
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

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      userIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterFilterCondition>
      vibrationEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vibrationEnabled',
        value: value,
      ));
    });
  }
}

extension ReminderModelQueryObject
    on QueryBuilder<ReminderModel, ReminderModel, QFilterCondition> {}

extension ReminderModelQueryLinks
    on QueryBuilder<ReminderModel, ReminderModel, QFilterCondition> {}

extension ReminderModelQuerySortBy
    on QueryBuilder<ReminderModel, ReminderModel, QSortBy> {
  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByCustomMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMessage', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByCustomMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMessage', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByIsLifetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLifetime', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByIsLifetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLifetime', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByNotificationSound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationSound', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByNotificationSoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationSound', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByRecurrenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceType', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByRecurrenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceType', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrationEnabled', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      sortByVibrationEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrationEnabled', Sort.desc);
    });
  }
}

extension ReminderModelQuerySortThenBy
    on QueryBuilder<ReminderModel, ReminderModel, QSortThenBy> {
  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByCustomMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMessage', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByCustomMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMessage', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIsLifetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLifetime', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByIsLifetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLifetime', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByNotificationSound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationSound', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByNotificationSoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationSound', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByRecurrenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceType', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByRecurrenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceType', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrationEnabled', Sort.asc);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QAfterSortBy>
      thenByVibrationEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrationEnabled', Sort.desc);
    });
  }
}

extension ReminderModelQueryWhereDistinct
    on QueryBuilder<ReminderModel, ReminderModel, QDistinct> {
  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByCustomMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDate');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByIsLifetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLifetime');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct>
      distinctByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRecurring');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct>
      distinctByNotificationSound({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationSound',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct>
      distinctByRecurrenceType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recurrenceType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByTimeZone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeZone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }

  QueryBuilder<ReminderModel, ReminderModel, QDistinct>
      distinctByVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vibrationEnabled');
    });
  }
}

extension ReminderModelQueryProperty
    on QueryBuilder<ReminderModel, ReminderModel, QQueryProperty> {
  QueryBuilder<ReminderModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReminderModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ReminderModel, String, QQueryOperations>
      customMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customMessage');
    });
  }

  QueryBuilder<ReminderModel, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<ReminderModel, DateTime?, QQueryOperations> endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDate');
    });
  }

  QueryBuilder<ReminderModel, String?, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<ReminderModel, bool, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<ReminderModel, bool, QQueryOperations> isLifetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLifetime');
    });
  }

  QueryBuilder<ReminderModel, bool, QQueryOperations> isRecurringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRecurring');
    });
  }

  QueryBuilder<ReminderModel, String?, QQueryOperations>
      notificationSoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationSound');
    });
  }

  QueryBuilder<ReminderModel, String?, QQueryOperations>
      recurrenceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recurrenceType');
    });
  }

  QueryBuilder<ReminderModel, String, QQueryOperations> timeZoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeZone');
    });
  }

  QueryBuilder<ReminderModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<ReminderModel, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<ReminderModel, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ReminderModel, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<ReminderModel, bool, QQueryOperations>
      vibrationEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vibrationEnabled');
    });
  }
}
