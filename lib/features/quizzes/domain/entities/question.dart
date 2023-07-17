import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question_type.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String quizId,
    required String topicId,
    required QuestionType questionType,
    required String title,
    required String question,
    required List<String> options,
    required String correctAnswer,
  }) = _Question;

  const factory Question.empty({
    @Default('') String id,
    @Default('') String quizId,
    @Default('') String topicId,
    @Default(QuestionType.singleChoice()) QuestionType questionType,
    @Default('') String title,
    @Default('') String question,
    @Default([]) List<String> options,
    @Default('') String correctAnswer,
  }) = _QuestionEmpty;

  const Question._();
}

extension QuestionX on Question {

  List<String> get correctAnswerValues {
    return correctAnswer.split(',');
  }

  bool validateAnswer(String option) {
    return correctAnswerValues.contains(option);
  }
}
