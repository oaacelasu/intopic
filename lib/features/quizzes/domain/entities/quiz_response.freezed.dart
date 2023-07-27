// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizResponse {
  int get id => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  List<QuestionResponse> get responses => throw _privateConstructorUsedError;
  int get quizCurrentQuestionIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)
        $default, {
    required TResult Function(int id, String quizId,
            List<QuestionResponse> responses, int quizCurrentQuestionIndex)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizResponse value) $default, {
    required TResult Function(_QuizResponseEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizResponse value)? $default, {
    TResult? Function(_QuizResponseEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizResponse value)? $default, {
    TResult Function(_QuizResponseEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizResponseCopyWith<QuizResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResponseCopyWith<$Res> {
  factory $QuizResponseCopyWith(
          QuizResponse value, $Res Function(QuizResponse) then) =
      _$QuizResponseCopyWithImpl<$Res, QuizResponse>;
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponse> responses,
      int quizCurrentQuestionIndex});
}

/// @nodoc
class _$QuizResponseCopyWithImpl<$Res, $Val extends QuizResponse>
    implements $QuizResponseCopyWith<$Res> {
  _$QuizResponseCopyWithImpl(this._value, this._then);

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
    Object? quizCurrentQuestionIndex = null,
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
              as List<QuestionResponse>,
      quizCurrentQuestionIndex: null == quizCurrentQuestionIndex
          ? _value.quizCurrentQuestionIndex
          : quizCurrentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizResponseCopyWith<$Res>
    implements $QuizResponseCopyWith<$Res> {
  factory _$$_QuizResponseCopyWith(
          _$_QuizResponse value, $Res Function(_$_QuizResponse) then) =
      __$$_QuizResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponse> responses,
      int quizCurrentQuestionIndex});
}

/// @nodoc
class __$$_QuizResponseCopyWithImpl<$Res>
    extends _$QuizResponseCopyWithImpl<$Res, _$_QuizResponse>
    implements _$$_QuizResponseCopyWith<$Res> {
  __$$_QuizResponseCopyWithImpl(
      _$_QuizResponse _value, $Res Function(_$_QuizResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? quizCurrentQuestionIndex = null,
  }) {
    return _then(_$_QuizResponse(
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
              as List<QuestionResponse>,
      quizCurrentQuestionIndex: null == quizCurrentQuestionIndex
          ? _value.quizCurrentQuestionIndex
          : quizCurrentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizResponse extends _QuizResponse {
  const _$_QuizResponse(
      {required this.id,
      required this.quizId,
      required final List<QuestionResponse> responses,
      required this.quizCurrentQuestionIndex})
      : _responses = responses,
        super._();

  @override
  final int id;
  @override
  final String quizId;
  final List<QuestionResponse> _responses;
  @override
  List<QuestionResponse> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  final int quizCurrentQuestionIndex;

  @override
  String toString() {
    return 'QuizResponse(id: $id, quizId: $quizId, responses: $responses, quizCurrentQuestionIndex: $quizCurrentQuestionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            (identical(
                    other.quizCurrentQuestionIndex, quizCurrentQuestionIndex) ||
                other.quizCurrentQuestionIndex == quizCurrentQuestionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      const DeepCollectionEquality().hash(_responses),
      quizCurrentQuestionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizResponseCopyWith<_$_QuizResponse> get copyWith =>
      __$$_QuizResponseCopyWithImpl<_$_QuizResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)
        $default, {
    required TResult Function(int id, String quizId,
            List<QuestionResponse> responses, int quizCurrentQuestionIndex)
        empty,
  }) {
    return $default(id, quizId, responses, quizCurrentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
  }) {
    return $default?.call(id, quizId, responses, quizCurrentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, quizId, responses, quizCurrentQuestionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizResponse value) $default, {
    required TResult Function(_QuizResponseEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizResponse value)? $default, {
    TResult? Function(_QuizResponseEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizResponse value)? $default, {
    TResult Function(_QuizResponseEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QuizResponse extends QuizResponse {
  const factory _QuizResponse(
      {required final int id,
      required final String quizId,
      required final List<QuestionResponse> responses,
      required final int quizCurrentQuestionIndex}) = _$_QuizResponse;
  const _QuizResponse._() : super._();

  @override
  int get id;
  @override
  String get quizId;
  @override
  List<QuestionResponse> get responses;
  @override
  int get quizCurrentQuestionIndex;
  @override
  @JsonKey(ignore: true)
  _$$_QuizResponseCopyWith<_$_QuizResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizResponseEmptyCopyWith<$Res>
    implements $QuizResponseCopyWith<$Res> {
  factory _$$_QuizResponseEmptyCopyWith(_$_QuizResponseEmpty value,
          $Res Function(_$_QuizResponseEmpty) then) =
      __$$_QuizResponseEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponse> responses,
      int quizCurrentQuestionIndex});
}

/// @nodoc
class __$$_QuizResponseEmptyCopyWithImpl<$Res>
    extends _$QuizResponseCopyWithImpl<$Res, _$_QuizResponseEmpty>
    implements _$$_QuizResponseEmptyCopyWith<$Res> {
  __$$_QuizResponseEmptyCopyWithImpl(
      _$_QuizResponseEmpty _value, $Res Function(_$_QuizResponseEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? quizCurrentQuestionIndex = null,
  }) {
    return _then(_$_QuizResponseEmpty(
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
              as List<QuestionResponse>,
      quizCurrentQuestionIndex: null == quizCurrentQuestionIndex
          ? _value.quizCurrentQuestionIndex
          : quizCurrentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizResponseEmpty extends _QuizResponseEmpty {
  const _$_QuizResponseEmpty(
      {this.id = 0,
      this.quizId = '',
      final List<QuestionResponse> responses = const [],
      this.quizCurrentQuestionIndex = 0})
      : _responses = responses,
        super._();

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String quizId;
  final List<QuestionResponse> _responses;
  @override
  @JsonKey()
  List<QuestionResponse> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  @JsonKey()
  final int quizCurrentQuestionIndex;

  @override
  String toString() {
    return 'QuizResponse.empty(id: $id, quizId: $quizId, responses: $responses, quizCurrentQuestionIndex: $quizCurrentQuestionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizResponseEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            (identical(
                    other.quizCurrentQuestionIndex, quizCurrentQuestionIndex) ||
                other.quizCurrentQuestionIndex == quizCurrentQuestionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      const DeepCollectionEquality().hash(_responses),
      quizCurrentQuestionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizResponseEmptyCopyWith<_$_QuizResponseEmpty> get copyWith =>
      __$$_QuizResponseEmptyCopyWithImpl<_$_QuizResponseEmpty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)
        $default, {
    required TResult Function(int id, String quizId,
            List<QuestionResponse> responses, int quizCurrentQuestionIndex)
        empty,
  }) {
    return empty(id, quizId, responses, quizCurrentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult? Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
  }) {
    return empty?.call(id, quizId, responses, quizCurrentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        $default, {
    TResult Function(int id, String quizId, List<QuestionResponse> responses,
            int quizCurrentQuestionIndex)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, quizId, responses, quizCurrentQuestionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizResponse value) $default, {
    required TResult Function(_QuizResponseEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizResponse value)? $default, {
    TResult? Function(_QuizResponseEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizResponse value)? $default, {
    TResult Function(_QuizResponseEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuizResponseEmpty extends QuizResponse {
  const factory _QuizResponseEmpty(
      {final int id,
      final String quizId,
      final List<QuestionResponse> responses,
      final int quizCurrentQuestionIndex}) = _$_QuizResponseEmpty;
  const _QuizResponseEmpty._() : super._();

  @override
  int get id;
  @override
  String get quizId;
  @override
  List<QuestionResponse> get responses;
  @override
  int get quizCurrentQuestionIndex;
  @override
  @JsonKey(ignore: true)
  _$$_QuizResponseEmptyCopyWith<_$_QuizResponseEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
