// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)
        $default, {
    required TResult Function(
            String id, Name name, EmailAddress email, String token)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult Function(String id, Name name, EmailAddress email, String token)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(_UserEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(_UserEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(_UserEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String id, Name name, EmailAddress email, String token});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Name name, EmailAddress email, String token});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.email,
      required this.token})
      : super._();

  @override
  final String id;
  @override
  final Name name;
  @override
  final EmailAddress email;
  @override
  final String token;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)
        $default, {
    required TResult Function(
            String id, Name name, EmailAddress email, String token)
        empty,
  }) {
    return $default(id, name, email, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        empty,
  }) {
    return $default?.call(id, name, email, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult Function(String id, Name name, EmailAddress email, String token)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, email, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(_UserEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(_UserEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(_UserEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      required final Name name,
      required final EmailAddress email,
      required final String token}) = _$_User;
  const _User._() : super._();

  @override
  String get id;
  @override
  Name get name;
  @override
  EmailAddress get email;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserEmptyCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserEmptyCopyWith(
          _$_UserEmpty value, $Res Function(_$_UserEmpty) then) =
      __$$_UserEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Name name, EmailAddress email, String token});
}

/// @nodoc
class __$$_UserEmptyCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$_UserEmpty>
    implements _$$_UserEmptyCopyWith<$Res> {
  __$$_UserEmptyCopyWithImpl(
      _$_UserEmpty _value, $Res Function(_$_UserEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_$_UserEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserEmpty extends _UserEmpty {
  const _$_UserEmpty(
      {this.id = '',
      this.name = const Name.empty(),
      this.email = const EmailAddress.empty(),
      this.token = ''})
      : super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final EmailAddress email;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'User.empty(id: $id, name: $name, email: $email, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEmptyCopyWith<_$_UserEmpty> get copyWith =>
      __$$_UserEmptyCopyWithImpl<_$_UserEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)
        $default, {
    required TResult Function(
            String id, Name name, EmailAddress email, String token)
        empty,
  }) {
    return empty(id, name, email, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult? Function(String id, Name name, EmailAddress email, String token)?
        empty,
  }) {
    return empty?.call(id, name, email, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, Name name, EmailAddress email, String token)?
        $default, {
    TResult Function(String id, Name name, EmailAddress email, String token)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, name, email, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(_UserEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(_UserEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(_UserEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _UserEmpty extends User {
  const factory _UserEmpty(
      {final String id,
      final Name name,
      final EmailAddress email,
      final String token}) = _$_UserEmpty;
  const _UserEmpty._() : super._();

  @override
  String get id;
  @override
  Name get name;
  @override
  EmailAddress get email;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserEmptyCopyWith<_$_UserEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
