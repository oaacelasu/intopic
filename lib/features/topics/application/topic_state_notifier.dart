import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topic_state.dart';
part 'topic_state_notifier.freezed.dart';
part 'topic_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class TopicStateNotifier extends _$TopicStateNotifier {
  @override
  TopicState build() {
    return const TopicState.initial();
  }

  Future<TopicState> loadTopic(String id) async {
    final failureOrSuccess = await ref.read(topicRepositoryProvider).getTopicDetail(id);
    return failureOrSuccess.fold((l) => const TopicState.initial(), (r) => TopicState(topic: r));
  }
}
