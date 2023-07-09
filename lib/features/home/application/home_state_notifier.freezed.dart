// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<Topic> get topics => throw _privateConstructorUsedError;
  List<Quiz> get topQuizzes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes) $default, {
    required TResult Function(List<Topic> topics, List<Quiz> topQuizzes)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeState value) $default, {
    required TResult Function(_HomeStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeState value)? $default, {
    TResult? Function(_HomeStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeState value)? $default, {
    TResult Function(_HomeStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<Topic> topics, List<Quiz> topQuizzes});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? topQuizzes = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      topQuizzes: null == topQuizzes
          ? _value.topQuizzes
          : topQuizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topic> topics, List<Quiz> topQuizzes});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? topQuizzes = null,
  }) {
    return _then(_$_HomeState(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      topQuizzes: null == topQuizzes
          ? _value._topQuizzes
          : topQuizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<Topic> topics, required final List<Quiz> topQuizzes})
      : _topics = topics,
        _topQuizzes = topQuizzes;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<Quiz> _topQuizzes;
  @override
  List<Quiz> get topQuizzes {
    if (_topQuizzes is EqualUnmodifiableListView) return _topQuizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topQuizzes);
  }

  @override
  String toString() {
    return 'HomeState(topics: $topics, topQuizzes: $topQuizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._topQuizzes, _topQuizzes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_topQuizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes) $default, {
    required TResult Function(List<Topic> topics, List<Quiz> topQuizzes)
        initial,
  }) {
    return $default(topics, topQuizzes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
  }) {
    return $default?.call(topics, topQuizzes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(topics, topQuizzes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeState value) $default, {
    required TResult Function(_HomeStateInitial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeState value)? $default, {
    TResult? Function(_HomeStateInitial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeState value)? $default, {
    TResult Function(_HomeStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<Topic> topics,
      required final List<Quiz> topQuizzes}) = _$_HomeState;

  @override
  List<Topic> get topics;
  @override
  List<Quiz> get topQuizzes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateInitialCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateInitialCopyWith(
          _$_HomeStateInitial value, $Res Function(_$_HomeStateInitial) then) =
      __$$_HomeStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topic> topics, List<Quiz> topQuizzes});
}

/// @nodoc
class __$$_HomeStateInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateInitial>
    implements _$$_HomeStateInitialCopyWith<$Res> {
  __$$_HomeStateInitialCopyWithImpl(
      _$_HomeStateInitial _value, $Res Function(_$_HomeStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? topQuizzes = null,
  }) {
    return _then(_$_HomeStateInitial(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      topQuizzes: null == topQuizzes
          ? _value._topQuizzes
          : topQuizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc

class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial(
      {final List<Topic> topics = const <Topic>[],
      final List<Quiz> topQuizzes = const <Quiz>[]})
      : _topics = topics,
        _topQuizzes = topQuizzes;

  final List<Topic> _topics;
  @override
  @JsonKey()
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<Quiz> _topQuizzes;
  @override
  @JsonKey()
  List<Quiz> get topQuizzes {
    if (_topQuizzes is EqualUnmodifiableListView) return _topQuizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topQuizzes);
  }

  @override
  String toString() {
    return 'HomeState.initial(topics: $topics, topQuizzes: $topQuizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateInitial &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._topQuizzes, _topQuizzes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_topQuizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateInitialCopyWith<_$_HomeStateInitial> get copyWith =>
      __$$_HomeStateInitialCopyWithImpl<_$_HomeStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes) $default, {
    required TResult Function(List<Topic> topics, List<Quiz> topQuizzes)
        initial,
  }) {
    return initial(topics, topQuizzes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult? Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
  }) {
    return initial?.call(topics, topQuizzes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? $default, {
    TResult Function(List<Topic> topics, List<Quiz> topQuizzes)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(topics, topQuizzes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeState value) $default, {
    required TResult Function(_HomeStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeState value)? $default, {
    TResult? Function(_HomeStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeState value)? $default, {
    TResult Function(_HomeStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial implements HomeState {
  const factory _HomeStateInitial(
      {final List<Topic> topics,
      final List<Quiz> topQuizzes}) = _$_HomeStateInitial;

  @override
  List<Topic> get topics;
  @override
  List<Quiz> get topQuizzes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateInitialCopyWith<_$_HomeStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
