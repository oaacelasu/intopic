import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/widgets/quiz_card.dart';

class TopicQuizzes extends HookConsumerWidget {
  const TopicQuizzes(this.items, {super.key});

  final List<Quiz> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: items.isNotEmpty,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.tr.quizzes,
                style: context.titleLarge.bold,
              ),
              const Spacer(),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ProviderScope(
                overrides: [
                  currentQuizCardItemProvider.overrideWithValue(items[index]),
                ],
                child: const QuizCard(),
              );
            },
          ),
        ],
      ).paddingSymmetric(horizontal: AppDimens.md),
    );
  }
}
