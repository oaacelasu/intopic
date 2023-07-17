import 'package:intopic/features/topics/application/topic_state_notifier.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topics_provider.g.dart';

@riverpod
Future<Topic> topic(TopicRef ref, {required String topicId}) async {
  final state = await ref.read(topicStateNotifierProvider.notifier).loadTopic(topicId);
  return state.topic;
}

@riverpod
Topic currentTopic(CurrentTopicRef ref) => const Topic.empty();
