// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionResponse {
  String get id => throw _privateConstructorUsedError;

  String get questionId => throw _privateConstructorUsedError;

  double get score => throw _privateConstructorUsedError;

  List<String> get selected => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected) $default, {
    required TResult Function(String id, String questionId, double score, List<String> selected) empty,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult? Function(String id, String questionId, double score, List<String> selected)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult Function(String id, String questionId, double score, List<String> selected)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuestionResponse value) $default, {
    required TResult Function(_QuestionResponseEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuestionResponse value)? $default, {
    TResult? Function(_QuestionResponseEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuestionResponse value)? $default, {
    TResult Function(_QuestionResponseEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;

  @useResult
  $Res call({String id, String questionId, double score, List<String> selected});
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse> implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? score = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResponseCopyWith<$Res> implements $QuestionResponseCopyWith<$Res> {
  factory _$$_QuestionResponseCopyWith(_$_QuestionResponse value, $Res Function(_$_QuestionResponse) then) =
      __$$_QuestionResponseCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String id, String questionId, double score, List<String> selected});
}

/// @nodoc
class __$$_QuestionResponseCopyWithImpl<$Res> extends _$QuestionResponseCopyWithImpl<$Res, _$_QuestionResponse>
    implements _$$_QuestionResponseCopyWith<$Res> {
  __$$_QuestionResponseCopyWithImpl(_$_QuestionResponse _value, $Res Function(_$_QuestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? score = null,
    Object? selected = null,
  }) {
    return _then(_$_QuestionResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_QuestionResponse extends _QuestionResponse {
  const _$_QuestionResponse(
      {required this.id, required this.questionId, required this.score, required final List<String> selected})
      : _selected = selected,
        super._();

  @override
  final String id;
  @override
  final String questionId;
  @override
  final double score;
  final List<String> _selected;

  @override
  List<String> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  String toString() {
    return 'QuestionResponse(id: $id, questionId: $questionId, score: $score, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) || other.questionId == questionId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, score, const DeepCollectionEquality().hash(_selected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith =>
      __$$_QuestionResponseCopyWithImpl<_$_QuestionResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected) $default, {
    required TResult Function(String id, String questionId, double score, List<String> selected) empty,
  }) {
    return $default(id, questionId, score, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult? Function(String id, String questionId, double score, List<String> selected)? empty,
  }) {
    return $default?.call(id, questionId, score, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult Function(String id, String questionId, double score, List<String> selected)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, questionId, score, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuestionResponse value) $default, {
    required TResult Function(_QuestionResponseEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuestionResponse value)? $default, {
    TResult? Function(_QuestionResponseEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuestionResponse value)? $default, {
    TResult Function(_QuestionResponseEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QuestionResponse extends QuestionResponse {
  const factory _QuestionResponse(
      {required final String id,
      required final String questionId,
      required final double score,
      required final List<String> selected}) = _$_QuestionResponse;

  const _QuestionResponse._() : super._();

  @override
  String get id;

  @override
  String get questionId;

  @override
  double get score;

  @override
  List<String> get selected;

  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionResponseEmptyCopyWith<$Res> implements $QuestionResponseCopyWith<$Res> {
  factory _$$_QuestionResponseEmptyCopyWith(
          _$_QuestionResponseEmpty value, $Res Function(_$_QuestionResponseEmpty) then) =
      __$$_QuestionResponseEmptyCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String id, String questionId, double score, List<String> selected});
}

/// @nodoc
class __$$_QuestionResponseEmptyCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$_QuestionResponseEmpty>
    implements _$$_QuestionResponseEmptyCopyWith<$Res> {
  __$$_QuestionResponseEmptyCopyWithImpl(_$_QuestionResponseEmpty _value, $Res Function(_$_QuestionResponseEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? score = null,
    Object? selected = null,
  }) {
    return _then(_$_QuestionResponseEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_QuestionResponseEmpty extends _QuestionResponseEmpty {
  const _$_QuestionResponseEmpty(
      {this.id = '', this.questionId = '', this.score = 0.0, final List<String> selected = const []})
      : _selected = selected,
        super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String questionId;
  @override
  @JsonKey()
  final double score;
  final List<String> _selected;

  @override
  @JsonKey()
  List<String> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  String toString() {
    return 'QuestionResponse.empty(id: $id, questionId: $questionId, score: $score, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponseEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) || other.questionId == questionId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, score, const DeepCollectionEquality().hash(_selected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseEmptyCopyWith<_$_QuestionResponseEmpty> get copyWith =>
      __$$_QuestionResponseEmptyCopyWithImpl<_$_QuestionResponseEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected) $default, {
    required TResult Function(String id, String questionId, double score, List<String> selected) empty,
  }) {
    return empty(id, questionId, score, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult? Function(String id, String questionId, double score, List<String> selected)? empty,
  }) {
    return empty?.call(id, questionId, score, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String questionId, double score, List<String> selected)? $default, {
    TResult Function(String id, String questionId, double score, List<String> selected)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, questionId, score, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuestionResponse value) $default, {
    required TResult Function(_QuestionResponseEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuestionResponse value)? $default, {
    TResult? Function(_QuestionResponseEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuestionResponse value)? $default, {
    TResult Function(_QuestionResponseEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuestionResponseEmpty extends QuestionResponse {
  const factory _QuestionResponseEmpty(
      {final String id,
      final String questionId,
      final double score,
      final List<String> selected}) = _$_QuestionResponseEmpty;

  const _QuestionResponseEmpty._() : super._();

  @override
  String get id;

  @override
  String get questionId;

  @override
  double get score;

  @override
  List<String> get selected;

  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseEmptyCopyWith<_$_QuestionResponseEmpty> get copyWith => throw _privateConstructorUsedError;
}
