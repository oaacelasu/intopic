// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Name get title => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get noOfQuizzesAvailable => throw _privateConstructorUsedError;
  List<Quiz> get quizzes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)
        $default, {
    required TResult Function(
            String id,
            String userId,
            Name title,
            String imageURL,
            String description,
            int noOfQuizzesAvailable,
            List<Quiz> quizzes)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Topic value) $default, {
    required TResult Function(_TopicEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Topic value)? $default, {
    TResult? Function(_TopicEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Topic value)? $default, {
    TResult Function(_TopicEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String id,
      String userId,
      Name title,
      String imageURL,
      String description,
      int noOfQuizzesAvailable,
      List<Quiz> quizzes});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? description = null,
    Object? noOfQuizzesAvailable = null,
    Object? quizzes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$_TopicCopyWith(_$_Topic value, $Res Function(_$_Topic) then) =
      __$$_TopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Name title,
      String imageURL,
      String description,
      int noOfQuizzesAvailable,
      List<Quiz> quizzes});
}

/// @nodoc
class __$$_TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res, _$_Topic>
    implements _$$_TopicCopyWith<$Res> {
  __$$_TopicCopyWithImpl(_$_Topic _value, $Res Function(_$_Topic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? description = null,
    Object? noOfQuizzesAvailable = null,
    Object? quizzes = null,
  }) {
    return _then(_$_Topic(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc

class _$_Topic extends _Topic {
  const _$_Topic(
      {required this.id,
      required this.userId,
      required this.title,
      required this.imageURL,
      required this.description,
      required this.noOfQuizzesAvailable,
      required final List<Quiz> quizzes})
      : _quizzes = quizzes,
        super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final Name title;
  @override
  final String imageURL;
  @override
  final String description;
  @override
  final int noOfQuizzesAvailable;
  final List<Quiz> _quizzes;
  @override
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString() {
    return 'Topic(id: $id, userId: $userId, title: $title, imageURL: $imageURL, description: $description, noOfQuizzesAvailable: $noOfQuizzesAvailable, quizzes: $quizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      imageURL,
      description,
      noOfQuizzesAvailable,
      const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      __$$_TopicCopyWithImpl<_$_Topic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)
        $default, {
    required TResult Function(
            String id,
            String userId,
            Name title,
            String imageURL,
            String description,
            int noOfQuizzesAvailable,
            List<Quiz> quizzes)
        empty,
  }) {
    return $default(id, userId, title, imageURL, description,
        noOfQuizzesAvailable, quizzes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
  }) {
    return $default?.call(id, userId, title, imageURL, description,
        noOfQuizzesAvailable, quizzes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, userId, title, imageURL, description,
          noOfQuizzesAvailable, quizzes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Topic value) $default, {
    required TResult Function(_TopicEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Topic value)? $default, {
    TResult? Function(_TopicEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Topic value)? $default, {
    TResult Function(_TopicEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Topic extends Topic {
  const factory _Topic(
      {required final String id,
      required final String userId,
      required final Name title,
      required final String imageURL,
      required final String description,
      required final int noOfQuizzesAvailable,
      required final List<Quiz> quizzes}) = _$_Topic;
  const _Topic._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  Name get title;
  @override
  String get imageURL;
  @override
  String get description;
  @override
  int get noOfQuizzesAvailable;
  @override
  List<Quiz> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TopicEmptyCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$_TopicEmptyCopyWith(
          _$_TopicEmpty value, $Res Function(_$_TopicEmpty) then) =
      __$$_TopicEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Name title,
      String imageURL,
      String description,
      int noOfQuizzesAvailable,
      List<Quiz> quizzes});
}

/// @nodoc
class __$$_TopicEmptyCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$_TopicEmpty>
    implements _$$_TopicEmptyCopyWith<$Res> {
  __$$_TopicEmptyCopyWithImpl(
      _$_TopicEmpty _value, $Res Function(_$_TopicEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? imageURL = null,
    Object? description = null,
    Object? noOfQuizzesAvailable = null,
    Object? quizzes = null,
  }) {
    return _then(_$_TopicEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noOfQuizzesAvailable: null == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc

class _$_TopicEmpty extends _TopicEmpty {
  const _$_TopicEmpty(
      {this.id = '',
      this.userId = '',
      this.title = const Name.empty(),
      this.imageURL = '',
      this.description = '',
      this.noOfQuizzesAvailable = 0,
      final List<Quiz> quizzes = const []})
      : _quizzes = quizzes,
        super._();

  @override
  @JsonKey()
  final String id;
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
  final String description;
  @override
  @JsonKey()
  final int noOfQuizzesAvailable;
  final List<Quiz> _quizzes;
  @override
  @JsonKey()
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString() {
    return 'Topic.empty(id: $id, userId: $userId, title: $title, imageURL: $imageURL, description: $description, noOfQuizzesAvailable: $noOfQuizzesAvailable, quizzes: $quizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      imageURL,
      description,
      noOfQuizzesAvailable,
      const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicEmptyCopyWith<_$_TopicEmpty> get copyWith =>
      __$$_TopicEmptyCopyWithImpl<_$_TopicEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)
        $default, {
    required TResult Function(
            String id,
            String userId,
            Name title,
            String imageURL,
            String description,
            int noOfQuizzesAvailable,
            List<Quiz> quizzes)
        empty,
  }) {
    return empty(id, userId, title, imageURL, description, noOfQuizzesAvailable,
        quizzes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult? Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
  }) {
    return empty?.call(id, userId, title, imageURL, description,
        noOfQuizzesAvailable, quizzes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        $default, {
    TResult Function(String id, String userId, Name title, String imageURL,
            String description, int noOfQuizzesAvailable, List<Quiz> quizzes)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, userId, title, imageURL, description,
          noOfQuizzesAvailable, quizzes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Topic value) $default, {
    required TResult Function(_TopicEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Topic value)? $default, {
    TResult? Function(_TopicEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Topic value)? $default, {
    TResult Function(_TopicEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _TopicEmpty extends Topic {
  const factory _TopicEmpty(
      {final String id,
      final String userId,
      final Name title,
      final String imageURL,
      final String description,
      final int noOfQuizzesAvailable,
      final List<Quiz> quizzes}) = _$_TopicEmpty;
  const _TopicEmpty._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  Name get title;
  @override
  String get imageURL;
  @override
  String get description;
  @override
  int get noOfQuizzesAvailable;
  @override
  List<Quiz> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$_TopicEmptyCopyWith<_$_TopicEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
