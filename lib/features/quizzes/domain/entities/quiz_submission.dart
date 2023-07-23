import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_response.dart';

part 'quiz_submission.freezed.dart';

@freezed
class QuizSubmission with _$QuizSubmission {
  const factory QuizSubmission({
    required int id,
    required String quizId,
    required List<QuestionResponse> responses,
    required List<Question> questions,
    required int submittedAt,
  }) = _QuizSubmission;

  const QuizSubmission._();

  const factory QuizSubmission.empty({
    @Default(0) int id,
    @Default('') String quizId,
    @Default([]) List<QuestionResponse> responses,
    @Default([]) List<Question> questions,
    @Default(0) int submittedAt,
  }) = _QuizSubmissionEmpty;
}

extension QuizSubmissionX on QuizSubmission {
  double getScore() {
    return (responses.fold<double>(0, (sum, response) => sum + response.score)) / questions.length;
  }
}
