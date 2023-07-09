import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
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
}
