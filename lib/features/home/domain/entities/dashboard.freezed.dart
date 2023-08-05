// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Dashboard {
  List<Topic> get topics => throw _privateConstructorUsedError;
  int get noOfQuizzesAvailable => throw _privateConstructorUsedError;
  int get noOfTopicsAvailable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        $default, {
    required TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Dashboard value) $default, {
    required TResult Function(_DashboardEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Dashboard value)? $default, {
    TResult? Function(_DashboardEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Dashboard value)? $default, {
    TResult Function(_DashboardEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardCopyWith<Dashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardCopyWith<$Res> {
  factory $DashboardCopyWith(Dashboard value, $Res Function(Dashboard) then) =
      _$DashboardCopyWithImpl<$Res, Dashboard>;
  @useResult
  $Res call(
      {List<Topic> topics, int noOfQuizzesAvailable, int noOfTopicsAvailable});
}

/// @nodoc
class _$DashboardCopyWithImpl<$Res, $Val extends Dashboard>
    implements $DashboardCopyWith<$Res> {
  _$DashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? noOfQuizzesAvailable = null,
    Object? noOfTopicsAvailable = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      noOfTopicsAvailable: null == noOfTopicsAvailable
          ? _value.noOfTopicsAvailable
          : noOfTopicsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardCopyWith<$Res> implements $DashboardCopyWith<$Res> {
  factory _$$_DashboardCopyWith(
          _$_Dashboard value, $Res Function(_$_Dashboard) then) =
      __$$_DashboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Topic> topics, int noOfQuizzesAvailable, int noOfTopicsAvailable});
}

/// @nodoc
class __$$_DashboardCopyWithImpl<$Res>
    extends _$DashboardCopyWithImpl<$Res, _$_Dashboard>
    implements _$$_DashboardCopyWith<$Res> {
  __$$_DashboardCopyWithImpl(
      _$_Dashboard _value, $Res Function(_$_Dashboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? noOfQuizzesAvailable = null,
    Object? noOfTopicsAvailable = null,
  }) {
    return _then(_$_Dashboard(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      noOfTopicsAvailable: null == noOfTopicsAvailable
          ? _value.noOfTopicsAvailable
          : noOfTopicsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Dashboard extends _Dashboard {
  const _$_Dashboard(
      {required final List<Topic> topics,
      required this.noOfQuizzesAvailable,
      required this.noOfTopicsAvailable})
      : _topics = topics,
        super._();

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final int noOfQuizzesAvailable;
  @override
  final int noOfTopicsAvailable;

  @override
  String toString() {
    return 'Dashboard(topics: $topics, noOfQuizzesAvailable: $noOfQuizzesAvailable, noOfTopicsAvailable: $noOfTopicsAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dashboard &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable) &&
            (identical(other.noOfTopicsAvailable, noOfTopicsAvailable) ||
                other.noOfTopicsAvailable == noOfTopicsAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      noOfQuizzesAvailable,
      noOfTopicsAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardCopyWith<_$_Dashboard> get copyWith =>
      __$$_DashboardCopyWithImpl<_$_Dashboard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        $default, {
    required TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        empty,
  }) {
    return $default(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
  }) {
    return $default?.call(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Dashboard value) $default, {
    required TResult Function(_DashboardEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Dashboard value)? $default, {
    TResult? Function(_DashboardEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Dashboard value)? $default, {
    TResult Function(_DashboardEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Dashboard extends Dashboard {
  const factory _Dashboard(
      {required final List<Topic> topics,
      required final int noOfQuizzesAvailable,
      required final int noOfTopicsAvailable}) = _$_Dashboard;
  const _Dashboard._() : super._();

  @override
  List<Topic> get topics;
  @override
  int get noOfQuizzesAvailable;
  @override
  int get noOfTopicsAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardCopyWith<_$_Dashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DashboardEmptyCopyWith<$Res>
    implements $DashboardCopyWith<$Res> {
  factory _$$_DashboardEmptyCopyWith(
          _$_DashboardEmpty value, $Res Function(_$_DashboardEmpty) then) =
      __$$_DashboardEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Topic> topics, int noOfQuizzesAvailable, int noOfTopicsAvailable});
}

/// @nodoc
class __$$_DashboardEmptyCopyWithImpl<$Res>
    extends _$DashboardCopyWithImpl<$Res, _$_DashboardEmpty>
    implements _$$_DashboardEmptyCopyWith<$Res> {
  __$$_DashboardEmptyCopyWithImpl(
      _$_DashboardEmpty _value, $Res Function(_$_DashboardEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? noOfQuizzesAvailable = null,
    Object? noOfTopicsAvailable = null,
  }) {
    return _then(_$_DashboardEmpty(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      noOfTopicsAvailable: null == noOfTopicsAvailable
          ? _value.noOfTopicsAvailable
          : noOfTopicsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardEmpty extends _DashboardEmpty {
  const _$_DashboardEmpty(
      {final List<Topic> topics = const [],
      this.noOfQuizzesAvailable = 0,
      this.noOfTopicsAvailable = 0})
      : _topics = topics,
        super._();

  final List<Topic> _topics;
  @override
  @JsonKey()
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey()
  final int noOfQuizzesAvailable;
  @override
  @JsonKey()
  final int noOfTopicsAvailable;

  @override
  String toString() {
    return 'Dashboard.empty(topics: $topics, noOfQuizzesAvailable: $noOfQuizzesAvailable, noOfTopicsAvailable: $noOfTopicsAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardEmpty &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable) &&
            (identical(other.noOfTopicsAvailable, noOfTopicsAvailable) ||
                other.noOfTopicsAvailable == noOfTopicsAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      noOfQuizzesAvailable,
      noOfTopicsAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardEmptyCopyWith<_$_DashboardEmpty> get copyWith =>
      __$$_DashboardEmptyCopyWithImpl<_$_DashboardEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        $default, {
    required TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)
        empty,
  }) {
    return empty(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult? Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
  }) {
    return empty?.call(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        $default, {
    TResult Function(List<Topic> topics, int noOfQuizzesAvailable,
            int noOfTopicsAvailable)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(topics, noOfQuizzesAvailable, noOfTopicsAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Dashboard value) $default, {
    required TResult Function(_DashboardEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Dashboard value)? $default, {
    TResult? Function(_DashboardEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Dashboard value)? $default, {
    TResult Function(_DashboardEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _DashboardEmpty extends Dashboard {
  const factory _DashboardEmpty(
      {final List<Topic> topics,
      final int noOfQuizzesAvailable,
      final int noOfTopicsAvailable}) = _$_DashboardEmpty;
  const _DashboardEmpty._() : super._();

  @override
  List<Topic> get topics;
  @override
  int get noOfQuizzesAvailable;
  @override
  int get noOfTopicsAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardEmptyCopyWith<_$_DashboardEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
