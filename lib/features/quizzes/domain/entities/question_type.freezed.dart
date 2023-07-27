// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() singleChoice,
    required TResult Function() multipleChoice,
    required TResult Function() trueFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? singleChoice,
    TResult? Function()? multipleChoice,
    TResult? Function()? trueFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? singleChoice,
    TResult Function()? multipleChoice,
    TResult Function()? trueFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneQuestionType value) none,
    required TResult Function(_SingleChoiceQuestionType value) singleChoice,
    required TResult Function(_MultipleChoiceQuestionType value) multipleChoice,
    required TResult Function(_TrueFalseQuestionType value) trueFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneQuestionType value)? none,
    TResult? Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult? Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult? Function(_TrueFalseQuestionType value)? trueFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneQuestionType value)? none,
    TResult Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult Function(_TrueFalseQuestionType value)? trueFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTypeCopyWith<$Res> {
  factory $QuestionTypeCopyWith(
          QuestionType value, $Res Function(QuestionType) then) =
      _$QuestionTypeCopyWithImpl<$Res, QuestionType>;
}

/// @nodoc
class _$QuestionTypeCopyWithImpl<$Res, $Val extends QuestionType>
    implements $QuestionTypeCopyWith<$Res> {
  _$QuestionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoneQuestionTypeCopyWith<$Res> {
  factory _$$_NoneQuestionTypeCopyWith(
          _$_NoneQuestionType value, $Res Function(_$_NoneQuestionType) then) =
      __$$_NoneQuestionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoneQuestionTypeCopyWithImpl<$Res>
    extends _$QuestionTypeCopyWithImpl<$Res, _$_NoneQuestionType>
    implements _$$_NoneQuestionTypeCopyWith<$Res> {
  __$$_NoneQuestionTypeCopyWithImpl(
      _$_NoneQuestionType _value, $Res Function(_$_NoneQuestionType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoneQuestionType implements _NoneQuestionType {
  const _$_NoneQuestionType();

  @override
  String toString() {
    return 'QuestionType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoneQuestionType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() singleChoice,
    required TResult Function() multipleChoice,
    required TResult Function() trueFalse,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? singleChoice,
    TResult? Function()? multipleChoice,
    TResult? Function()? trueFalse,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? singleChoice,
    TResult Function()? multipleChoice,
    TResult Function()? trueFalse,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneQuestionType value) none,
    required TResult Function(_SingleChoiceQuestionType value) singleChoice,
    required TResult Function(_MultipleChoiceQuestionType value) multipleChoice,
    required TResult Function(_TrueFalseQuestionType value) trueFalse,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneQuestionType value)? none,
    TResult? Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult? Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult? Function(_TrueFalseQuestionType value)? trueFalse,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneQuestionType value)? none,
    TResult Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult Function(_TrueFalseQuestionType value)? trueFalse,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _NoneQuestionType implements QuestionType {
  const factory _NoneQuestionType() = _$_NoneQuestionType;
}

/// @nodoc
abstract class _$$_SingleChoiceQuestionTypeCopyWith<$Res> {
  factory _$$_SingleChoiceQuestionTypeCopyWith(
          _$_SingleChoiceQuestionType value,
          $Res Function(_$_SingleChoiceQuestionType) then) =
      __$$_SingleChoiceQuestionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SingleChoiceQuestionTypeCopyWithImpl<$Res>
    extends _$QuestionTypeCopyWithImpl<$Res, _$_SingleChoiceQuestionType>
    implements _$$_SingleChoiceQuestionTypeCopyWith<$Res> {
  __$$_SingleChoiceQuestionTypeCopyWithImpl(_$_SingleChoiceQuestionType _value,
      $Res Function(_$_SingleChoiceQuestionType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SingleChoiceQuestionType implements _SingleChoiceQuestionType {
  const _$_SingleChoiceQuestionType();

  @override
  String toString() {
    return 'QuestionType.singleChoice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleChoiceQuestionType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() singleChoice,
    required TResult Function() multipleChoice,
    required TResult Function() trueFalse,
  }) {
    return singleChoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? singleChoice,
    TResult? Function()? multipleChoice,
    TResult? Function()? trueFalse,
  }) {
    return singleChoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? singleChoice,
    TResult Function()? multipleChoice,
    TResult Function()? trueFalse,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneQuestionType value) none,
    required TResult Function(_SingleChoiceQuestionType value) singleChoice,
    required TResult Function(_MultipleChoiceQuestionType value) multipleChoice,
    required TResult Function(_TrueFalseQuestionType value) trueFalse,
  }) {
    return singleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneQuestionType value)? none,
    TResult? Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult? Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult? Function(_TrueFalseQuestionType value)? trueFalse,
  }) {
    return singleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneQuestionType value)? none,
    TResult Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult Function(_TrueFalseQuestionType value)? trueFalse,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(this);
    }
    return orElse();
  }
}

abstract class _SingleChoiceQuestionType implements QuestionType {
  const factory _SingleChoiceQuestionType() = _$_SingleChoiceQuestionType;
}

/// @nodoc
abstract class _$$_MultipleChoiceQuestionTypeCopyWith<$Res> {
  factory _$$_MultipleChoiceQuestionTypeCopyWith(
          _$_MultipleChoiceQuestionType value,
          $Res Function(_$_MultipleChoiceQuestionType) then) =
      __$$_MultipleChoiceQuestionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MultipleChoiceQuestionTypeCopyWithImpl<$Res>
    extends _$QuestionTypeCopyWithImpl<$Res, _$_MultipleChoiceQuestionType>
    implements _$$_MultipleChoiceQuestionTypeCopyWith<$Res> {
  __$$_MultipleChoiceQuestionTypeCopyWithImpl(
      _$_MultipleChoiceQuestionType _value,
      $Res Function(_$_MultipleChoiceQuestionType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MultipleChoiceQuestionType implements _MultipleChoiceQuestionType {
  const _$_MultipleChoiceQuestionType();

  @override
  String toString() {
    return 'QuestionType.multipleChoice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleChoiceQuestionType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() singleChoice,
    required TResult Function() multipleChoice,
    required TResult Function() trueFalse,
  }) {
    return multipleChoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? singleChoice,
    TResult? Function()? multipleChoice,
    TResult? Function()? trueFalse,
  }) {
    return multipleChoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? singleChoice,
    TResult Function()? multipleChoice,
    TResult Function()? trueFalse,
    required TResult orElse(),
  }) {
    if (multipleChoice != null) {
      return multipleChoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneQuestionType value) none,
    required TResult Function(_SingleChoiceQuestionType value) singleChoice,
    required TResult Function(_MultipleChoiceQuestionType value) multipleChoice,
    required TResult Function(_TrueFalseQuestionType value) trueFalse,
  }) {
    return multipleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneQuestionType value)? none,
    TResult? Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult? Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult? Function(_TrueFalseQuestionType value)? trueFalse,
  }) {
    return multipleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneQuestionType value)? none,
    TResult Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult Function(_TrueFalseQuestionType value)? trueFalse,
    required TResult orElse(),
  }) {
    if (multipleChoice != null) {
      return multipleChoice(this);
    }
    return orElse();
  }
}

abstract class _MultipleChoiceQuestionType implements QuestionType {
  const factory _MultipleChoiceQuestionType() = _$_MultipleChoiceQuestionType;
}

/// @nodoc
abstract class _$$_TrueFalseQuestionTypeCopyWith<$Res> {
  factory _$$_TrueFalseQuestionTypeCopyWith(_$_TrueFalseQuestionType value,
          $Res Function(_$_TrueFalseQuestionType) then) =
      __$$_TrueFalseQuestionTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrueFalseQuestionTypeCopyWithImpl<$Res>
    extends _$QuestionTypeCopyWithImpl<$Res, _$_TrueFalseQuestionType>
    implements _$$_TrueFalseQuestionTypeCopyWith<$Res> {
  __$$_TrueFalseQuestionTypeCopyWithImpl(_$_TrueFalseQuestionType _value,
      $Res Function(_$_TrueFalseQuestionType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TrueFalseQuestionType implements _TrueFalseQuestionType {
  const _$_TrueFalseQuestionType();

  @override
  String toString() {
    return 'QuestionType.trueFalse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TrueFalseQuestionType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() singleChoice,
    required TResult Function() multipleChoice,
    required TResult Function() trueFalse,
  }) {
    return trueFalse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? singleChoice,
    TResult? Function()? multipleChoice,
    TResult? Function()? trueFalse,
  }) {
    return trueFalse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? singleChoice,
    TResult Function()? multipleChoice,
    TResult Function()? trueFalse,
    required TResult orElse(),
  }) {
    if (trueFalse != null) {
      return trueFalse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneQuestionType value) none,
    required TResult Function(_SingleChoiceQuestionType value) singleChoice,
    required TResult Function(_MultipleChoiceQuestionType value) multipleChoice,
    required TResult Function(_TrueFalseQuestionType value) trueFalse,
  }) {
    return trueFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneQuestionType value)? none,
    TResult? Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult? Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult? Function(_TrueFalseQuestionType value)? trueFalse,
  }) {
    return trueFalse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneQuestionType value)? none,
    TResult Function(_SingleChoiceQuestionType value)? singleChoice,
    TResult Function(_MultipleChoiceQuestionType value)? multipleChoice,
    TResult Function(_TrueFalseQuestionType value)? trueFalse,
    required TResult orElse(),
  }) {
    if (trueFalse != null) {
      return trueFalse(this);
    }
    return orElse();
  }
}

abstract class _TrueFalseQuestionType implements QuestionType {
  const factory _TrueFalseQuestionType() = _$_TrueFalseQuestionType;
}
