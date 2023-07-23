// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionResponseDto _$QuestionResponseDtoFromJson(Map<String, dynamic> json) {
  return _QuestionResponseDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseDto {
  String? get id => throw _privateConstructorUsedError;

  String? get questionId => throw _privateConstructorUsedError;

  double? get score => throw _privateConstructorUsedError;

  List<String>? get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionResponseDtoCopyWith<QuestionResponseDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseDtoCopyWith<$Res> {
  factory $QuestionResponseDtoCopyWith(QuestionResponseDto value, $Res Function(QuestionResponseDto) then) =
      _$QuestionResponseDtoCopyWithImpl<$Res, QuestionResponseDto>;

  @useResult
  $Res call({String? id, String? questionId, double? score, List<String>? selected});
}

/// @nodoc
class _$QuestionResponseDtoCopyWithImpl<$Res, $Val extends QuestionResponseDto>
    implements $QuestionResponseDtoCopyWith<$Res> {
  _$QuestionResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? score = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResponseDtoCopyWith<$Res> implements $QuestionResponseDtoCopyWith<$Res> {
  factory _$$_QuestionResponseDtoCopyWith(_$_QuestionResponseDto value, $Res Function(_$_QuestionResponseDto) then) =
      __$$_QuestionResponseDtoCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? id, String? questionId, double? score, List<String>? selected});
}

/// @nodoc
class __$$_QuestionResponseDtoCopyWithImpl<$Res> extends _$QuestionResponseDtoCopyWithImpl<$Res, _$_QuestionResponseDto>
    implements _$$_QuestionResponseDtoCopyWith<$Res> {
  __$$_QuestionResponseDtoCopyWithImpl(_$_QuestionResponseDto _value, $Res Function(_$_QuestionResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? score = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_QuestionResponseDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      selected: freezed == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionResponseDto extends _QuestionResponseDto {
  _$_QuestionResponseDto({this.id, this.questionId, this.score, final List<String>? selected})
      : _selected = selected,
        super._();

  factory _$_QuestionResponseDto.fromJson(Map<String, dynamic> json) => _$$_QuestionResponseDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? questionId;
  @override
  final double? score;
  final List<String>? _selected;

  @override
  List<String>? get selected {
    final value = _selected;
    if (value == null) return null;
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionResponseDto(id: $id, questionId: $questionId, score: $score, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) || other.questionId == questionId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, score, const DeepCollectionEquality().hash(_selected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseDtoCopyWith<_$_QuestionResponseDto> get copyWith =>
      __$$_QuestionResponseDtoCopyWithImpl<_$_QuestionResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResponseDtoToJson(
      this,
    );
  }
}

abstract class _QuestionResponseDto extends QuestionResponseDto {
  factory _QuestionResponseDto(
      {final String? id,
      final String? questionId,
      final double? score,
      final List<String>? selected}) = _$_QuestionResponseDto;

  _QuestionResponseDto._() : super._();

  factory _QuestionResponseDto.fromJson(Map<String, dynamic> json) = _$_QuestionResponseDto.fromJson;

  @override
  String? get id;

  @override
  String? get questionId;

  @override
  double? get score;

  @override
  List<String>? get selected;

  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseDtoCopyWith<_$_QuestionResponseDto> get copyWith => throw _privateConstructorUsedError;
}
