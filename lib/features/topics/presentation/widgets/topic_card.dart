import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_constants.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';

class TopicCard extends ConsumerWidget {
  const TopicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.read(currentTopicProvider);

    final imageUrl = item.imageURL.isURL ? item.imageURL : AppConstants.defaultImageUrl;

    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: context.surfaceVariantColor),
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
      child: InkWell(
        onTap: () {
          Get.toNamed<void>(AppRoutes.topicDetail, arguments: item);
        },
        child: Row(
          children: [
            Container(
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: AppDimens.lg),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title.getOrEmpty(),
                  style: context.headlineSmall.bold,
                ),
                Text(
                  item.description,
                  style: context.bodyMedium,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.play_circle_outline_rounded),
                    ),
                    const SizedBox(width: AppDimens.xs),
                    Text(
                      item.noOfQuizzesAvailable.toString(),
                      style: context.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
