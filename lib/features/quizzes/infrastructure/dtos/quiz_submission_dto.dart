import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_response_dto.dart';
import 'package:isar/isar.dart';

part 'quiz_submission_dto.freezed.dart';
part 'quiz_submission_dto.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class QuizSubmissionDto with _$QuizSubmissionDto {
  factory QuizSubmissionDto({
    required Id id,
    required String quizId,
    required List<QuestionResponseDto> responses,
    required List<QuestionDto> questions,
    required int submittedAt,
  }) = _QuizSubmissionDto;

  factory QuizSubmissionDto.fromJson(Map<String, dynamic> json) => _$QuizSubmissionDtoFromJson(json);

  const QuizSubmissionDto._();

  factory QuizSubmissionDto.fromDomain(QuizSubmission quizResponse) {
    return QuizSubmissionDto(
      id: quizResponse.id,
      quizId: quizResponse.quizId,
      responses: quizResponse.responses.map(QuestionResponseDto.fromDomain).toList(),
      questions: quizResponse.questions.map(QuestionDto.fromDomain).toList(),
      submittedAt: quizResponse.submittedAt,
    );
  }

  QuizSubmission toDomain() {
    return QuizSubmission(
      id: id,
      quizId: quizId,
      responses: responses.map((e) => e.toDomain()).toList(),
      questions: questions.map((e) => e.toDomain()).toList(),
      submittedAt: submittedAt,
    );
  }

  @override
  // ignore: recursive_getters
  Id get id => id;
}
