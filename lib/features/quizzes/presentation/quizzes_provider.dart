import 'package:intopic/config/providers.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_response_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_submission_dto.dart';
import 'package:isar/isar.dart';
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
      if (state.quizResponse.quizCurrentQuestionIndex >= state.quiz.questions.length) {
        return const Question.empty();
      }

      return state.quiz.questions[state.quizResponse.quizCurrentQuestionIndex];
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
      return state.quizResponse.quizCurrentQuestionIndex;
    },
    orElse: () => 0,
  );
}

@Riverpod(dependencies: [currentQuiz, QuizStateNotifier])
Future<QuizResponse> quizResponseById(QuizResponseByIdRef ref, {required String quizId}) async {
  final isar = await ref.watch(isarPod.future);

  final quizResponse = await isar.quizResponseDtos.where().filter().quizIdEqualTo(quizId).findFirst();

  if (quizResponse == null) {
    return _createNewQuizResponse(quizId, isar);
  }

  return quizResponse.toDomain();
}

Future<QuizResponse> _createNewQuizResponse(String quizId, Isar isar) async {
  final newQuizResponse =  QuizResponse(id: Isar.autoIncrement, quizId: quizId, responses: [], quizCurrentQuestionIndex: 0);
  var isarQuizId = 0;
  await isar.writeTxn(() async {
    isarQuizId = await isar.quizResponseDtos.put(QuizResponseDto.fromDomain(newQuizResponse));
  });
  return newQuizResponse.copyWith(id: isarQuizId);
}

@riverpod
QuizSubmission currentQuizSubmission(CurrentQuizSubmissionRef ref) => const QuizSubmission.empty();

@riverpod
Future<double?> overallQuizScore(OverallQuizScoreRef ref, {required String quizId}) async {
  final isar = await ref.watch(isarPod.future);

  final submission = await isar.quizSubmissionDtos.where().filter().quizIdEqualTo(quizId).sortBySubmittedAtDesc().findFirst();

  if(submission == null) {
    return null;
  }
  return submission.toDomain().getScore();
}
