import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/utils/extensions/image_extension.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';

class TopicCard extends HookConsumerWidget {
  const TopicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.read(currentTopicCardItemProvider);

    final imageProvider = useMemoized(() => item.imageURL.imageProvider, [item.imageURL]);

    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: context.surfaceVariantColor),
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
      child: InkWell(
        onTap: () {
          Get.toNamed<void>(AppRoutes.topicDetail, arguments: item);
        },
        child: Row(
          children: [
            Hero(
              tag: item.id,
              child: Container(
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppDimens.lg),
            Expanded(
              child: Column(
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
                      CircleAvatar(
                        backgroundColor: context.surfaceColor,
                        radius: 15,
                        child: Icon(Icons.play_circle_outline_rounded, color: context.onSurfaceColor),
                      ),
                      const SizedBox(width: AppDimens.xs),
                      Text(item.noOfQuizzesAvailable.toString(),
                          style: context.bodyMedium.withColor(context.onSurfaceColor),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
