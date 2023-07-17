part of 'quiz_state_notifier.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required Quiz quiz,
    required QuizResponse quizResponse,
    required int currentQuestionIndex,
  }) = _QuizState;

  const factory QuizState.initial({
    @Default(Quiz.empty()) Quiz quiz,
    @Default(QuizResponse.empty()) QuizResponse quizResponse,
    @Default(0) int currentQuestionIndex,
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
    if (this.currentQuestionIndex == 0) {
      return QuizStateStatus.initial;
    } else if (this.currentQuestionIndex + 1 < quiz.questions.length) {
      return QuizStateStatus.onProgress;
    } else {
      return QuizStateStatus.completed;
    }
  }
}
