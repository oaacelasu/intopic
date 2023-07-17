import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/quiz_dots_decorator.dart';
import 'package:intopic/features/common/presentation/widgets/quiz_dots_indicator.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class QuizProgressIndicator extends ConsumerWidget {
  const QuizProgressIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final length = ref.watch(quizLengthProvider);
    final index = ref.watch(currentQuestionIndexProvider);

    if (length == 0) {
      return const SizedBox();
    }

    final progress = (index + 1) / length;
    final dotsCount = min(length, 8);

    return SizedBox(
      width: double.infinity,
      child: QuizDotsIndicator(
        dotsCount: dotsCount,
        position: (dotsCount * progress).round() - 1,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        decorator: QuizDotsDecorator(
          activeSize: const Size(64, AppDimens.sm),
          size: const Size(32, AppDimens.sm),
          activeColor: context.primaryColor,
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
