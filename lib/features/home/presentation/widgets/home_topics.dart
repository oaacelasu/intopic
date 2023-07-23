import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';
import 'package:intopic/features/topics/presentation/widgets/topic_card.dart';

class HomeTopics extends HookConsumerWidget {
  const HomeTopics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredList = ref.watch(filteredTopicsProvider);

    return filteredList.when(
      data: (value) => Visibility(
        visible: value.isNotEmpty,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  context.tr.topics,
                  style: context.titleLarge.bold,
                ).marginSymmetric(
                  vertical: AppDimens.lg,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Get.toNamed<void>(AppRoutes.topics);
                  },
                  child: Text(
                    context.tr.seeAll,
                    style: context.bodyMedium,
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: min(value.length, 2),
              itemBuilder: (context, index) {
                return ProviderScope(
                  overrides: [
                    currentTopicProvider.overrideWithValue(value.elementAt(index)),
                  ],
                  child: const TopicCard().marginSymmetric(vertical: AppDimens.xs),
                );
              },
            ),
          ],
        ),
      ),
      error: (_, l) {
        return SizedBox(
          height: 300,
          child: Center(
            child: Text(l.toString()),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
