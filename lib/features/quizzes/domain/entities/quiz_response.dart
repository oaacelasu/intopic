import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_response.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:uuid/uuid.dart';

part 'quiz_response.freezed.dart';

@freezed
class QuizResponse with _$QuizResponse {
  const factory QuizResponse({
    required String id,
    required String quizId,
    required List<QuestionResponse> responses,
  }) = _QuizResponse;

  const QuizResponse._();

  const factory QuizResponse.empty({
    @Default('') String id,
    @Default('') String quizId,
    @Default([]) List<QuestionResponse> responses,
  }) = _QuizResponseEmpty;

  factory QuizResponse.fromQuiz({
    required Quiz quiz,
  }) {
    const uuid = Uuid();
    return QuizResponse(
      id: uuid.v1(),
      quizId: quiz.id,
      responses: quiz.questions.map((e) => QuestionResponse.fromQuestion(question: e, selected: [])).toList(),
    );
  }

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

  QuizResponse _answerSingleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    if(responses.any((element) => element.questionId == question.id)) {
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
      responses: [...responses, QuestionResponse.fromQuestion(question: question, selected: [selected])],
    );
  }

  QuizResponse _updateSingleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    return copyWith(
      responses: responses.map((e) {
        if(e.questionId == question.id) {
          return QuestionResponse.fromQuestion(question: question, selected: [selected]);
        }
        return e;
      }).toList(),
    );
  }

  QuizResponse _answerMultipleChoiceQuestion({
    required Question question,
    required String selected,
  }) {
    if(responses.any((element) => element.questionId == question.id)) {
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
        if(e.questionId == question.id) {
          final isAlreadySelected = e.selected.contains(selected);
          return QuestionResponse.fromQuestion(question: question, selected: isAlreadySelected ? e.selected : [...e.selected, selected]);
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
      responses: [...responses, QuestionResponse.fromQuestion(question: question, selected: [selected])],
    );
  }
}
