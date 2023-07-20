// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizDto _$QuizDtoFromJson(Map<String, dynamic> json) {
  return _QuizDto.fromJson(json);
}

/// @nodoc
mixin _$QuizDto {
  String? get id => throw _privateConstructorUsedError;
  String? get topicId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  String? get quizAccessFromTime => throw _privateConstructorUsedError;
  String? get quizAccessToTime => throw _privateConstructorUsedError;
  bool? get isQuizActive => throw _privateConstructorUsedError;
  int? get totalQuestions => throw _privateConstructorUsedError;
  List<QuestionDto>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizDtoCopyWith<QuizDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDtoCopyWith<$Res> {
  factory $QuizDtoCopyWith(QuizDto value, $Res Function(QuizDto) then) =
      _$QuizDtoCopyWithImpl<$Res, QuizDto>;
  @useResult
  $Res call(
      {String? id,
      String? topicId,
      String? userId,
      String? title,
      String? description,
      String? imageURL,
      String? quizAccessFromTime,
      String? quizAccessToTime,
      bool? isQuizActive,
      int? totalQuestions,
      List<QuestionDto>? questions});
}

/// @nodoc
class _$QuizDtoCopyWithImpl<$Res, $Val extends QuizDto>
    implements $QuizDtoCopyWith<$Res> {
  _$QuizDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topicId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? quizAccessFromTime = freezed,
    Object? quizAccessToTime = freezed,
    Object? isQuizActive = freezed,
    Object? totalQuestions = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAccessFromTime: freezed == quizAccessFromTime
          ? _value.quizAccessFromTime
          : quizAccessFromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAccessToTime: freezed == quizAccessToTime
          ? _value.quizAccessToTime
          : quizAccessToTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuizActive: freezed == isQuizActive
          ? _value.isQuizActive
          : isQuizActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizDtoCopyWith<$Res> implements $QuizDtoCopyWith<$Res> {
  factory _$$_QuizDtoCopyWith(
          _$_QuizDto value, $Res Function(_$_QuizDto) then) =
      __$$_QuizDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? topicId,
      String? userId,
      String? title,
      String? description,
      String? imageURL,
      String? quizAccessFromTime,
      String? quizAccessToTime,
      bool? isQuizActive,
      int? totalQuestions,
      List<QuestionDto>? questions});
}

/// @nodoc
class __$$_QuizDtoCopyWithImpl<$Res>
    extends _$QuizDtoCopyWithImpl<$Res, _$_QuizDto>
    implements _$$_QuizDtoCopyWith<$Res> {
  __$$_QuizDtoCopyWithImpl(_$_QuizDto _value, $Res Function(_$_QuizDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topicId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? quizAccessFromTime = freezed,
    Object? quizAccessToTime = freezed,
    Object? isQuizActive = freezed,
    Object? totalQuestions = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$_QuizDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAccessFromTime: freezed == quizAccessFromTime
          ? _value.quizAccessFromTime
          : quizAccessFromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAccessToTime: freezed == quizAccessToTime
          ? _value.quizAccessToTime
          : quizAccessToTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuizActive: freezed == isQuizActive
          ? _value.isQuizActive
          : isQuizActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizDto extends _QuizDto {
  _$_QuizDto(
      {this.id,
      this.topicId,
      this.userId,
      this.title,
      this.description,
      this.imageURL,
      this.quizAccessFromTime,
      this.quizAccessToTime,
      this.isQuizActive,
      this.totalQuestions,
      final List<QuestionDto>? questions})
      : _questions = questions,
        super._();

  factory _$_QuizDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? topicId;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? imageURL;
  @override
  final String? quizAccessFromTime;
  @override
  final String? quizAccessToTime;
  @override
  final bool? isQuizActive;
  @override
  final int? totalQuestions;
  final List<QuestionDto>? _questions;
  @override
  List<QuestionDto>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizDto(id: $id, topicId: $topicId, userId: $userId, title: $title, description: $description, imageURL: $imageURL, quizAccessFromTime: $quizAccessFromTime, quizAccessToTime: $quizAccessToTime, isQuizActive: $isQuizActive, totalQuestions: $totalQuestions, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.quizAccessFromTime, quizAccessFromTime) ||
                other.quizAccessFromTime == quizAccessFromTime) &&
            (identical(other.quizAccessToTime, quizAccessToTime) ||
                other.quizAccessToTime == quizAccessToTime) &&
            (identical(other.isQuizActive, isQuizActive) ||
                other.isQuizActive == isQuizActive) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topicId,
      userId,
      title,
      description,
      imageURL,
      quizAccessFromTime,
      quizAccessToTime,
      isQuizActive,
      totalQuestions,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizDtoCopyWith<_$_QuizDto> get copyWith =>
      __$$_QuizDtoCopyWithImpl<_$_QuizDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizDtoToJson(
      this,
    );
  }
}

abstract class _QuizDto extends QuizDto {
  factory _QuizDto(
      {final String? id,
      final String? topicId,
      final String? userId,
      final String? title,
      final String? description,
      final String? imageURL,
      final String? quizAccessFromTime,
      final String? quizAccessToTime,
      final bool? isQuizActive,
      final int? totalQuestions,
      final List<QuestionDto>? questions}) = _$_QuizDto;
  _QuizDto._() : super._();

  factory _QuizDto.fromJson(Map<String, dynamic> json) = _$_QuizDto.fromJson;

  @override
  String? get id;
  @override
  String? get topicId;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get imageURL;
  @override
  String? get quizAccessFromTime;
  @override
  String? get quizAccessToTime;
  @override
  bool? get isQuizActive;
  @override
  int? get totalQuestions;
  @override
  List<QuestionDto>? get questions;
  @override
  @JsonKey(ignore: true)
  _$$_QuizDtoCopyWith<_$_QuizDto> get copyWith =>
      throw _privateConstructorUsedError;
}
