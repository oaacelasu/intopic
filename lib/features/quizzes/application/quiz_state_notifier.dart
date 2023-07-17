import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_state.dart';
part 'quiz_state_notifier.freezed.dart';
part 'quiz_state_notifier.g.dart';

@Riverpod(dependencies: [currentQuiz])
class QuizStateNotifier extends _$QuizStateNotifier {
  @override
  Future<QuizState> build() async {
    final quizId = ref.watch(currentQuizProvider).id;

    return _loadQuiz(quizId);
  }

  Future<QuizState> _loadQuiz(String id) async {
    final failureOrSuccess = await ref.read(quizRepositoryProvider).getQuizDetail(id);
     return failureOrSuccess.fold((l) => const QuizState.initial(), (r) => QuizState(quiz: r, currentQuestionIndex: 0, quizResponse: const QuizResponse.empty()));
  }

  Future<void> nextQuestion() async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        if(value.currentQuestionIndex == value.quiz.questions.length - 1) {
          return value;
        }
        return value.copyWith(
          currentQuestionIndex: value.currentQuestionIndex + 1,
        );
      });
    });
  }

  Future<void> previousQuestion() async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        if(value.currentQuestionIndex == 0) {
          return value;
        }
        return value.copyWith(
          currentQuestionIndex: value.currentQuestionIndex - 1,
        );
      });
    });
  }

  Future<void> selectOption(String option) async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final question = value.quiz.questions[value.currentQuestionIndex];
        return value.copyWith(
          quizResponse: value.quizResponse.answerQuestion(question: question, selected: option),
        );
      });
    });
  }

  Future<void> submitQuiz() async {
    final failureOrSuccess = await Future.delayed(const Duration(seconds: 1), () {
      return right<Failure, Unit>(unit);
    });

    //final failureOrSuccess = await ref.read(topicRepositoryProvider).getTopicDetail(id);
    return failureOrSuccess.fold((l) => const QuizState.initial(), (r) => const QuizState.initial());
  }
}
