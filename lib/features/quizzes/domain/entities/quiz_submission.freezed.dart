// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizSubmission {
  int get id => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  String get topicId => throw _privateConstructorUsedError;
  String get quizName => throw _privateConstructorUsedError;
  List<QuestionResponse> get responses => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  int get submittedAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        $default, {
    required TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizSubmission value) $default, {
    required TResult Function(_QuizSubmissionEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizSubmission value)? $default, {
    TResult? Function(_QuizSubmissionEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizSubmission value)? $default, {
    TResult Function(_QuizSubmissionEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizSubmissionCopyWith<QuizSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmissionCopyWith<$Res> {
  factory $QuizSubmissionCopyWith(
          QuizSubmission value, $Res Function(QuizSubmission) then) =
      _$QuizSubmissionCopyWithImpl<$Res, QuizSubmission>;
  @useResult
  $Res call(
      {int id,
      String quizId,
      String topicId,
      String quizName,
      List<QuestionResponse> responses,
      List<Question> questions,
      int submittedAt});
}

/// @nodoc
class _$QuizSubmissionCopyWithImpl<$Res, $Val extends QuizSubmission>
    implements $QuizSubmissionCopyWith<$Res> {
  _$QuizSubmissionCopyWithImpl(this._value, this._then);

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
    Object? quizName = null,
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
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      quizName: null == quizName
          ? _value.quizName
          : quizName // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizSubmissionCopyWith<$Res>
    implements $QuizSubmissionCopyWith<$Res> {
  factory _$$_QuizSubmissionCopyWith(
          _$_QuizSubmission value, $Res Function(_$_QuizSubmission) then) =
      __$$_QuizSubmissionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      String topicId,
      String quizName,
      List<QuestionResponse> responses,
      List<Question> questions,
      int submittedAt});
}

/// @nodoc
class __$$_QuizSubmissionCopyWithImpl<$Res>
    extends _$QuizSubmissionCopyWithImpl<$Res, _$_QuizSubmission>
    implements _$$_QuizSubmissionCopyWith<$Res> {
  __$$_QuizSubmissionCopyWithImpl(
      _$_QuizSubmission _value, $Res Function(_$_QuizSubmission) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? topicId = null,
    Object? quizName = null,
    Object? responses = null,
    Object? questions = null,
    Object? submittedAt = null,
  }) {
    return _then(_$_QuizSubmission(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      quizName: null == quizName
          ? _value.quizName
          : quizName // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizSubmission extends _QuizSubmission {
  const _$_QuizSubmission(
      {required this.id,
      required this.quizId,
      required this.topicId,
      required this.quizName,
      required final List<QuestionResponse> responses,
      required final List<Question> questions,
      required this.submittedAt})
      : _responses = responses,
        _questions = questions,
        super._();

  @override
  final int id;
  @override
  final String quizId;
  @override
  final String topicId;
  @override
  final String quizName;
  final List<QuestionResponse> _responses;
  @override
  List<QuestionResponse> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int submittedAt;

  @override
  String toString() {
    return 'QuizSubmission(id: $id, quizId: $quizId, topicId: $topicId, quizName: $quizName, responses: $responses, questions: $questions, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizSubmission &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.quizName, quizName) ||
                other.quizName == quizName) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      topicId,
      quizName,
      const DeepCollectionEquality().hash(_responses),
      const DeepCollectionEquality().hash(_questions),
      submittedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizSubmissionCopyWith<_$_QuizSubmission> get copyWith =>
      __$$_QuizSubmissionCopyWithImpl<_$_QuizSubmission>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        $default, {
    required TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        empty,
  }) {
    return $default(
        id, quizId, topicId, quizName, responses, questions, submittedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
  }) {
    return $default?.call(
        id, quizId, topicId, quizName, responses, questions, submittedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, quizId, topicId, quizName, responses, questions, submittedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizSubmission value) $default, {
    required TResult Function(_QuizSubmissionEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizSubmission value)? $default, {
    TResult? Function(_QuizSubmissionEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizSubmission value)? $default, {
    TResult Function(_QuizSubmissionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QuizSubmission extends QuizSubmission {
  const factory _QuizSubmission(
      {required final int id,
      required final String quizId,
      required final String topicId,
      required final String quizName,
      required final List<QuestionResponse> responses,
      required final List<Question> questions,
      required final int submittedAt}) = _$_QuizSubmission;
  const _QuizSubmission._() : super._();

  @override
  int get id;
  @override
  String get quizId;
  @override
  String get topicId;
  @override
  String get quizName;
  @override
  List<QuestionResponse> get responses;
  @override
  List<Question> get questions;
  @override
  int get submittedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizSubmissionCopyWith<_$_QuizSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizSubmissionEmptyCopyWith<$Res>
    implements $QuizSubmissionCopyWith<$Res> {
  factory _$$_QuizSubmissionEmptyCopyWith(_$_QuizSubmissionEmpty value,
          $Res Function(_$_QuizSubmissionEmpty) then) =
      __$$_QuizSubmissionEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      String topicId,
      String quizName,
      List<QuestionResponse> responses,
      List<Question> questions,
      int submittedAt});
}

/// @nodoc
class __$$_QuizSubmissionEmptyCopyWithImpl<$Res>
    extends _$QuizSubmissionCopyWithImpl<$Res, _$_QuizSubmissionEmpty>
    implements _$$_QuizSubmissionEmptyCopyWith<$Res> {
  __$$_QuizSubmissionEmptyCopyWithImpl(_$_QuizSubmissionEmpty _value,
      $Res Function(_$_QuizSubmissionEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? topicId = null,
    Object? quizName = null,
    Object? responses = null,
    Object? questions = null,
    Object? submittedAt = null,
  }) {
    return _then(_$_QuizSubmissionEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      quizName: null == quizName
          ? _value.quizName
          : quizName // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizSubmissionEmpty extends _QuizSubmissionEmpty {
  const _$_QuizSubmissionEmpty(
      {this.id = 0,
      this.quizId = '',
      this.topicId = '',
      this.quizName = '',
      final List<QuestionResponse> responses = const [],
      final List<Question> questions = const [],
      this.submittedAt = 0})
      : _responses = responses,
        _questions = questions,
        super._();

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String quizId;
  @override
  @JsonKey()
  final String topicId;
  @override
  @JsonKey()
  final String quizName;
  final List<QuestionResponse> _responses;
  @override
  @JsonKey()
  List<QuestionResponse> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int submittedAt;

  @override
  String toString() {
    return 'QuizSubmission.empty(id: $id, quizId: $quizId, topicId: $topicId, quizName: $quizName, responses: $responses, questions: $questions, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizSubmissionEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.quizName, quizName) ||
                other.quizName == quizName) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      topicId,
      quizName,
      const DeepCollectionEquality().hash(_responses),
      const DeepCollectionEquality().hash(_questions),
      submittedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizSubmissionEmptyCopyWith<_$_QuizSubmissionEmpty> get copyWith =>
      __$$_QuizSubmissionEmptyCopyWithImpl<_$_QuizSubmissionEmpty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        $default, {
    required TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)
        empty,
  }) {
    return empty(
        id, quizId, topicId, quizName, responses, questions, submittedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult? Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
  }) {
    return empty?.call(
        id, quizId, topicId, quizName, responses, questions, submittedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        $default, {
    TResult Function(
            int id,
            String quizId,
            String topicId,
            String quizName,
            List<QuestionResponse> responses,
            List<Question> questions,
            int submittedAt)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(
          id, quizId, topicId, quizName, responses, questions, submittedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizSubmission value) $default, {
    required TResult Function(_QuizSubmissionEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizSubmission value)? $default, {
    TResult? Function(_QuizSubmissionEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizSubmission value)? $default, {
    TResult Function(_QuizSubmissionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuizSubmissionEmpty extends QuizSubmission {
  const factory _QuizSubmissionEmpty(
      {final int id,
      final String quizId,
      final String topicId,
      final String quizName,
      final List<QuestionResponse> responses,
      final List<Question> questions,
      final int submittedAt}) = _$_QuizSubmissionEmpty;
  const _QuizSubmissionEmpty._() : super._();

  @override
  int get id;
  @override
  String get quizId;
  @override
  String get topicId;
  @override
  String get quizName;
  @override
  List<QuestionResponse> get responses;
  @override
  List<Question> get questions;
  @override
  int get submittedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizSubmissionEmptyCopyWith<_$_QuizSubmissionEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
