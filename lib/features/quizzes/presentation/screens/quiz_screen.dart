import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/widgets/answer_button.dart';
import 'package:intopic/features/quizzes/presentation/widgets/question_card.dart';
import 'package:intopic/features/quizzes/presentation/widgets/quiz_progress_indicator.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(currentQuizProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          quiz.title.getOrEmpty(),
          style: context.titleLarge.bold.withColor(context.primaryColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: context.primaryColor, size: 36),
          onPressed: Get.back<void>,
        ),
        centerTitle: true,
      ),
      body: Visibility(
        visible: quiz.questions.isNotEmpty,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const QuizProgressIndicator(),
              const QuestionCard(),
              const Spacer(),
              const AnswerButton().marginOnly(bottom: AppDimens.lg),
            ],
          ),
        ),
      ),
    );
  }
}
