// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Question {
  String get id => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  String get topicId => throw _privateConstructorUsedError;
  QuestionType get questionType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        $default, {
    required TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Question value) $default, {
    required TResult Function(_QuestionEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Question value)? $default, {
    TResult? Function(_QuestionEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Question value)? $default, {
    TResult Function(_QuestionEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String id,
      String quizId,
      String topicId,
      QuestionType questionType,
      String title,
      String question,
      List<String> options,
      String correctAnswer});

  $QuestionTypeCopyWith<$Res> get questionType;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? topicId = null,
    Object? questionType = null,
    Object? title = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionTypeCopyWith<$Res> get questionType {
    return $QuestionTypeCopyWith<$Res>(_value.questionType, (value) {
      return _then(_value.copyWith(questionType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String quizId,
      String topicId,
      QuestionType questionType,
      String title,
      String question,
      List<String> options,
      String correctAnswer});

  @override
  $QuestionTypeCopyWith<$Res> get questionType;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? topicId = null,
    Object? questionType = null,
    Object? title = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$_Question(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Question extends _Question {
  const _$_Question(
      {required this.id,
      required this.quizId,
      required this.topicId,
      required this.questionType,
      required this.title,
      required this.question,
      required final List<String> options,
      required this.correctAnswer})
      : _options = options,
        super._();

  @override
  final String id;
  @override
  final String quizId;
  @override
  final String topicId;
  @override
  final QuestionType questionType;
  @override
  final String title;
  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'Question(id: $id, quizId: $quizId, topicId: $topicId, questionType: $questionType, title: $title, question: $question, options: $options, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
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
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        $default, {
    required TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        empty,
  }) {
    return $default(id, quizId, topicId, questionType, title, question, options,
        correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
  }) {
    return $default?.call(id, quizId, topicId, questionType, title, question,
        options, correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, quizId, topicId, questionType, title, question,
          options, correctAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Question value) $default, {
    required TResult Function(_QuestionEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Question value)? $default, {
    TResult? Function(_QuestionEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Question value)? $default, {
    TResult Function(_QuestionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Question extends Question {
  const factory _Question(
      {required final String id,
      required final String quizId,
      required final String topicId,
      required final QuestionType questionType,
      required final String title,
      required final String question,
      required final List<String> options,
      required final String correctAnswer}) = _$_Question;
  const _Question._() : super._();

  @override
  String get id;
  @override
  String get quizId;
  @override
  String get topicId;
  @override
  QuestionType get questionType;
  @override
  String get title;
  @override
  String get question;
  @override
  List<String> get options;
  @override
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionEmptyCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionEmptyCopyWith(
          _$_QuestionEmpty value, $Res Function(_$_QuestionEmpty) then) =
      __$$_QuestionEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String quizId,
      String topicId,
      QuestionType questionType,
      String title,
      String question,
      List<String> options,
      String correctAnswer});

  @override
  $QuestionTypeCopyWith<$Res> get questionType;
}

/// @nodoc
class __$$_QuestionEmptyCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_QuestionEmpty>
    implements _$$_QuestionEmptyCopyWith<$Res> {
  __$$_QuestionEmptyCopyWithImpl(
      _$_QuestionEmpty _value, $Res Function(_$_QuestionEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? topicId = null,
    Object? questionType = null,
    Object? title = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$_QuestionEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionEmpty extends _QuestionEmpty {
  const _$_QuestionEmpty(
      {this.id = '',
      this.quizId = '',
      this.topicId = '',
      this.questionType = const QuestionType.singleChoice(),
      this.title = '',
      this.question = '',
      final List<String> options = const [],
      this.correctAnswer = ''})
      : _options = options,
        super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String quizId;
  @override
  @JsonKey()
  final String topicId;
  @override
  @JsonKey()
  final QuestionType questionType;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String question;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final String correctAnswer;

  @override
  String toString() {
    return 'Question.empty(id: $id, quizId: $quizId, topicId: $topicId, questionType: $questionType, title: $title, question: $question, options: $options, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionEmpty &&
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
  _$$_QuestionEmptyCopyWith<_$_QuestionEmpty> get copyWith =>
      __$$_QuestionEmptyCopyWithImpl<_$_QuestionEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        $default, {
    required TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)
        empty,
  }) {
    return empty(id, quizId, topicId, questionType, title, question, options,
        correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult? Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
  }) {
    return empty?.call(id, quizId, topicId, questionType, title, question,
        options, correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        $default, {
    TResult Function(
            String id,
            String quizId,
            String topicId,
            QuestionType questionType,
            String title,
            String question,
            List<String> options,
            String correctAnswer)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, quizId, topicId, questionType, title, question, options,
          correctAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Question value) $default, {
    required TResult Function(_QuestionEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Question value)? $default, {
    TResult? Function(_QuestionEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Question value)? $default, {
    TResult Function(_QuestionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuestionEmpty extends Question {
  const factory _QuestionEmpty(
      {final String id,
      final String quizId,
      final String topicId,
      final QuestionType questionType,
      final String title,
      final String question,
      final List<String> options,
      final String correctAnswer}) = _$_QuestionEmpty;
  const _QuestionEmpty._() : super._();

  @override
  String get id;
  @override
  String get quizId;
  @override
  String get topicId;
  @override
  QuestionType get questionType;
  @override
  String get title;
  @override
  String get question;
  @override
  List<String> get options;
  @override
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionEmptyCopyWith<_$_QuestionEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
