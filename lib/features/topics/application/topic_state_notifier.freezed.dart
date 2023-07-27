// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicState {
  Topic get topic => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Topic topic) $default, {
    required TResult Function(Topic topic) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Topic topic)? $default, {
    TResult? Function(Topic topic)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Topic topic)? $default, {
    TResult Function(Topic topic)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TopicState value) $default, {
    required TResult Function(_TopicStateEmpty value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TopicState value)? $default, {
    TResult? Function(_TopicStateEmpty value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TopicState value)? $default, {
    TResult Function(_TopicStateEmpty value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicStateCopyWith<TopicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicStateCopyWith<$Res> {
  factory $TopicStateCopyWith(
          TopicState value, $Res Function(TopicState) then) =
      _$TopicStateCopyWithImpl<$Res, TopicState>;
  @useResult
  $Res call({Topic topic});

  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class _$TopicStateCopyWithImpl<$Res, $Val extends TopicState>
    implements $TopicStateCopyWith<$Res> {
  _$TopicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicCopyWith<$Res> get topic {
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopicStateCopyWith<$Res>
    implements $TopicStateCopyWith<$Res> {
  factory _$$_TopicStateCopyWith(
          _$_TopicState value, $Res Function(_$_TopicState) then) =
      __$$_TopicStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Topic topic});

  @override
  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class __$$_TopicStateCopyWithImpl<$Res>
    extends _$TopicStateCopyWithImpl<$Res, _$_TopicState>
    implements _$$_TopicStateCopyWith<$Res> {
  __$$_TopicStateCopyWithImpl(
      _$_TopicState _value, $Res Function(_$_TopicState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$_TopicState(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$_TopicState implements _TopicState {
  const _$_TopicState({required this.topic});

  @override
  final Topic topic;

  @override
  String toString() {
    return 'TopicState(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicState &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicStateCopyWith<_$_TopicState> get copyWith =>
      __$$_TopicStateCopyWithImpl<_$_TopicState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Topic topic) $default, {
    required TResult Function(Topic topic) initial,
  }) {
    return $default(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Topic topic)? $default, {
    TResult? Function(Topic topic)? initial,
  }) {
    return $default?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Topic topic)? $default, {
    TResult Function(Topic topic)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TopicState value) $default, {
    required TResult Function(_TopicStateEmpty value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TopicState value)? $default, {
    TResult? Function(_TopicStateEmpty value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TopicState value)? $default, {
    TResult Function(_TopicStateEmpty value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TopicState implements TopicState {
  const factory _TopicState({required final Topic topic}) = _$_TopicState;

  @override
  Topic get topic;
  @override
  @JsonKey(ignore: true)
  _$$_TopicStateCopyWith<_$_TopicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TopicStateEmptyCopyWith<$Res>
    implements $TopicStateCopyWith<$Res> {
  factory _$$_TopicStateEmptyCopyWith(
          _$_TopicStateEmpty value, $Res Function(_$_TopicStateEmpty) then) =
      __$$_TopicStateEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Topic topic});

  @override
  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class __$$_TopicStateEmptyCopyWithImpl<$Res>
    extends _$TopicStateCopyWithImpl<$Res, _$_TopicStateEmpty>
    implements _$$_TopicStateEmptyCopyWith<$Res> {
  __$$_TopicStateEmptyCopyWithImpl(
      _$_TopicStateEmpty _value, $Res Function(_$_TopicStateEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$_TopicStateEmpty(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$_TopicStateEmpty implements _TopicStateEmpty {
  const _$_TopicStateEmpty({this.topic = const Topic.empty()});

  @override
  @JsonKey()
  final Topic topic;

  @override
  String toString() {
    return 'TopicState.initial(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicStateEmpty &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicStateEmptyCopyWith<_$_TopicStateEmpty> get copyWith =>
      __$$_TopicStateEmptyCopyWithImpl<_$_TopicStateEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Topic topic) $default, {
    required TResult Function(Topic topic) initial,
  }) {
    return initial(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Topic topic)? $default, {
    TResult? Function(Topic topic)? initial,
  }) {
    return initial?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Topic topic)? $default, {
    TResult Function(Topic topic)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TopicState value) $default, {
    required TResult Function(_TopicStateEmpty value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TopicState value)? $default, {
    TResult? Function(_TopicStateEmpty value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TopicState value)? $default, {
    TResult Function(_TopicStateEmpty value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TopicStateEmpty implements TopicState {
  const factory _TopicStateEmpty({final Topic topic}) = _$_TopicStateEmpty;

  @override
  Topic get topic;
  @override
  @JsonKey(ignore: true)
  _$$_TopicStateEmptyCopyWith<_$_TopicStateEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
