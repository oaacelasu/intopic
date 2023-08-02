import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/utils/extensions/image_extension.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';

class QuizCard extends HookConsumerWidget {
  const QuizCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.read(currentQuizCardItemProvider);
    final topic = ref.watch(currentTopicProvider);
    final score = ref.watch(overallQuizScoreProvider(quizId: item.id));

    final imageProvider = useMemoized(() => item.imageURL.imageProvider , [item.imageURL]);

    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: context.surfaceVariantColor),
          child: InkWell(
            onTap: () {
              Get.toNamed<void>(AppRoutes.quiz, arguments: {'quiz': item, 'topic': topic});
            },
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimens.lg),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title.getOrEmpty(),
                        style: context.titleMedium.bold,
                      ).paddingOnly(bottom: AppDimens.xs),
                      score.whenOrNull(
                            data: (value) {
                              if (value == null) return const SizedBox();

                              return Text(
                                '${context.tr.score}: ${value.toStringAsFixed(2)}',
                                style: context.bodyMedium,
                              ).paddingOnly(bottom: AppDimens.xs);
                            },
                          ) ??
                          const SizedBox(),
                      Expanded(
                        child: Text(
                          item.description,
                          style: context.bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ).paddingSymmetric(vertical: AppDimens.md),
                ),
              ],
            ),
          ),
        ).marginSymmetric(vertical: AppDimens.xs),
        Positioned(
          top: 0,
          right: 0,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Text(item.totalQuestions.toString(), style: context.bodyMedium),
          ),
        ),
      ],
    );
  }
}
