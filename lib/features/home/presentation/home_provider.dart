import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/home/application/home_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class HomeFilter extends _$HomeFilter {
  @override
  String build() => '';

  void changeQuery(String value) {
    state = value;
  }
}

@riverpod
Future<List<Quiz>> topQuizzes(TopQuizzesRef ref) async {
  final topQuizzes = (await ref.watch(homeStateNotifierProvider.future)).topQuizzes;

  return topQuizzes;
}

@riverpod
Future<List<Topic>> topics(TopicsRef ref) async {
  final topics = (await ref.watch(homeStateNotifierProvider.future)).topics;

  return topics;
}

@riverpod
Future<List<Quiz>> filteredTopQuizzes(FilteredTopQuizzesRef ref) async {
  final filter = ref.watch(homeFilterProvider);
  final topQuizzes = await ref.watch(topQuizzesProvider.future);
  if (filter.length <= 2) return topQuizzes;

  return topQuizzes.where((quiz) => quiz.title.matches(filter)).toList();
}

@riverpod
Future<List<Topic>> filteredTopics(FilteredTopicsRef ref) async {
  final filter = ref.watch(homeFilterProvider);
  final topics = await ref.watch(topicsProvider.future);
  if (filter.length <= 1) return topics;

  return topics.where((topic) => topic.title.matches(filter)).toList();
}

@riverpod
Option<User> user(UserRef ref) {
  final auth = ref.watch(authStateNotifierProvider);
  return auth.maybeWhen(
    authenticated: (user, _) => some(user),
    orElse: none,
  );
}

@riverpod
Quiz currentTopQuiz(CurrentTopQuizRef ref) => const Quiz.empty();
