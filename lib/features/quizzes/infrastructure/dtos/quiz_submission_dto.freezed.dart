// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submission_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizSubmissionDto _$QuizSubmissionDtoFromJson(Map<String, dynamic> json) {
  return _QuizSubmissionDto.fromJson(json);
}

/// @nodoc
mixin _$QuizSubmissionDto {
  int get id => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  List<QuestionResponseDto> get responses => throw _privateConstructorUsedError;
  List<QuestionDto> get questions => throw _privateConstructorUsedError;
  int get submittedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizSubmissionDtoCopyWith<QuizSubmissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmissionDtoCopyWith<$Res> {
  factory $QuizSubmissionDtoCopyWith(
          QuizSubmissionDto value, $Res Function(QuizSubmissionDto) then) =
      _$QuizSubmissionDtoCopyWithImpl<$Res, QuizSubmissionDto>;
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponseDto> responses,
      List<QuestionDto> questions,
      int submittedAt});
}

/// @nodoc
class _$QuizSubmissionDtoCopyWithImpl<$Res, $Val extends QuizSubmissionDto>
    implements $QuizSubmissionDtoCopyWith<$Res> {
  _$QuizSubmissionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? questions = null,
    Object? submittedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseDto>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizSubmissionDtoCopyWith<$Res>
    implements $QuizSubmissionDtoCopyWith<$Res> {
  factory _$$_QuizSubmissionDtoCopyWith(_$_QuizSubmissionDto value,
          $Res Function(_$_QuizSubmissionDto) then) =
      __$$_QuizSubmissionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponseDto> responses,
      List<QuestionDto> questions,
      int submittedAt});
}

/// @nodoc
class __$$_QuizSubmissionDtoCopyWithImpl<$Res>
    extends _$QuizSubmissionDtoCopyWithImpl<$Res, _$_QuizSubmissionDto>
    implements _$$_QuizSubmissionDtoCopyWith<$Res> {
  __$$_QuizSubmissionDtoCopyWithImpl(
      _$_QuizSubmissionDto _value, $Res Function(_$_QuizSubmissionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? questions = null,
    Object? submittedAt = null,
  }) {
    return _then(_$_QuizSubmissionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseDto>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizSubmissionDto extends _QuizSubmissionDto {
  _$_QuizSubmissionDto(
      {required this.id,
      required this.quizId,
      required final List<QuestionResponseDto> responses,
      required final List<QuestionDto> questions,
      required this.submittedAt})
      : _responses = responses,
        _questions = questions,
        super._();

  factory _$_QuizSubmissionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizSubmissionDtoFromJson(json);

  @override
  final int id;
  @override
  final String quizId;
  final List<QuestionResponseDto> _responses;
  @override
  List<QuestionResponseDto> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  final List<QuestionDto> _questions;
  @override
  List<QuestionDto> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int submittedAt;

  @override
  String toString() {
    return 'QuizSubmissionDto(id: $id, quizId: $quizId, responses: $responses, questions: $questions, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizSubmissionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      const DeepCollectionEquality().hash(_responses),
      const DeepCollectionEquality().hash(_questions),
      submittedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizSubmissionDtoCopyWith<_$_QuizSubmissionDto> get copyWith =>
      __$$_QuizSubmissionDtoCopyWithImpl<_$_QuizSubmissionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizSubmissionDtoToJson(
      this,
    );
  }
}

abstract class _QuizSubmissionDto extends QuizSubmissionDto {
  factory _QuizSubmissionDto(
      {required final int id,
      required final String quizId,
      required final List<QuestionResponseDto> responses,
      required final List<QuestionDto> questions,
      required final int submittedAt}) = _$_QuizSubmissionDto;
  _QuizSubmissionDto._() : super._();

  factory _QuizSubmissionDto.fromJson(Map<String, dynamic> json) =
      _$_QuizSubmissionDto.fromJson;

  @override
  int get id;
  @override
  String get quizId;
  @override
  List<QuestionResponseDto> get responses;
  @override
  List<QuestionDto> get questions;
  @override
  int get submittedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizSubmissionDtoCopyWith<_$_QuizSubmissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
