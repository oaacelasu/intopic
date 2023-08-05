part of 'home_state_notifier.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Topic> topics,
    required List<Quiz> topQuizzes,
    required int noOfQuizzesAvailable,
    required int noOfTopicsAvailable,
  }) = _HomeState;

  const factory HomeState.initial({
    @Default(<Topic>[]) List<Topic> topics,
    @Default(<Quiz>[]) List<Quiz> topQuizzes,
    @Default(0) int noOfQuizzesAvailable,
    @Default(0) int noOfTopicsAvailable,
  }) = _HomeStateInitial;
}
