import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';
import 'package:intopic/features/topics/presentation/widgets/topic_quizzes.dart';

class TopicDetailScreen extends HookConsumerWidget {
  const TopicDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final baseTopic = Get.arguments as Topic;
    final topic = ref.watch(topicProvider(topicId: baseTopic.id));

    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
              expandedHeight: Get.height * 0.35,
              pinned: true,
              title: Text(baseTopic.title.getOrEmpty()),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  margin: const EdgeInsets.only(top: kTextTabBarHeight),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://img.icons8.com/dusk/64/javascript.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
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
                      data: (topic) => TopicQuizzes(topic.quizzes),)
                  .sliverBox,
            ],
          );
        },
      ),
    ),);
  }
}
