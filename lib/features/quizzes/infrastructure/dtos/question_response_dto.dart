import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question_response.dart';
import 'package:isar/isar.dart';

part 'question_response_dto.freezed.dart';
part 'question_response_dto.g.dart';

@freezed
@Embedded(ignore: {'copyWith'})
class QuestionResponseDto with _$QuestionResponseDto {
  factory QuestionResponseDto({
    String? id,
    String? questionId,
    double? score,
    List<String>? selected,
  }) = _QuestionResponseDto;

  const QuestionResponseDto._();

  factory QuestionResponseDto.fromDomain(QuestionResponse questionResponse) {
    return QuestionResponseDto(
      id: questionResponse.id,
      questionId: questionResponse.questionId,
      score: questionResponse.score,
      selected: questionResponse.selected,
    );
  }

  factory QuestionResponseDto.fromJson(Map<String, dynamic> json) => _$QuestionResponseDtoFromJson(json);

  QuestionResponse toDomain() {
    return QuestionResponse(
      id: id ?? '',
      questionId: questionId ?? '',
      score: score ?? 0.0,
      selected: selected ?? [],
    );
  }
}
