// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserPreferencesModelCollection on Isar {
  IsarCollection<UserPreferencesModel> get userPreferencesModels =>
      this.collection();
}

const UserPreferencesModelSchema = CollectionSchema(
  name: r'UserPreferencesModel',
  id: 3603656307210587948,
  properties: {
    r'dailyReminderTime': PropertySchema(
      id: 0,
      name: r'dailyReminderTime',
      type: IsarType.string,
    ),
    r'darkModeEnabled': PropertySchema(
      id: 1,
      name: r'darkModeEnabled',
      type: IsarType.bool,
    ),
    r'defaultNotificationSound': PropertySchema(
      id: 2,
      name: r'defaultNotificationSound',
      type: IsarType.string,
    ),
    r'defaultVibrationEnabled': PropertySchema(
      id: 3,
      name: r'defaultVibrationEnabled',
      type: IsarType.bool,
    ),
    r'isDailyReminderEnabled': PropertySchema(
      id: 4,
      name: r'isDailyReminderEnabled',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 5,
      name: r'language',
      type: IsarType.string,
    ),
    r'preferredEasterReminder': PropertySchema(
      id: 6,
      name: r'preferredEasterReminder',
      type: IsarType.string,
    ),
    r'preferredReminderTime': PropertySchema(
      id: 7,
      name: r'preferredReminderTime',
      type: IsarType.string,
    ),
    r'timeZone': PropertySchema(
      id: 8,
      name: r'timeZone',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 9,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _userPreferencesModelEstimateSize,
  serialize: _userPreferencesModelSerialize,
  deserialize: _userPreferencesModelDeserialize,
  deserializeProp: _userPreferencesModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userPreferencesModelGetId,
  getLinks: _userPreferencesModelGetLinks,
  attach: _userPreferencesModelAttach,
  version: '3.1.0+1',
);

int _userPreferencesModelEstimateSize(
  UserPreferencesModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dailyReminderTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.defaultNotificationSound;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.language.length * 3;
  bytesCount += 3 + object.preferredEasterReminder.length * 3;
  {
    final value = object.preferredReminderTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.timeZone.length * 3;
  return bytesCount;
}

void _userPreferencesModelSerialize(
  UserPreferencesModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dailyReminderTime);
  writer.writeBool(offsets[1], object.darkModeEnabled);
  writer.writeString(offsets[2], object.defaultNotificationSound);
  writer.writeBool(offsets[3], object.defaultVibrationEnabled);
  writer.writeBool(offsets[4], object.isDailyReminderEnabled);
  writer.writeString(offsets[5], object.language);
  writer.writeString(offsets[6], object.preferredEasterReminder);
  writer.writeString(offsets[7], object.preferredReminderTime);
  writer.writeString(offsets[8], object.timeZone);
  writer.writeLong(offsets[9], object.userId);
}

UserPreferencesModel _userPreferencesModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserPreferencesModel(
    dailyReminderTime: reader.readStringOrNull(offsets[0]),
    darkModeEnabled: reader.readBool(offsets[1]),
    defaultNotificationSound: reader.readStringOrNull(offsets[2]),
    defaultVibrationEnabled: reader.readBool(offsets[3]),
    isDailyReminderEnabled: reader.readBool(offsets[4]),
    language: reader.readString(offsets[5]),
    preferredEasterReminder: reader.readString(offsets[6]),
    preferredReminderTime: reader.readStringOrNull(offsets[7]),
    timeZone: reader.readString(offsets[8]),
    userId: reader.readLong(offsets[9]),
  );
  object.id = id;
  return object;
}

P _userPreferencesModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userPreferencesModelGetId(UserPreferencesModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userPreferencesModelGetLinks(
    UserPreferencesModel object) {
  return [];
}

void _userPreferencesModelAttach(
    IsarCollection<dynamic> col, Id id, UserPreferencesModel object) {
  object.id = id;
}

extension UserPreferencesModelQueryWhereSort
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QWhere> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserPreferencesModelQueryWhere
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QWhereClause> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idBetween(
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

extension UserPreferencesModelQueryFilter on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyReminderTime',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyReminderTime',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyReminderTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      dailyReminderTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dailyReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      dailyReminderTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dailyReminderTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyReminderTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyReminderTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dailyReminderTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> darkModeEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'darkModeEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultNotificationSound',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultNotificationSound',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultNotificationSound',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      defaultNotificationSoundContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'defaultNotificationSound',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      defaultNotificationSoundMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'defaultNotificationSound',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultNotificationSound',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultNotificationSoundIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'defaultNotificationSound',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> defaultVibrationEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultVibrationEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> isDailyReminderEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDailyReminderEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preferredEasterReminder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      preferredEasterReminderContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preferredEasterReminder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      preferredEasterReminderMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preferredEasterReminder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferredEasterReminder',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredEasterReminderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preferredEasterReminder',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'preferredReminderTime',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'preferredReminderTime',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preferredReminderTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      preferredReminderTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preferredReminderTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      preferredReminderTimeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preferredReminderTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferredReminderTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredReminderTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preferredReminderTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneEqualTo(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneGreaterThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneLessThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneBetween(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneStartsWith(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneEndsWith(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      timeZoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      timeZoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeZone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> timeZoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> userIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> userIdGreaterThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> userIdLessThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> userIdBetween(
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
}

extension UserPreferencesModelQueryObject on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {}

extension UserPreferencesModelQueryLinks on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {}

extension UserPreferencesModelQuerySortBy
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QSortBy> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDailyReminderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyReminderTime', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDailyReminderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyReminderTime', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDarkModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDarkModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDefaultNotificationSound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultNotificationSound', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDefaultNotificationSoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultNotificationSound', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDefaultVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultVibrationEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDefaultVibrationEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultVibrationEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByIsDailyReminderEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyReminderEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByIsDailyReminderEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyReminderEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredEasterReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredEasterReminder', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredEasterReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredEasterReminder', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredReminderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredReminderTime', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredReminderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredReminderTime', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserPreferencesModelQuerySortThenBy
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QSortThenBy> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDailyReminderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyReminderTime', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDailyReminderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyReminderTime', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDarkModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDarkModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDefaultNotificationSound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultNotificationSound', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDefaultNotificationSoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultNotificationSound', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDefaultVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultVibrationEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDefaultVibrationEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultVibrationEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByIsDailyReminderEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyReminderEnabled', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByIsDailyReminderEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyReminderEnabled', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredEasterReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredEasterReminder', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredEasterReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredEasterReminder', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredReminderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredReminderTime', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredReminderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredReminderTime', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserPreferencesModelQueryWhereDistinct
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByDailyReminderTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyReminderTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByDarkModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'darkModeEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByDefaultNotificationSound({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defaultNotificationSound',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByDefaultVibrationEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defaultVibrationEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByIsDailyReminderEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDailyReminderEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByPreferredEasterReminder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preferredEasterReminder',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByPreferredReminderTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preferredReminderTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByTimeZone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeZone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension UserPreferencesModelQueryProperty on QueryBuilder<
    UserPreferencesModel, UserPreferencesModel, QQueryProperty> {
  QueryBuilder<UserPreferencesModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserPreferencesModel, String?, QQueryOperations>
      dailyReminderTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyReminderTime');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      darkModeEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'darkModeEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, String?, QQueryOperations>
      defaultNotificationSoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defaultNotificationSound');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      defaultVibrationEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defaultVibrationEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      isDailyReminderEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDailyReminderEnabled');
    });
  }

  QueryBuilder<UserPreferencesModel, String, QQueryOperations>
      languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<UserPreferencesModel, String, QQueryOperations>
      preferredEasterReminderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preferredEasterReminder');
    });
  }

  QueryBuilder<UserPreferencesModel, String?, QQueryOperations>
      preferredReminderTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preferredReminderTime');
    });
  }

  QueryBuilder<UserPreferencesModel, String, QQueryOperations>
      timeZoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeZone');
    });
  }

  QueryBuilder<UserPreferencesModel, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
