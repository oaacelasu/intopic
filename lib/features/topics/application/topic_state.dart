part of 'topic_state_notifier.dart';

@freezed
class TopicState with _$TopicState {
  const factory TopicState({
    required Topic topic,
  }) = _TopicState;

  const factory TopicState.initial({
    @Default(Topic.empty()) Topic topic,
  }) = _TopicStateEmpty;
}
