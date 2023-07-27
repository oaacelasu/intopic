// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_dto_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizDtoIsarCollection on Isar {
  IsarCollection<QuizDtoIsar> get quizDtoIsars => this.collection();
}

const QuizDtoIsarSchema = CollectionSchema(
  name: r'QuizDtoIsar',
  id: -7245149902608633395,
  properties: {
    r'quiz': PropertySchema(
      id: 0,
      name: r'quiz',
      type: IsarType.object,
      target: r'QuizDto',
    )
  },
  estimateSize: _quizDtoIsarEstimateSize,
  serialize: _quizDtoIsarSerialize,
  deserialize: _quizDtoIsarDeserialize,
  deserializeProp: _quizDtoIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'QuizDto': QuizDtoSchema,
    r'QuestionDto': QuestionDtoSchema
  },
  getId: _quizDtoIsarGetId,
  getLinks: _quizDtoIsarGetLinks,
  attach: _quizDtoIsarAttach,
  version: '3.1.0',
);

int _quizDtoIsarEstimateSize(
  QuizDtoIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      QuizDtoSchema.estimateSize(object.quiz, allOffsets[QuizDto]!, allOffsets);
  return bytesCount;
}

void _quizDtoIsarSerialize(
  QuizDtoIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<QuizDto>(
    offsets[0],
    allOffsets,
    QuizDtoSchema.serialize,
    object.quiz,
  );
}

QuizDtoIsar _quizDtoIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizDtoIsar(
    id,
    reader.readObjectOrNull<QuizDto>(
          offsets[0],
          QuizDtoSchema.deserialize,
          allOffsets,
        ) ??
        QuizDto(),
  );
  return object;
}

P _quizDtoIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<QuizDto>(
            offset,
            QuizDtoSchema.deserialize,
            allOffsets,
          ) ??
          QuizDto()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizDtoIsarGetId(QuizDtoIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quizDtoIsarGetLinks(QuizDtoIsar object) {
  return [];
}

void _quizDtoIsarAttach(
    IsarCollection<dynamic> col, Id id, QuizDtoIsar object) {}

extension QuizDtoIsarQueryWhereSort
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QWhere> {
  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizDtoIsarQueryWhere
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QWhereClause> {
  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterWhereClause> idBetween(
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

extension QuizDtoIsarQueryFilter
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QFilterCondition> {
  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterFilterCondition> idBetween(
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
}

extension QuizDtoIsarQueryObject
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QFilterCondition> {
  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterFilterCondition> quiz(
      FilterQuery<QuizDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'quiz');
    });
  }
}

extension QuizDtoIsarQueryLinks
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QFilterCondition> {}

extension QuizDtoIsarQuerySortBy
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QSortBy> {}

extension QuizDtoIsarQuerySortThenBy
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QSortThenBy> {
  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDtoIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension QuizDtoIsarQueryWhereDistinct
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QDistinct> {}

extension QuizDtoIsarQueryProperty
    on QueryBuilder<QuizDtoIsar, QuizDtoIsar, QQueryProperty> {
  QueryBuilder<QuizDtoIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuizDtoIsar, QuizDto, QQueryOperations> quizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quiz');
    });
  }
}
