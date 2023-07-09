// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizState {
  Quiz get quiz => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Quiz quiz) $default, {
    required TResult Function(Quiz quiz) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Quiz quiz)? $default, {
    TResult? Function(Quiz quiz)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Quiz quiz)? $default, {
    TResult Function(Quiz quiz)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizState value) $default, {
    required TResult Function(_QuizStateEmpty value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizState value)? $default, {
    TResult? Function(_QuizStateEmpty value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizState value)? $default, {
    TResult Function(_QuizStateEmpty value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({Quiz quiz});

  $QuizCopyWith<$Res> get quiz;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = null,
  }) {
    return _then(_value.copyWith(
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res> get quiz {
    return $QuizCopyWith<$Res>(_value.quiz, (value) {
      return _then(_value.copyWith(quiz: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$$_QuizStateCopyWith(
          _$_QuizState value, $Res Function(_$_QuizState) then) =
      __$$_QuizStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Quiz quiz});

  @override
  $QuizCopyWith<$Res> get quiz;
}

/// @nodoc
class __$$_QuizStateCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_QuizState>
    implements _$$_QuizStateCopyWith<$Res> {
  __$$_QuizStateCopyWithImpl(
      _$_QuizState _value, $Res Function(_$_QuizState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = null,
  }) {
    return _then(_$_QuizState(
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz,
    ));
  }
}

/// @nodoc

class _$_QuizState implements _QuizState {
  const _$_QuizState({required this.quiz});

  @override
  final Quiz quiz;

  @override
  String toString() {
    return 'QuizState(quiz: $quiz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizState &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      __$$_QuizStateCopyWithImpl<_$_QuizState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Quiz quiz) $default, {
    required TResult Function(Quiz quiz) initial,
  }) {
    return $default(quiz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Quiz quiz)? $default, {
    TResult? Function(Quiz quiz)? initial,
  }) {
    return $default?.call(quiz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Quiz quiz)? $default, {
    TResult Function(Quiz quiz)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(quiz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizState value) $default, {
    required TResult Function(_QuizStateEmpty value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizState value)? $default, {
    TResult? Function(_QuizStateEmpty value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizState value)? $default, {
    TResult Function(_QuizStateEmpty value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QuizState implements QuizState {
  const factory _QuizState({required final Quiz quiz}) = _$_QuizState;

  @override
  Quiz get quiz;
  @override
  @JsonKey(ignore: true)
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizStateEmptyCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$_QuizStateEmptyCopyWith(
          _$_QuizStateEmpty value, $Res Function(_$_QuizStateEmpty) then) =
      __$$_QuizStateEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Quiz quiz});

  @override
  $QuizCopyWith<$Res> get quiz;
}

/// @nodoc
class __$$_QuizStateEmptyCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_QuizStateEmpty>
    implements _$$_QuizStateEmptyCopyWith<$Res> {
  __$$_QuizStateEmptyCopyWithImpl(
      _$_QuizStateEmpty _value, $Res Function(_$_QuizStateEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = null,
  }) {
    return _then(_$_QuizStateEmpty(
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz,
    ));
  }
}

/// @nodoc

class _$_QuizStateEmpty implements _QuizStateEmpty {
  const _$_QuizStateEmpty({this.quiz = const Quiz.empty()});

  @override
  @JsonKey()
  final Quiz quiz;

  @override
  String toString() {
    return 'QuizState.initial(quiz: $quiz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizStateEmpty &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizStateEmptyCopyWith<_$_QuizStateEmpty> get copyWith =>
      __$$_QuizStateEmptyCopyWithImpl<_$_QuizStateEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Quiz quiz) $default, {
    required TResult Function(Quiz quiz) initial,
  }) {
    return initial(quiz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Quiz quiz)? $default, {
    TResult? Function(Quiz quiz)? initial,
  }) {
    return initial?.call(quiz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Quiz quiz)? $default, {
    TResult Function(Quiz quiz)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(quiz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuizState value) $default, {
    required TResult Function(_QuizStateEmpty value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuizState value)? $default, {
    TResult? Function(_QuizStateEmpty value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuizState value)? $default, {
    TResult Function(_QuizStateEmpty value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuizStateEmpty implements QuizState {
  const factory _QuizStateEmpty({final Quiz quiz}) = _$_QuizStateEmpty;

  @override
  Quiz get quiz;
  @override
  @JsonKey(ignore: true)
  _$$_QuizStateEmptyCopyWith<_$_QuizStateEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
