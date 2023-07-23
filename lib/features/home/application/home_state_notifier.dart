import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_state.dart';
part 'home_state_notifier.freezed.dart';
part 'home_state_notifier.g.dart';

@riverpod
class HomeStateNotifier extends _$HomeStateNotifier {
  @override
  Future<HomeState> build() async {
    final topics = await _getTopics();
    final topQuizzes = await _getTopQuizzes();

    return const HomeState.initial().copyWith(
      topics: topics,
      topQuizzes: topQuizzes,
    );
  }

  Future<List<Topic>> _getTopics() async {
    final failureOrSuccess = await ref.read(topicRepositoryProvider).getTopics();
    return failureOrSuccess.fold(
      (l) {
        if (l == const Failure.unauthorized()) {
          const AlertError('Token expired. Please login again.');
          ref.read(authStateNotifierProvider.notifier).signOut();
        }
        return [];
      },
      (r) => r,
    );
  }

  Future<List<Quiz>> _getTopQuizzes() async {
    final failureOrSuccess = await ref.read(quizRepositoryProvider).getTopQuizzes();
    return failureOrSuccess.fold(
      (l) {
        if (l == const Failure.unauthorized()) {
          const AlertError('Token expired. Please login again.');
          ref.read(authStateNotifierProvider.notifier).signOut();
        }
        return [];
      },
      (r) => r,
    );
  }
}
