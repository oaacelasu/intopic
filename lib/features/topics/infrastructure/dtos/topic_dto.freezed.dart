// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicDto _$TopicDtoFromJson(Map<String, dynamic> json) {
  return _TopicDto.fromJson(json);
}

/// @nodoc
mixin _$TopicDto {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get noOfQuizzesAvailable => throw _privateConstructorUsedError;
  List<QuizDto>? get quizzes => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDtoCopyWith<TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDtoCopyWith<$Res> {
  factory $TopicDtoCopyWith(TopicDto value, $Res Function(TopicDto) then) =
      _$TopicDtoCopyWithImpl<$Res, TopicDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      String? title,
      String? image,
      String? description,
      int? noOfQuizzesAvailable,
      List<QuizDto>? quizzes,
      String? createdAt});
}

/// @nodoc
class _$TopicDtoCopyWithImpl<$Res, $Val extends TopicDto>
    implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? noOfQuizzesAvailable = freezed,
    Object? quizzes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfQuizzesAvailable: freezed == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      quizzes: freezed == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizDto>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicDtoCopyWith<$Res> implements $TopicDtoCopyWith<$Res> {
  factory _$$_TopicDtoCopyWith(
          _$_TopicDto value, $Res Function(_$_TopicDto) then) =
      __$$_TopicDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      String? title,
      String? image,
      String? description,
      int? noOfQuizzesAvailable,
      List<QuizDto>? quizzes,
      String? createdAt});
}

/// @nodoc
class __$$_TopicDtoCopyWithImpl<$Res>
    extends _$TopicDtoCopyWithImpl<$Res, _$_TopicDto>
    implements _$$_TopicDtoCopyWith<$Res> {
  __$$_TopicDtoCopyWithImpl(
      _$_TopicDto _value, $Res Function(_$_TopicDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? noOfQuizzesAvailable = freezed,
    Object? quizzes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TopicDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfQuizzesAvailable: freezed == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      quizzes: freezed == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizDto>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicDto implements _TopicDto {
  _$_TopicDto(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required this.title,
      required this.image,
      required this.description,
      required this.noOfQuizzesAvailable,
      required final List<QuizDto>? quizzes,
      required this.createdAt})
      : _quizzes = quizzes;

  factory _$_TopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final int? noOfQuizzesAvailable;
  final List<QuizDto>? _quizzes;
  @override
  List<QuizDto>? get quizzes {
    final value = _quizzes;
    if (value == null) return null;
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'TopicDto(id: $id, userId: $userId, title: $title, image: $image, description: $description, noOfQuizzesAvailable: $noOfQuizzesAvailable, quizzes: $quizzes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      image,
      description,
      noOfQuizzesAvailable,
      const DeepCollectionEquality().hash(_quizzes),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
      __$$_TopicDtoCopyWithImpl<_$_TopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDtoToJson(
      this,
    );
  }
}

abstract class _TopicDto implements TopicDto {
  factory _TopicDto(
      {@JsonKey(name: '_id') required final String? id,
      required final String? userId,
      required final String? title,
      required final String? image,
      required final String? description,
      required final int? noOfQuizzesAvailable,
      required final List<QuizDto>? quizzes,
      required final String? createdAt}) = _$_TopicDto;

  factory _TopicDto.fromJson(Map<String, dynamic> json) = _$_TopicDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get description;
  @override
  int? get noOfQuizzesAvailable;
  @override
  List<QuizDto>? get quizzes;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}
