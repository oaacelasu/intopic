import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:intopic/features/auth/infrastructure/repositories/auth_repository.dart';
import 'package:intopic/features/common/domain/repositories/i_local_repository.dart';
import 'package:intopic/features/common/infrastructure/repositories/local_repository.dart';
import 'package:intopic/features/home/domain/repositories/i_home_repository.dart';
import 'package:intopic/features/home/infrastructure/repositories/home_repository.dart';
import 'package:intopic/features/quizzes/domain/repositories/i_quiz_repository.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto_isar.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_response_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_submission_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/repositories/quiz_repository.dart';
import 'package:intopic/features/topics/domain/repositories/i_topic_repository.dart';
import 'package:intopic/features/topics/infrastructure/repositories/topic_repository.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

/// Exposes [SharedPreferences] instance
@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) async {
  return SharedPreferences.getInstance();
}

/// Repository providers
@Riverpod(keepAlive: true)
IAuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository(ref);
}

@Riverpod(keepAlive: true)
ILocalRepository localRepository(LocalRepositoryRef ref) {
  return LocalRepository(ref);
}

@Riverpod(keepAlive: true)
ITopicRepository topicRepository(TopicRepositoryRef ref) {
  return TopicRepository(ref);
}

@Riverpod(keepAlive: true)
IHomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepository(ref);
}

@Riverpod(keepAlive: true)
IQuizRepository quizRepository(QuizRepositoryRef ref) {
  return QuizRepository(ref);
}

/// Provides a [ValueNotifier] to the app router to redirect on auth state change
final authStateListenable = ValueNotifier<bool>(false);

final isarPod = FutureProvider((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open([QuizResponseDtoSchema, QuizSubmissionDtoSchema, QuizDtoIsarSchema], directory: dir.path);
});

/// Triggered from bootstrap() to complete futures
Future<void> initializeProviders(ProviderContainer container) async {
  /// Core
  await container.read(sharedPreferencesProvider.future);
  container
    ..read(authStateNotifierProvider)
    ..read(localRepositoryProvider);
}
