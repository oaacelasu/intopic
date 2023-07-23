// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_response_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizResponseDtoCollection on Isar {
  IsarCollection<QuizResponseDto> get quizResponseDtos => this.collection();
}

const QuizResponseDtoSchema = CollectionSchema(
  name: r'QuizResponseDto',
  id: -5960447766781211359,
  properties: {
    r'quizCurrentQuestionIndex': PropertySchema(
      id: 0,
      name: r'quizCurrentQuestionIndex',
      type: IsarType.long,
    ),
    r'quizId': PropertySchema(
      id: 1,
      name: r'quizId',
      type: IsarType.string,
    ),
    r'responses': PropertySchema(
      id: 2,
      name: r'responses',
      type: IsarType.objectList,
      target: r'QuestionResponseDto',
    )
  },
  estimateSize: _quizResponseDtoEstimateSize,
  serialize: _quizResponseDtoSerialize,
  deserialize: _quizResponseDtoDeserialize,
  deserializeProp: _quizResponseDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'QuestionResponseDto': QuestionResponseDtoSchema},
  getId: _quizResponseDtoGetId,
  getLinks: _quizResponseDtoGetLinks,
  attach: _quizResponseDtoAttach,
  version: '3.1.0',
);

int _quizResponseDtoEstimateSize(
  QuizResponseDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.quizId.length * 3;
  bytesCount += 3 + object.responses.length * 3;
  {
    final offsets = allOffsets[QuestionResponseDto]!;
    for (var i = 0; i < object.responses.length; i++) {
      final value = object.responses[i];
      bytesCount += QuestionResponseDtoSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _quizResponseDtoSerialize(
  QuizResponseDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.quizCurrentQuestionIndex);
  writer.writeString(offsets[1], object.quizId);
  writer.writeObjectList<QuestionResponseDto>(
    offsets[2],
    allOffsets,
    QuestionResponseDtoSchema.serialize,
    object.responses,
  );
}

QuizResponseDto _quizResponseDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizResponseDto(
    id: id,
    quizCurrentQuestionIndex: reader.readLong(offsets[0]),
    quizId: reader.readString(offsets[1]),
    responses: reader.readObjectList<QuestionResponseDto>(
          offsets[2],
          QuestionResponseDtoSchema.deserialize,
          allOffsets,
          QuestionResponseDto(),
        ) ??
        [],
  );
  return object;
}

P _quizResponseDtoDeserializeProp<P>(
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
      return (reader.readObjectList<QuestionResponseDto>(
            offset,
            QuestionResponseDtoSchema.deserialize,
            allOffsets,
            QuestionResponseDto(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizResponseDtoGetId(QuizResponseDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quizResponseDtoGetLinks(QuizResponseDto object) {
  return [];
}

void _quizResponseDtoAttach(IsarCollection<dynamic> col, Id id, QuizResponseDto object) {}

extension QuizResponseDtoQueryWhereSort on QueryBuilder<QuizResponseDto, QuizResponseDto, QWhere> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizResponseDtoQueryWhere on QueryBuilder<QuizResponseDto, QuizResponseDto, QWhereClause> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterWhereClause> idBetween(
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

extension QuizResponseDtoQueryFilter on QueryBuilder<QuizResponseDto, QuizResponseDto, QFilterCondition> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizCurrentQuestionIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizCurrentQuestionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizCurrentQuestionIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizCurrentQuestionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizCurrentQuestionIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizCurrentQuestionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizCurrentQuestionIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizCurrentQuestionIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdEqualTo(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdGreaterThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdLessThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdBetween(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdStartsWith(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdEndsWith(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> quizIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesLengthEqualTo(int length) {
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesIsEmpty() {
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesIsNotEmpty() {
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesLengthLessThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesLengthGreaterThan(
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

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesLengthBetween(
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
}

extension QuizResponseDtoQueryObject on QueryBuilder<QuizResponseDto, QuizResponseDto, QFilterCondition> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterFilterCondition> responsesElement(
      FilterQuery<QuestionResponseDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'responses');
    });
  }
}

extension QuizResponseDtoQueryLinks on QueryBuilder<QuizResponseDto, QuizResponseDto, QFilterCondition> {}

extension QuizResponseDtoQuerySortBy on QueryBuilder<QuizResponseDto, QuizResponseDto, QSortBy> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> sortByQuizCurrentQuestionIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizCurrentQuestionIndex', Sort.asc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> sortByQuizCurrentQuestionIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizCurrentQuestionIndex', Sort.desc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> sortByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> sortByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }
}

extension QuizResponseDtoQuerySortThenBy on QueryBuilder<QuizResponseDto, QuizResponseDto, QSortThenBy> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenByQuizCurrentQuestionIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizCurrentQuestionIndex', Sort.asc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenByQuizCurrentQuestionIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizCurrentQuestionIndex', Sort.desc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QAfterSortBy> thenByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }
}

extension QuizResponseDtoQueryWhereDistinct on QueryBuilder<QuizResponseDto, QuizResponseDto, QDistinct> {
  QueryBuilder<QuizResponseDto, QuizResponseDto, QDistinct> distinctByQuizCurrentQuestionIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizCurrentQuestionIndex');
    });
  }

  QueryBuilder<QuizResponseDto, QuizResponseDto, QDistinct> distinctByQuizId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizId', caseSensitive: caseSensitive);
    });
  }
}

extension QuizResponseDtoQueryProperty on QueryBuilder<QuizResponseDto, QuizResponseDto, QQueryProperty> {
  QueryBuilder<QuizResponseDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuizResponseDto, int, QQueryOperations> quizCurrentQuestionIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizCurrentQuestionIndex');
    });
  }

  QueryBuilder<QuizResponseDto, String, QQueryOperations> quizIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizId');
    });
  }

  QueryBuilder<QuizResponseDto, List<QuestionResponseDto>, QQueryOperations> responsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responses');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizResponseDto _$$_QuizResponseDtoFromJson(Map<String, dynamic> json) => _$_QuizResponseDto(
      id: json['id'] as int,
      quizId: json['quizId'] as String,
      responses: (json['responses'] as List<dynamic>)
          .map((e) => QuestionResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      quizCurrentQuestionIndex: json['quizCurrentQuestionIndex'] as int,
    );

Map<String, dynamic> _$$_QuizResponseDtoToJson(_$_QuizResponseDto instance) => <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'responses': instance.responses,
      'quizCurrentQuestionIndex': instance.quizCurrentQuestionIndex,
    };
