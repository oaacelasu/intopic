part of 'quiz_state_notifier.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required Quiz quiz,
  }) = _QuizState;

  const factory QuizState.initial({
    @Default(Quiz.empty()) Quiz quiz,
  }) = _QuizStateEmpty;
}
