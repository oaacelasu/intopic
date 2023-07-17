import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/widgets/multiple_choice_field.dart';
import 'package:intopic/features/quizzes/presentation/widgets/single_choice_field.dart';
import 'package:intopic/features/quizzes/presentation/widgets/true_or_false_field.dart';

class QuestionCard extends ConsumerWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final question = ref.watch(currentQuestionProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.title,
          style: context.titleLarge.bold.withColor(
            context.primaryColor,
          ),
        ).marginSymmetric(vertical: AppDimens.lg),
        Text(question.question, style: context.bodyMedium).marginSymmetric(vertical: AppDimens.lg),
        ...question.questionType.when(
          singleChoice: () => [
            for (final option in question.options) SingleChoiceField(option: option),
          ],
          multipleChoice: () => [
            for (final option in question.options) MultipleChoiceField(option: option),
          ],
          trueFalse: () => [const TrueOrFalseField()],
          none: () => [],
        ),
      ],
    );
  }
}
