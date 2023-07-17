import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class AnswerButton extends ConsumerWidget {
  const AnswerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionStatus = ref.watch(questionStatusProvider);
    final isAnswered = ref.watch(currentQuestionIsAnsweredProvider);

    switch (questionStatus) {
      case QuizStateStatus.initial:
        return PrimaryBtn(
          label: 'Next',
          onPressed: () {
            ref.read(quizStateNotifierProvider.notifier).nextQuestion();
          },
          enabled: isAnswered,
        );
      case QuizStateStatus.onProgress:
        return Row(
          children: [
            Expanded(
              child: SecondaryBtn(
                label: 'Back',
                onPressed: () {
                  ref.read(quizStateNotifierProvider.notifier).previousQuestion();
                },
              ),
            ),
            const SizedBox(width: AppDimens.md),
            Expanded(
              child: PrimaryBtn(
                label: 'Next',
                onPressed: () {
                  ref.read(quizStateNotifierProvider.notifier).nextQuestion();
                },
                enabled: isAnswered,
              ),
            ),
          ],
        );
      case QuizStateStatus.completed:
        return Row(
          children: [
            Expanded(
              child: SecondaryBtn(
                label: 'Back',
                onPressed: () {
                  ref.read(quizStateNotifierProvider.notifier).previousQuestion();
                },
              ),
            ),
            const SizedBox(width: AppDimens.md),
            Expanded(
              child: PrimaryBtn(
                label: 'Submit',
                onPressed: () {
                  ref.read(quizStateNotifierProvider.notifier).submitQuiz();
                },
                enabled: isAnswered,
              ),
            ),
          ],
        );
    }
  }
}
