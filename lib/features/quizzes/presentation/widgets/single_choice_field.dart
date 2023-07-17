import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class SingleChoiceField extends ConsumerWidget {
  const SingleChoiceField({
    required this.option,
    super.key,
  });

  final String option;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(selectedOptionProvider(option: option));

    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          ref.read(quizStateNotifierProvider.notifier).selectOption(option);
        },
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? context.primaryContainerColor : context.surfaceVariantColor,
          padding: const EdgeInsets.symmetric(vertical: AppDimens.md),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(option, style: isSelected ? context.titleSmall.bold : context.bodyMedium)
            .paddingSymmetric(horizontal: AppDimens.md),
      ),
    ).marginSymmetric(vertical: AppDimens.xs);
  }
}
