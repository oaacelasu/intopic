
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/utils/extensions/image_extension.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';
import 'package:intopic/features/topics/presentation/widgets/topic_quizzes.dart';

class TopicDetailScreen extends HookConsumerWidget {
  const TopicDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final baseTopic = Get.arguments as Topic;
    final topic = ref.watch(topicProvider(topicId: baseTopic.id));
    final hasImage = baseTopic.imageURL.isNotEmpty;
    final imageProvider = useMemoized(() => baseTopic.imageURL.imageProvider , [baseTopic.imageURL]);

    return Scaffold(
      backgroundColor: context.surfaceColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                expandedHeight: hasImage ? Get.height * 0.35 : (kTextTabBarHeight + 10),
                pinned: true,
                title: Text(baseTopic.title.getOrEmpty()),
                flexibleSpace: FlexibleSpaceBar(
                  background: hasImage
                      ? Hero(
                        tag: baseTopic.id,
                        child: Container(
                            margin: const EdgeInsets.only(top: kTextTabBarHeight),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                      )
                      : const SizedBox.shrink(),
                ),
              ),
            ),
          ];
        },
        body: Builder(
          builder: (BuildContext context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                topic
                    .when(
                      loading: () => SizedBox(
                        height: Get.height * 0.5,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      error: (error, stackTrace) => Text('Error: $error'),
                      data: (topic) => TopicQuizzes(topic.quizzes),
                    )
                    .sliverBox,
              ],
            );
          },
        ),
      ),
    );
  }
}
