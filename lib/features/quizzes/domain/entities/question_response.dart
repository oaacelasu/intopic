import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:uuid/uuid.dart';

part 'question_response.freezed.dart';

@freezed
class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    required String id,
    required String questionId,
    required double score,
    required List<String> selected,
  }) = _QuestionResponse;

  const QuestionResponse._();

  const factory QuestionResponse.empty({
    @Default('') String id,
    @Default('') String questionId,
    @Default(0.0) double score,
    @Default([]) List<String> selected,
  }) = _QuestionResponseEmpty;

  factory QuestionResponse.fromQuestion({
    required Question question,
    required List<String> selected,
  }) {
    const uuid = Uuid();
    return QuestionResponse(
      id: uuid.v1(),
      questionId: question.id,
      score: _getScore(question, selected),
      selected: selected,
    );
  }

  static double _getScore(Question question, List<String> selected) {
    return selected.fold<double>(100, (previousValue, element) {
      if(!question.validateAnswer(element)) {
        return previousValue - (100 / question.correctAnswerValues.length);
      }
      return previousValue;
    });
  }
}
