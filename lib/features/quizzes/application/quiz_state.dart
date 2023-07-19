part of 'quiz_state_notifier.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required Quiz quiz,
    required QuizResponse quizResponse,
  }) = _QuizState;

  const factory QuizState.initial({
    @Default(Quiz.empty()) Quiz quiz,
    @Default(QuizResponse.empty()) QuizResponse quizResponse,
  }) = _QuizStateEmpty;
}

enum QuizStateStatus { initial, onProgress, completed }

extension QuizStateX on QuizState {
  bool isComplete() {
    return quizResponse.isComplete();
  }

  double getScore() {
    return quizResponse.getScore();
  }

  QuizStateStatus get status {
    if (quizResponse.quizCurrentQuestionIndex == 0) {
      return QuizStateStatus.initial;
    } else if (quizResponse.quizCurrentQuestionIndex + 1 < quiz.questions.length) {
      return QuizStateStatus.onProgress;
    } else {
      return QuizStateStatus.completed;
    }
  }

  bool hasNextQuestion() {
    return quizResponse.quizCurrentQuestionIndex + 1 < quiz.questions.length;
  }

  bool hasPreviousQuestion() {
    return quizResponse.quizCurrentQuestionIndex > 0;
  }
}
