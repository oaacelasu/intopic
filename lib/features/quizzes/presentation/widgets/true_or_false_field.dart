import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class TrueOrFalseField extends StatelessWidget {
  const TrueOrFalseField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BooleanSelector(role: false),
        SizedBox(width: AppDimens.md),
        BooleanSelector(role: true),
      ],
    );
  }
}

class BooleanSelector extends ConsumerWidget {
  const BooleanSelector({
    required this.role,
    super.key,
  });

  final bool role;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final option = role ? 'True' : 'False';
    final isSelected = ref.watch(selectedOptionProvider(option: option));
    final selectedColor = role ? context.primaryContainerColor : context.tertiaryContainerColor;

    return TextButton(
      onPressed: () {
        ref.read(quizStateNotifierProvider.notifier).selectOption(option);
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? selectedColor : context.surfaceVariantColor,
        padding: const EdgeInsets.symmetric(vertical: AppDimens.md),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(option, style: isSelected ? context.titleSmall.bold : context.bodyMedium)
          .paddingSymmetric(horizontal: AppDimens.md),
    );
  }
}
