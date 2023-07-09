import 'package:intopic/config/providers.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_state.dart';
part 'home_state_notifier.freezed.dart';
part 'home_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class HomeStateNotifier extends _$HomeStateNotifier {
  @override
  Future<HomeState> build() async {
    final List<Topic> topics = await _getTopics();
    final List<Quiz> topQuizzes = await _getTopQuizzes();

    return HomeState.initial().copyWith(
      topics: topics,
      topQuizzes: topQuizzes,
    );
  }

  Future<List<Topic>> _getTopics() async {
    final failureOrSuccess = await ref.read(topicRepositoryProvider).getTopics();
    return failureOrSuccess.fold((l) => [], (r) => r);
  }

  Future<List<Quiz>> _getTopQuizzes() async {
    final failureOrSuccess = await ref.read(quizRepositoryProvider).getTopQuizzes();
    return failureOrSuccess.fold((l) => [], (r) => r);
  }
}
