// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  String? get id => throw _privateConstructorUsedError;
  String? get quizId => throw _privateConstructorUsedError;
  String? get topicId => throw _privateConstructorUsedError;
  String? get questionType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;
  String? get correctAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res, QuestionDto>;
  @useResult
  $Res call(
      {String? id,
      String? quizId,
      String? topicId,
      String? questionType,
      String? title,
      String? question,
      List<String>? options,
      String? correctAnswer});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res, $Val extends QuestionDto>
    implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quizId = freezed,
    Object? topicId = freezed,
    Object? questionType = freezed,
    Object? title = freezed,
    Object? question = freezed,
    Object? options = freezed,
    Object? correctAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionDtoCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionDtoCopyWith(
          _$_QuestionDto value, $Res Function(_$_QuestionDto) then) =
      __$$_QuestionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? quizId,
      String? topicId,
      String? questionType,
      String? title,
      String? question,
      List<String>? options,
      String? correctAnswer});
}

/// @nodoc
class __$$_QuestionDtoCopyWithImpl<$Res>
    extends _$QuestionDtoCopyWithImpl<$Res, _$_QuestionDto>
    implements _$$_QuestionDtoCopyWith<$Res> {
  __$$_QuestionDtoCopyWithImpl(
      _$_QuestionDto _value, $Res Function(_$_QuestionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quizId = freezed,
    Object? topicId = freezed,
    Object? questionType = freezed,
    Object? title = freezed,
    Object? question = freezed,
    Object? options = freezed,
    Object? correctAnswer = freezed,
  }) {
    return _then(_$_QuestionDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDto implements _QuestionDto {
  _$_QuestionDto(
      {required this.id,
      required this.quizId,
      required this.topicId,
      required this.questionType,
      required this.title,
      required this.question,
      required final List<String>? options,
      required this.correctAnswer})
      : _options = options;

  factory _$_QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? quizId;
  @override
  final String? topicId;
  @override
  final String? questionType;
  @override
  final String? title;
  @override
  final String? question;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? correctAnswer;

  @override
  String toString() {
    return 'QuestionDto(id: $id, quizId: $quizId, topicId: $topicId, questionType: $questionType, title: $title, question: $question, options: $options, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      topicId,
      questionType,
      title,
      question,
      const DeepCollectionEquality().hash(_options),
      correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      __$$_QuestionDtoCopyWithImpl<_$_QuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDtoToJson(
      this,
    );
  }
}

abstract class _QuestionDto implements QuestionDto {
  factory _QuestionDto(
      {required final String? id,
      required final String? quizId,
      required final String? topicId,
      required final String? questionType,
      required final String? title,
      required final String? question,
      required final List<String>? options,
      required final String? correctAnswer}) = _$_QuestionDto;

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDto.fromJson;

  @override
  String? get id;
  @override
  String? get quizId;
  @override
  String? get topicId;
  @override
  String? get questionType;
  @override
  String? get title;
  @override
  String? get question;
  @override
  List<String>? get options;
  @override
  String? get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
