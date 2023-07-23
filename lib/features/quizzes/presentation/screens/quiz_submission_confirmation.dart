import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';
import 'package:intopic/features/home/application/home_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_response.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class QuizSubmissionConfirmation extends HookConsumerWidget {
  const QuizSubmissionConfirmation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizSubmission = ref.watch(currentQuizSubmissionProvider);
    final currentIndex = useState<int>(0);

    final questions = quizSubmission.questions;
    final responses = quizSubmission.responses;
    final overallScore = (responses.fold<double>(0, (sum, response) => sum + response.score)) / questions.length;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.quizSubmissionTitle),
        leading: const SizedBox.shrink(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.tr.overallScore, style: context.titleMedium),
                const SizedBox(width: 8),
                Text(
                  '${overallScore.toStringAsFixed(2)} / 100',
                  style: context.titleLarge.bold,
                ),
              ],
            ).paddingOnly(top: AppDimens.xs, bottom: AppDimens.lg),
            _Header(currentIndex: currentIndex, questions: questions).paddingSymmetric(horizontal: 16),
            const SizedBox(height: 8),
            IndexedStack(
              index: currentIndex.value,
              children: [
                ...quizSubmission.questions.map((question) {
                  final response = responses.firstWhere(
                    (response) => response.questionId == question.id,
                    orElse: QuestionResponse.empty,
                  );
                  return _AnswerReviewCard(response: response, question: question);
                })
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: PrimaryBtn(
          onPressed: () {
            ref
              ..invalidate(overallQuizScoreProvider)
              ..invalidate(homeStateNotifierProvider);
            Get.offAllNamed<void>(AppRoutes.home);
          },
          label: context.tr.finish,
        ),
      ),
    );
  }
}

class _AnswerReviewCard extends StatelessWidget {
  const _AnswerReviewCard({
    required this.response,
    required this.question,
  });

  final QuestionResponse response;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Html(
              data: question.question,
            ),
            subtitle: Column(
              children: [
                ...question.options.map(
                  (option) => ListTile(
                    title: Html(
                      data: option,
                    ),
                    leading: Radio(
                      value: true,
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {},
                      activeColor: question.correctAnswerValues.contains(option) ? Colors.green : Colors.red,
                      groupValue: response.selected.contains(option),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${context.tr.correctAnswers}:',
                  style: context.bodyMedium.bold,
                ),
                const SizedBox(height: AppDimens.xs),
                ...question.correctAnswerValues.map(
                  (option) => Html(
                    data: option,
                  ).marginOnly(left: AppDimens.md),
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${context.tr.yourAnswers}:',
                      style: context.bodyMedium.bold,
                    ),
                    const SizedBox(height: AppDimens.xs),
                    ...response.selected.map(
                      (option) => Html(
                        data: option,
                      ).marginOnly(left: AppDimens.md),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimens.md),
                Row(
                  children: [
                    Text('${context.tr.score}:', style: context.bodyLarge),
                    Text(
                      ' ${response.score} / 100',
                      style: context.bodyLarge.bold,
                    ),
                  ],
                )
              ],
            ).paddingOnly(
              top: AppDimens.md,
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.currentIndex,
    required this.questions,
  });

  final ValueNotifier<int> currentIndex;
  final List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${context.tr.question} ${currentIndex.value + 1} of ${questions.length}',
          style: context.titleLarge,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            if (currentIndex.value > 0) {
              currentIndex.value--;
            }
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        IconButton(
          onPressed: () {
            if (currentIndex.value < questions.length - 1) {
              currentIndex.value++;
            }
          },
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
