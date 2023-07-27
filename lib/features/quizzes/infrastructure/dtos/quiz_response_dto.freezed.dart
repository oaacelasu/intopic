// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizResponseDto _$QuizResponseDtoFromJson(Map<String, dynamic> json) {
  return _QuizResponseDto.fromJson(json);
}

/// @nodoc
mixin _$QuizResponseDto {
  int get id => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  List<QuestionResponseDto> get responses => throw _privateConstructorUsedError;
  int get quizCurrentQuestionIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizResponseDtoCopyWith<QuizResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResponseDtoCopyWith<$Res> {
  factory $QuizResponseDtoCopyWith(
          QuizResponseDto value, $Res Function(QuizResponseDto) then) =
      _$QuizResponseDtoCopyWithImpl<$Res, QuizResponseDto>;
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponseDto> responses,
      int quizCurrentQuestionIndex});
}

/// @nodoc
class _$QuizResponseDtoCopyWithImpl<$Res, $Val extends QuizResponseDto>
    implements $QuizResponseDtoCopyWith<$Res> {
  _$QuizResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? quizCurrentQuestionIndex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseDto>,
      quizCurrentQuestionIndex: null == quizCurrentQuestionIndex
          ? _value.quizCurrentQuestionIndex
          : quizCurrentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizResponseDtoCopyWith<$Res>
    implements $QuizResponseDtoCopyWith<$Res> {
  factory _$$_QuizResponseDtoCopyWith(
          _$_QuizResponseDto value, $Res Function(_$_QuizResponseDto) then) =
      __$$_QuizResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String quizId,
      List<QuestionResponseDto> responses,
      int quizCurrentQuestionIndex});
}

/// @nodoc
class __$$_QuizResponseDtoCopyWithImpl<$Res>
    extends _$QuizResponseDtoCopyWithImpl<$Res, _$_QuizResponseDto>
    implements _$$_QuizResponseDtoCopyWith<$Res> {
  __$$_QuizResponseDtoCopyWithImpl(
      _$_QuizResponseDto _value, $Res Function(_$_QuizResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? responses = null,
    Object? quizCurrentQuestionIndex = null,
  }) {
    return _then(_$_QuizResponseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseDto>,
      quizCurrentQuestionIndex: null == quizCurrentQuestionIndex
          ? _value.quizCurrentQuestionIndex
          : quizCurrentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizResponseDto extends _QuizResponseDto {
  _$_QuizResponseDto(
      {required this.id,
      required this.quizId,
      required final List<QuestionResponseDto> responses,
      required this.quizCurrentQuestionIndex})
      : _responses = responses,
        super._();

  factory _$_QuizResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizResponseDtoFromJson(json);

  @override
  final int id;
  @override
  final String quizId;
  final List<QuestionResponseDto> _responses;
  @override
  List<QuestionResponseDto> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  final int quizCurrentQuestionIndex;

  @override
  String toString() {
    return 'QuizResponseDto(id: $id, quizId: $quizId, responses: $responses, quizCurrentQuestionIndex: $quizCurrentQuestionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizResponseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            (identical(
                    other.quizCurrentQuestionIndex, quizCurrentQuestionIndex) ||
                other.quizCurrentQuestionIndex == quizCurrentQuestionIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      const DeepCollectionEquality().hash(_responses),
      quizCurrentQuestionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizResponseDtoCopyWith<_$_QuizResponseDto> get copyWith =>
      __$$_QuizResponseDtoCopyWithImpl<_$_QuizResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizResponseDtoToJson(
      this,
    );
  }
}

abstract class _QuizResponseDto extends QuizResponseDto {
  factory _QuizResponseDto(
      {required final int id,
      required final String quizId,
      required final List<QuestionResponseDto> responses,
      required final int quizCurrentQuestionIndex}) = _$_QuizResponseDto;
  _QuizResponseDto._() : super._();

  factory _QuizResponseDto.fromJson(Map<String, dynamic> json) =
      _$_QuizResponseDto.fromJson;

  @override
  int get id;
  @override
  String get quizId;
  @override
  List<QuestionResponseDto> get responses;
  @override
  int get quizCurrentQuestionIndex;
  @override
  @JsonKey(ignore: true)
  _$$_QuizResponseDtoCopyWith<_$_QuizResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
