import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_response.dart';

part 'quiz_response.freezed.dart';

@freezed
class QuizResponse with _$QuizResponse {
  const factory QuizResponse({
    required int id,
    required String quizId,
    required List<QuestionResponse> responses,
    required int quizCurrentQuestionIndex,
  }) = _QuizResponse;

  const QuizResponse._();

  const factory QuizResponse.empty({
    @Default(0) int id,
    @Default('') String quizId,
    @Default([]) List<QuestionResponse> responses,
    @Default(0) int quizCurrentQuestionIndex,
  }) = _QuizResponseEmpty;

  double getScore() {
    return responses.fold<double>(0, (previousValue, element) => previousValue + element.score);
  }
}

extension QuizResponseX on QuizResponse {
  bool isComplete() {
    return responses.every((element) => element.selected.isNotEmpty);
  }

  double getScore() {
    return responses.fold<double>(0, (previousValue, element) => previousValue + element.score);
  }

  QuizResponse answerQuestion({
    required Question question,
    required String selected,
  }) {
    return question.questionType.maybeWhen(
      singleChoice: () => _answerSingleChoiceQuestion(question: question, selected: selected),
      trueFalse: () => _answerSingleChoiceQuestion(question: question, selected: selected),
      multipleChoice: () => _answerMultipleChoiceQuestion(question: question, selected: selected),
      orElse: () => this,
    );
  }

  QuizResponse moveForward() {
    return copyWith(
      quizCurrentQuestionIndex: quizCurrentQuestionIndex + 1,
    );
  }

  QuizResponse moveBackward() {
    return copyWith(
      quizCurrentQuestionIndex: quizCurrentQuestionIndex - 1,
    );
  }

  QuizResponse _answerSingleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    if (responses.any((element) => element.questionId == question.id)) {
      return _updateSingleChoiceQuestion(question: question, selected: selected);
    } else {
      return _addSingleChoiceQuestion(question: question, selected: selected);
    }
  }

  QuizResponse _addSingleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    return copyWith(
      responses: [
        ...responses,
        QuestionResponse.fromQuestion(question: question, selected: [selected])
      ],
    );
  }

  QuizResponse _updateSingleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    return copyWith(
      responses: responses.map((e) {
        if (e.questionId == question.id) {
          return e.updateSelected(question, [selected]);
        }
        return e;
      }).toList(),
    );
  }

  QuizResponse _answerMultipleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    if (responses.any((element) => element.questionId == question.id)) {
      return _updateMultipleChoiceQuestion(question: question, selected: selected);
    } else {
      return _addMultipleChoiceQuestion(question: question, selected: selected);
    }
  }

  QuizResponse _updateMultipleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    return copyWith(
      responses: responses.map((e) {
        if (e.questionId == question.id) {
          final isAlreadySelected = e.selected.contains(selected);
          final newSelected = isAlreadySelected
              ? e.selected.where((element) => element != selected).toList()
              : [...e.selected, selected];
          return QuestionResponse.fromQuestion(question: question, selected: newSelected);
        }
        return e;
      }).toList(),
    );
  }

  QuizResponse _addMultipleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    return copyWith(
      responses: [
        ...responses,
        QuestionResponse.fromQuestion(question: question, selected: [selected])
      ],
    );
  }
}
