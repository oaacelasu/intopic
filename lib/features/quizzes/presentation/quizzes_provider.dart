import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quizzes_provider.g.dart';

@riverpod
Quiz currentQuizCardItem(CurrentQuizCardItemRef ref) => const Quiz.empty();

@riverpod
Quiz currentQuiz(CurrentQuizRef ref) => const Quiz.empty();

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier])
Question currentQuestion(CurrentQuestionRef ref) {
  final asyncState = ref.watch(quizStateNotifierProvider);

  return asyncState.maybeWhen(
    data: (state) {
      if (state.currentQuestionIndex >= state.quiz.questions.length) {
        return const Question.empty();
      }

      return state.quiz.questions[state.currentQuestionIndex];
    },
    orElse: () => const Question.empty(),
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier, currentQuestion])
bool selectedOption(SelectedOptionRef ref, {required String option}) {
  final question = ref.watch(currentQuestionProvider);
  final asyncState = ref.watch(quizStateNotifierProvider);
  return asyncState.maybeWhen(
    data: (state) {
      return state.quizResponse.responses
          .any((element) => element.questionId == question.id && element.selected.contains(option));
    },
    orElse: () => false,
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier, currentQuestion])
bool currentQuestionIsAnswered(CurrentQuestionIsAnsweredRef ref) {
  final quizResponseAsync = ref.watch(quizStateNotifierProvider);

  return quizResponseAsync.maybeWhen(
    data: (state) {
      return state.quizResponse.responses.any((element) => element.questionId == ref.watch(currentQuestionProvider).id);
    },
    orElse: () => false,
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier])
QuizStateStatus questionStatus(QuestionStatusRef ref) {
  final quizResponseAsync = ref.watch(quizStateNotifierProvider);

  return quizResponseAsync.maybeWhen(
    data: (state) {
      return state.status;
    },
    orElse: () => QuizStateStatus.initial,
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier])
int quizLength(QuizLengthRef ref) {
  final asyncState = ref.watch(quizStateNotifierProvider);
  return asyncState.maybeWhen(
    data: (state) {
      return state.quiz.questions.length;
    },
    orElse: () => 0,
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier])
int currentQuestionIndex(CurrentQuestionIndexRef ref) {
  final asyncState = ref.watch(quizStateNotifierProvider);
  return asyncState.maybeWhen(
    data: (state) {
      return state.currentQuestionIndex;
    },
    orElse: () => 0,
  );
}
