import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_response_dto.dart';
import 'package:isar/isar.dart';

part 'quiz_response_dto.freezed.dart';
part 'quiz_response_dto.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class QuizResponseDto with _$QuizResponseDto {
  factory QuizResponseDto({
    required Id id,
    required String quizId,
    required List<QuestionResponseDto> responses,
    required int quizCurrentQuestionIndex,
  }) = _QuizResponseDto;

  factory QuizResponseDto.fromJson(Map<String, dynamic> json) => _$QuizResponseDtoFromJson(json);

  const QuizResponseDto._();

  factory QuizResponseDto.fromDomain(QuizResponse quizResponse) {
    return QuizResponseDto(
      id: quizResponse.id,
      quizId: quizResponse.quizId,
      responses: quizResponse.responses.map(QuestionResponseDto.fromDomain).toList(),
      quizCurrentQuestionIndex: quizResponse.quizCurrentQuestionIndex,
    );
  }

  QuizResponse toDomain() {
    return QuizResponse(
      id: id,
      quizId: quizId,
      responses: responses.map((e) => e.toDomain()).toList(),
      quizCurrentQuestionIndex: quizCurrentQuestionIndex,
    );
  }

  @override
  // ignore: recursive_getters
  Id get id => id;
}
