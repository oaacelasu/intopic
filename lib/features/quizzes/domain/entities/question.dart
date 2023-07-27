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
    required String question,
    required List<String> options,
    required String answer,
  }) = _Question;

  const factory Question.empty({
    @Default('') String id,
    @Default('') String quizId,
    @Default('') String topicId,
    @Default(QuestionType.singleChoice()) QuestionType questionType,
    @Default('') String question,
    @Default([]) List<String> options,
    @Default('') String answer,
  }) = _QuestionEmpty;

  const Question._();
}

extension QuestionX on Question {
  List<String> get correctAnswerValues {
    return answer.split(',');
  }

  bool validateAnswer(String option) {
    return correctAnswerValues.contains(option);
  }
}
