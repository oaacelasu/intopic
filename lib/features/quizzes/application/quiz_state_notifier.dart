import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_state.dart';
part 'quiz_state_notifier.freezed.dart';
part 'quiz_state_notifier.g.dart';

@Riverpod(dependencies: [currentQuiz])
class QuizStateNotifier extends _$QuizStateNotifier {
  @override
  Future<QuizState> build() async {
    final quizId = ref.watch(currentQuizProvider).id;
    final topicId = ref.watch(currentTopicProvider).id;
    return _loadQuiz(topicId, quizId);
  }

  Future<QuizState> _loadQuiz(String? topicId, String id) async {
    final failureOrSuccess = await ref.read(quizRepositoryProvider).getQuizDetail(topicId, id);
    final quizResponse = await ref.read(quizResponseByIdProvider(quizId: id).future);
    return failureOrSuccess.fold(
        (l) => const QuizState.initial(), (r) => QuizState(quiz: r, quizResponse: quizResponse),);
  }

  Future<void> nextQuestion() async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        if (!value.hasNextQuestion()) {
          return value;
        }
        final quizResponse = value.quizResponse.moveForward();
        unawaited(_saveQuizResponse(quizResponse));
        return value.copyWith(quizResponse: quizResponse);
      });
    });
  }

  Future<void> previousQuestion() async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        if (!value.hasPreviousQuestion()) {
          return value;
        }
        final quizResponse = value.quizResponse.moveBackward();
        unawaited(_saveQuizResponse(quizResponse));
        return value.copyWith(quizResponse: quizResponse);
      });
    });
  }

  Future<void> selectOption(String option) async {
    state.whenData((value) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final question = value.quiz.questions[value.quizResponse.quizCurrentQuestionIndex];
        final quizResponse = value.quizResponse.answerQuestion(question: question, selected: option);
        unawaited(_saveQuizResponse(quizResponse));
        return value.copyWith(quizResponse: quizResponse);
      });
    });
  }

  Future<void> _saveQuizResponse(QuizResponse quizResponse) async {
    await ref.read(quizRepositoryProvider).saveQuizResponse(quizResponse);
  }

  Future<void> submitQuiz() async {
    state.whenData((value) async {
      if (!value.isComplete()) {
        unawaited(AlertError(Get.context?.tr.pleaseAnswerAllQuestions ?? '').show());
      }

      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final submission = await ref.read(quizRepositoryProvider).saveQuizSubmission(value);
        submission.fold((l) {}, (r) {
          unawaited(Get.toNamed<void>(AppRoutes.confirmation, arguments: r));
        });
        return const QuizState.initial();
      });
    });
  }
}
