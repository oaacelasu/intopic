import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_state.dart';
part 'quiz_state_notifier.freezed.dart';
part 'quiz_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class QuizStateNotifier extends _$QuizStateNotifier {
  @override
  QuizState build() {
    return const QuizState.initial();
  }
}
