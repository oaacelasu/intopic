// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_submission_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizSubmissionDtoCollection on Isar {
  IsarCollection<QuizSubmissionDto> get quizSubmissionDtos => this.collection();
}

const QuizSubmissionDtoSchema = CollectionSchema(
  name: r'QuizSubmissionDto',
  id: -4472060734142349663,
  properties: {
    r'questions': PropertySchema(
      id: 0,
      name: r'questions',
      type: IsarType.objectList,
      target: r'QuestionDto',
    ),
    r'quizId': PropertySchema(
      id: 1,
      name: r'quizId',
      type: IsarType.string,
    ),
    r'quizName': PropertySchema(
      id: 2,
      name: r'quizName',
      type: IsarType.string,
    ),
    r'responses': PropertySchema(
      id: 3,
      name: r'responses',
      type: IsarType.objectList,
      target: r'QuestionResponseDto',
    ),
    r'submittedAt': PropertySchema(
      id: 4,
      name: r'submittedAt',
      type: IsarType.long,
    ),
    r'topicId': PropertySchema(
      id: 5,
      name: r'topicId',
      type: IsarType.string,
    )
  },
  estimateSize: _quizSubmissionDtoEstimateSize,
  serialize: _quizSubmissionDtoSerialize,
  deserialize: _quizSubmissionDtoDeserialize,
  deserializeProp: _quizSubmissionDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'QuestionResponseDto': QuestionResponseDtoSchema,
    r'QuestionDto': QuestionDtoSchema
  },
  getId: _quizSubmissionDtoGetId,
  getLinks: _quizSubmissionDtoGetLinks,
  attach: _quizSubmissionDtoAttach,
  version: '3.1.0',
);

int _quizSubmissionDtoEstimateSize(
  QuizSubmissionDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.questions.length * 3;
  {
    final offsets = allOffsets[QuestionDto]!;
    for (var i = 0; i < object.questions.length; i++) {
      final value = object.questions[i];
      bytesCount += QuestionDtoSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.quizId.length * 3;
  bytesCount += 3 + object.quizName.length * 3;
  bytesCount += 3 + object.responses.length * 3;
  {
    final offsets = allOffsets[QuestionResponseDto]!;
    for (var i = 0; i < object.responses.length; i++) {
      final value = object.responses[i];
      bytesCount +=
          QuestionResponseDtoSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.topicId.length * 3;
  return bytesCount;
}

void _quizSubmissionDtoSerialize(
  QuizSubmissionDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<QuestionDto>(
    offsets[0],
    allOffsets,
    QuestionDtoSchema.serialize,
    object.questions,
  );
  writer.writeString(offsets[1], object.quizId);
  writer.writeString(offsets[2], object.quizName);
  writer.writeObjectList<QuestionResponseDto>(
    offsets[3],
    allOffsets,
    QuestionResponseDtoSchema.serialize,
    object.responses,
  );
  writer.writeLong(offsets[4], object.submittedAt);
  writer.writeString(offsets[5], object.topicId);
}

QuizSubmissionDto _quizSubmissionDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizSubmissionDto(
    id: id,
    questions: reader.readObjectList<QuestionDto>(
          offsets[0],
          QuestionDtoSchema.deserialize,
          allOffsets,
          QuestionDto(),
        ) ??
        [],
    quizId: reader.readString(offsets[1]),
    quizName: reader.readString(offsets[2]),
    responses: reader.readObjectList<QuestionResponseDto>(
          offsets[3],
          QuestionResponseDtoSchema.deserialize,
          allOffsets,
          QuestionResponseDto(),
        ) ??
        [],
    submittedAt: reader.readLong(offsets[4]),
    topicId: reader.readString(offsets[5]),
  );
  return object;
}

P _quizSubmissionDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<QuestionDto>(
            offset,
            QuestionDtoSchema.deserialize,
            allOffsets,
            QuestionDto(),
          ) ??
          []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<QuestionResponseDto>(
            offset,
            QuestionResponseDtoSchema.deserialize,
            allOffsets,
            QuestionResponseDto(),
          ) ??
          []) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizSubmissionDtoGetId(QuizSubmissionDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quizSubmissionDtoGetLinks(
    QuizSubmissionDto object) {
  return [];
}

void _quizSubmissionDtoAttach(
    IsarCollection<dynamic> col, Id id, QuizSubmissionDto object) {}

extension QuizSubmissionDtoQueryWhereSort
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QWhere> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizSubmissionDtoQueryWhere
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QWhereClause> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhereClause>
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

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterWhereClause>
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

extension QuizSubmissionDtoQueryFilter
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QFilterCondition> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
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

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'questions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizName',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      quizNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizName',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'responses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      submittedAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      submittedAtGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submittedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      submittedAtLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submittedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      submittedAtBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submittedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topicId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topicId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topicId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topicId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      topicIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topicId',
        value: '',
      ));
    });
  }
}

extension QuizSubmissionDtoQueryObject
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QFilterCondition> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      questionsElement(FilterQuery<QuestionDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'questions');
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterFilterCondition>
      responsesElement(FilterQuery<QuestionResponseDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'responses');
    });
  }
}

extension QuizSubmissionDtoQueryLinks
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QFilterCondition> {}

extension QuizSubmissionDtoQuerySortBy
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QSortBy> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByQuizName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizName', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByQuizNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizName', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortBySubmittedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedAt', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortBySubmittedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedAt', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicId', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      sortByTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicId', Sort.desc);
    });
  }
}

extension QuizSubmissionDtoQuerySortThenBy
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QSortThenBy> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByQuizName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizName', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByQuizNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizName', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenBySubmittedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedAt', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenBySubmittedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedAt', Sort.desc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicId', Sort.asc);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QAfterSortBy>
      thenByTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicId', Sort.desc);
    });
  }
}

extension QuizSubmissionDtoQueryWhereDistinct
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QDistinct> {
  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QDistinct>
      distinctByQuizId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QDistinct>
      distinctByQuizName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QDistinct>
      distinctBySubmittedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedAt');
    });
  }

  QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QDistinct>
      distinctByTopicId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topicId', caseSensitive: caseSensitive);
    });
  }
}

extension QuizSubmissionDtoQueryProperty
    on QueryBuilder<QuizSubmissionDto, QuizSubmissionDto, QQueryProperty> {
  QueryBuilder<QuizSubmissionDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuizSubmissionDto, List<QuestionDto>, QQueryOperations>
      questionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'questions');
    });
  }

  QueryBuilder<QuizSubmissionDto, String, QQueryOperations> quizIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizId');
    });
  }

  QueryBuilder<QuizSubmissionDto, String, QQueryOperations> quizNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizName');
    });
  }

  QueryBuilder<QuizSubmissionDto, List<QuestionResponseDto>, QQueryOperations>
      responsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responses');
    });
  }

  QueryBuilder<QuizSubmissionDto, int, QQueryOperations> submittedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedAt');
    });
  }

  QueryBuilder<QuizSubmissionDto, String, QQueryOperations> topicIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topicId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizSubmissionDto _$$_QuizSubmissionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizSubmissionDto(
      id: json['id'] as int,
      quizId: json['quizId'] as String,
      topicId: json['topicId'] as String,
      quizName: json['quizName'] as String,
      responses: (json['responses'] as List<dynamic>)
          .map((e) => QuestionResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      submittedAt: json['submittedAt'] as int,
    );

Map<String, dynamic> _$$_QuizSubmissionDtoToJson(
        _$_QuizSubmissionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'topicId': instance.topicId,
      'quizName': instance.quizName,
      'responses': instance.responses,
      'questions': instance.questions,
      'submittedAt': instance.submittedAt,
    };
