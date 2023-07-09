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
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get noOfQuizzesAvailable => throw _privateConstructorUsedError;

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
      {String? id,
      String? userId,
      String? title,
      String? imageURL,
      String? description,
      int? noOfQuizzesAvailable});
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
    Object? imageURL = freezed,
    Object? description = freezed,
    Object? noOfQuizzesAvailable = freezed,
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
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfQuizzesAvailable: freezed == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {String? id,
      String? userId,
      String? title,
      String? imageURL,
      String? description,
      int? noOfQuizzesAvailable});
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
    Object? imageURL = freezed,
    Object? description = freezed,
    Object? noOfQuizzesAvailable = freezed,
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
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfQuizzesAvailable: freezed == noOfQuizzesAvailable
          ? _value.noOfQuizzesAvailable
          : noOfQuizzesAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicDto implements _TopicDto {
  _$_TopicDto(
      {required this.id,
      required this.userId,
      required this.title,
      required this.imageURL,
      required this.description,
      required this.noOfQuizzesAvailable});

  factory _$_TopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? imageURL;
  @override
  final String? description;
  @override
  final int? noOfQuizzesAvailable;

  @override
  String toString() {
    return 'TopicDto(id: $id, userId: $userId, title: $title, imageURL: $imageURL, description: $description, noOfQuizzesAvailable: $noOfQuizzesAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noOfQuizzesAvailable, noOfQuizzesAvailable) ||
                other.noOfQuizzesAvailable == noOfQuizzesAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, imageURL,
      description, noOfQuizzesAvailable);

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
      {required final String? id,
      required final String? userId,
      required final String? title,
      required final String? imageURL,
      required final String? description,
      required final int? noOfQuizzesAvailable}) = _$_TopicDto;

  factory _TopicDto.fromJson(Map<String, dynamic> json) = _$_TopicDto.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get imageURL;
  @override
  String? get description;
  @override
  int? get noOfQuizzesAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}
