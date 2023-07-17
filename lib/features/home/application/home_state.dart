part of 'home_state_notifier.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Topic> topics,
    required List<Quiz> topQuizzes,
  }) = _HomeState;

  const factory HomeState.initial({
    @Default(<Topic>[]) List<Topic> topics,
    @Default(<Quiz>[]) List<Quiz> topQuizzes,
  }) = _HomeStateInitial;
}
