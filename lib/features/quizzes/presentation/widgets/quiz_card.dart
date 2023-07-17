import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class QuizCard extends ConsumerWidget {
  const QuizCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.read(currentQuizCardItemProvider);
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: context.surfaceVariantColor),
          child: InkWell(
            onTap: () {
              Get.toNamed<void>(AppRoutes.quiz, arguments: item);
            },
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://img.icons8.com/dusk/64/javascript.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimens.lg),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title.getOrEmpty(),
                      style: context.titleMedium.bold,
                    ),
                    Text(
                      item.description,
                      style: context.bodyMedium,
                    ),
                  ],
                ).paddingSymmetric(vertical: AppDimens.md),
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
            child: Text(item.questions.length.toString(), style: context.bodyMedium),
          ),
        ),
      ],
    );
  }
}
