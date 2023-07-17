import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';
import 'package:intopic/features/topics/presentation/widgets/topic_card.dart';

class TopicsScreen extends HookConsumerWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topics = ref.watch(topicsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.allTopics),
      ),
      body: topics.when(
        data: (items) => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ProviderScope(
                overrides: [
                  currentTopicProvider.overrideWithValue(items.elementAt(index)),
                ],
                child: const TopicCard().marginSymmetric(vertical: AppDimens.xs),);
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
