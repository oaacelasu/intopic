import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class MultipleChoiceField extends ConsumerWidget {
  const MultipleChoiceField({
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
          backgroundColor: isSelected ? context.primaryColor : context.surfaceVariantColor,
          padding: const EdgeInsets.symmetric(vertical: AppDimens.md),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Row(
          children: [
            Text(
              option,
              style: isSelected
                  ? context.titleSmall.bold.withColor(
                      context.onPrimaryColor,
                    )
                  : context.bodyMedium,
            ),
            const Spacer(),
            CircleAvatar(
              radius: 12,
              backgroundColor: context.surfaceColor,
              child: Visibility(
                visible: isSelected,
                child: Icon(
                  Icons.check,
                  color: context.primaryColor,
                  size: 16,
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: AppDimens.md),
      ),
    ).marginSymmetric(vertical: AppDimens.sm);
  }
}
