import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_colors.dart';
import 'package:intopic/config/app_constants.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class HomeTopQuizzes extends HookConsumerWidget {
  const HomeTopQuizzes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredList = ref.watch(filteredTopQuizzesProvider);

    return filteredList.when(
      data: (value) => Visibility(
        visible: value.isNotEmpty,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  context.tr.inProgress,
                  style: context.titleLarge.bold,
                ).marginSymmetric(
                  vertical: AppDimens.lg,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Get.toNamed<void>(AppRoutes.quizList);
                  },
                  child: Text(
                    context.tr.seeAll,
                    style: context.bodyMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: min(value.length, 5),
                itemBuilder: (context, index) {
                  return ProviderScope(
                    overrides: [
                      currentTopQuizProvider.overrideWithValue(value[index]),
                    ],
                    child: const _TopQuizCard(),
                  );
                },
              ),
            )
          ],
        ),
      ),
      error: (_, l) {
        return SizedBox(
          height: 300,
          child: Center(
            child: Text(l.toString(), style: context.bodyMedium),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _TopQuizCard extends ConsumerWidget {
  const _TopQuizCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(currentTopQuizProvider);
    final score = ref.watch(overallQuizScoreProvider(quizId: item.id));

    final imageUrl = item.imageURL.isURL ? item.imageURL : AppConstants.defaultImageUrl;
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: AppDimens.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.randomColor(item.title.getOrEmpty()).withAlpha(50),
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed<void>(AppRoutes.quiz, arguments: item);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 25,
                  foregroundImage: NetworkImage(imageUrl),
                ),
              ],
            ),
            Text(
              item.title.getOrEmpty(),
              style: context.titleLarge.bold,
            ),
            score.whenOrNull(
                  data: (value) {
                    if (value == null) return const SizedBox();

                    return Text(
                      '${context.tr.score}: ${value.toStringAsFixed(2)}',
                      style: context.bodyMedium,
                    );
                  },
                ) ??
                const SizedBox(),
          ],
        ),
      ),
    );
  }
}
