// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Quiz {
  String get id => throw _privateConstructorUsedError;
  String get topicId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Name get title => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  DateTime? get quizAccessFromTime => throw _privateConstructorUsedError;
  DateTime? get quizAccessToTime => throw _privateConstructorUsedError;
  bool get isQuizActive => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        $default, {
    required TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Quiz value) $default, {
    required TResult Function(_QuizEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Quiz value)? $default, {
    TResult? Function(_QuizEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Quiz value)? $default, {
    TResult Function(_QuizEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String id,
      String topicId,
      String userId,
      Name title,
      String imageURL,
      DateTime? quizAccessFromTime,
      DateTime? quizAccessToTime,
      bool isQuizActive,
      List<Question> questions});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topicId = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? quizAccessFromTime = freezed,
    Object? quizAccessToTime = freezed,
    Object? isQuizActive = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Name,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      quizAccessFromTime: freezed == quizAccessFromTime
          ? _value.quizAccessFromTime
          : quizAccessFromTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quizAccessToTime: freezed == quizAccessToTime
          ? _value.quizAccessToTime
          : quizAccessToTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isQuizActive: null == isQuizActive
          ? _value.isQuizActive
          : isQuizActive // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizCopyWith(_$_Quiz value, $Res Function(_$_Quiz) then) =
      __$$_QuizCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String topicId,
      String userId,
      Name title,
      String imageURL,
      DateTime? quizAccessFromTime,
      DateTime? quizAccessToTime,
      bool isQuizActive,
      List<Question> questions});
}

/// @nodoc
class __$$_QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res, _$_Quiz>
    implements _$$_QuizCopyWith<$Res> {
  __$$_QuizCopyWithImpl(_$_Quiz _value, $Res Function(_$_Quiz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topicId = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? quizAccessFromTime = freezed,
    Object? quizAccessToTime = freezed,
    Object? isQuizActive = null,
    Object? questions = null,
  }) {
    return _then(_$_Quiz(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Name,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      quizAccessFromTime: freezed == quizAccessFromTime
          ? _value.quizAccessFromTime
          : quizAccessFromTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quizAccessToTime: freezed == quizAccessToTime
          ? _value.quizAccessToTime
          : quizAccessToTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isQuizActive: null == isQuizActive
          ? _value.isQuizActive
          : isQuizActive // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_Quiz extends _Quiz {
  const _$_Quiz(
      {required this.id,
      required this.topicId,
      required this.userId,
      required this.title,
      required this.imageURL,
      required this.quizAccessFromTime,
      required this.quizAccessToTime,
      required this.isQuizActive,
      required final List<Question> questions})
      : _questions = questions,
        super._();

  @override
  final String id;
  @override
  final String topicId;
  @override
  final String userId;
  @override
  final Name title;
  @override
  final String imageURL;
  @override
  final DateTime? quizAccessFromTime;
  @override
  final DateTime? quizAccessToTime;
  @override
  final bool isQuizActive;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'Quiz(id: $id, topicId: $topicId, userId: $userId, title: $title, imageURL: $imageURL, quizAccessFromTime: $quizAccessFromTime, quizAccessToTime: $quizAccessToTime, isQuizActive: $isQuizActive, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quiz &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.quizAccessFromTime, quizAccessFromTime) ||
                other.quizAccessFromTime == quizAccessFromTime) &&
            (identical(other.quizAccessToTime, quizAccessToTime) ||
                other.quizAccessToTime == quizAccessToTime) &&
            (identical(other.isQuizActive, isQuizActive) ||
                other.isQuizActive == isQuizActive) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topicId,
      userId,
      title,
      imageURL,
      quizAccessFromTime,
      quizAccessToTime,
      isQuizActive,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizCopyWith<_$_Quiz> get copyWith =>
      __$$_QuizCopyWithImpl<_$_Quiz>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        $default, {
    required TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        empty,
  }) {
    return $default(id, topicId, userId, title, imageURL, quizAccessFromTime,
        quizAccessToTime, isQuizActive, questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
  }) {
    return $default?.call(id, topicId, userId, title, imageURL,
        quizAccessFromTime, quizAccessToTime, isQuizActive, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, topicId, userId, title, imageURL, quizAccessFromTime,
          quizAccessToTime, isQuizActive, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Quiz value) $default, {
    required TResult Function(_QuizEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Quiz value)? $default, {
    TResult? Function(_QuizEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Quiz value)? $default, {
    TResult Function(_QuizEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Quiz extends Quiz {
  const factory _Quiz(
      {required final String id,
      required final String topicId,
      required final String userId,
      required final Name title,
      required final String imageURL,
      required final DateTime? quizAccessFromTime,
      required final DateTime? quizAccessToTime,
      required final bool isQuizActive,
      required final List<Question> questions}) = _$_Quiz;
  const _Quiz._() : super._();

  @override
  String get id;
  @override
  String get topicId;
  @override
  String get userId;
  @override
  Name get title;
  @override
  String get imageURL;
  @override
  DateTime? get quizAccessFromTime;
  @override
  DateTime? get quizAccessToTime;
  @override
  bool get isQuizActive;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_QuizCopyWith<_$_Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizEmptyCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizEmptyCopyWith(
          _$_QuizEmpty value, $Res Function(_$_QuizEmpty) then) =
      __$$_QuizEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String topicId,
      String userId,
      Name title,
      String imageURL,
      DateTime? quizAccessFromTime,
      DateTime? quizAccessToTime,
      bool isQuizActive,
      List<Question> questions});
}

/// @nodoc
class __$$_QuizEmptyCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$_QuizEmpty>
    implements _$$_QuizEmptyCopyWith<$Res> {
  __$$_QuizEmptyCopyWithImpl(
      _$_QuizEmpty _value, $Res Function(_$_QuizEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topicId = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? quizAccessFromTime = freezed,
    Object? quizAccessToTime = freezed,
    Object? isQuizActive = null,
    Object? questions = null,
  }) {
    return _then(_$_QuizEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Name,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      quizAccessFromTime: freezed == quizAccessFromTime
          ? _value.quizAccessFromTime
          : quizAccessFromTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quizAccessToTime: freezed == quizAccessToTime
          ? _value.quizAccessToTime
          : quizAccessToTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isQuizActive: null == isQuizActive
          ? _value.isQuizActive
          : isQuizActive // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuizEmpty extends _QuizEmpty {
  const _$_QuizEmpty(
      {this.id = '',
      this.topicId = '',
      this.userId = '',
      this.title = const Name.empty(),
      this.imageURL = '',
      this.quizAccessFromTime = null,
      this.quizAccessToTime = null,
      this.isQuizActive = false,
      final List<Question> questions = const []})
      : _questions = questions,
        super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String topicId;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final Name title;
  @override
  @JsonKey()
  final String imageURL;
  @override
  @JsonKey()
  final DateTime? quizAccessFromTime;
  @override
  @JsonKey()
  final DateTime? quizAccessToTime;
  @override
  @JsonKey()
  final bool isQuizActive;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'Quiz.empty(id: $id, topicId: $topicId, userId: $userId, title: $title, imageURL: $imageURL, quizAccessFromTime: $quizAccessFromTime, quizAccessToTime: $quizAccessToTime, isQuizActive: $isQuizActive, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.quizAccessFromTime, quizAccessFromTime) ||
                other.quizAccessFromTime == quizAccessFromTime) &&
            (identical(other.quizAccessToTime, quizAccessToTime) ||
                other.quizAccessToTime == quizAccessToTime) &&
            (identical(other.isQuizActive, isQuizActive) ||
                other.isQuizActive == isQuizActive) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topicId,
      userId,
      title,
      imageURL,
      quizAccessFromTime,
      quizAccessToTime,
      isQuizActive,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizEmptyCopyWith<_$_QuizEmpty> get copyWith =>
      __$$_QuizEmptyCopyWithImpl<_$_QuizEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        $default, {
    required TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)
        empty,
  }) {
    return empty(id, topicId, userId, title, imageURL, quizAccessFromTime,
        quizAccessToTime, isQuizActive, questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult? Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
  }) {
    return empty?.call(id, topicId, userId, title, imageURL, quizAccessFromTime,
        quizAccessToTime, isQuizActive, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        $default, {
    TResult Function(
            String id,
            String topicId,
            String userId,
            Name title,
            String imageURL,
            DateTime? quizAccessFromTime,
            DateTime? quizAccessToTime,
            bool isQuizActive,
            List<Question> questions)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, topicId, userId, title, imageURL, quizAccessFromTime,
          quizAccessToTime, isQuizActive, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Quiz value) $default, {
    required TResult Function(_QuizEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Quiz value)? $default, {
    TResult? Function(_QuizEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Quiz value)? $default, {
    TResult Function(_QuizEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuizEmpty extends Quiz {
  const factory _QuizEmpty(
      {final String id,
      final String topicId,
      final String userId,
      final Name title,
      final String imageURL,
      final DateTime? quizAccessFromTime,
      final DateTime? quizAccessToTime,
      final bool isQuizActive,
      final List<Question> questions}) = _$_QuizEmpty;
  const _QuizEmpty._() : super._();

  @override
  String get id;
  @override
  String get topicId;
  @override
  String get userId;
  @override
  Name get title;
  @override
  String get imageURL;
  @override
  DateTime? get quizAccessFromTime;
  @override
  DateTime? get quizAccessToTime;
  @override
  bool get isQuizActive;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_QuizEmptyCopyWith<_$_QuizEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
