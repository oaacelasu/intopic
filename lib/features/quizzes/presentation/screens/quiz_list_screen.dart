import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/widgets/quiz_card.dart';

class QuizListScreen extends HookConsumerWidget {
  const QuizListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topQuizzes = ref.watch(topQuizzesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.topQuizzes),
      ),
      body: topQuizzes.when(
        data: (items) => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
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
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
