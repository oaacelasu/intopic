import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';

part 'quiz.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String topicId,
    required String userId,
    required Name title,
    required String imageURL,
    required DateTime? quizAccessFromTime,
    required DateTime? quizAccessToTime,
    required bool isQuizActive,
    required List<Question> questions,
  }) = _Quiz;

  const factory Quiz.empty({
    @Default('') String id,
    @Default('') String topicId,
    @Default('') String userId,
    @Default(Name.empty()) Name title,
    @Default('') String imageURL,
    @Default(null) DateTime? quizAccessFromTime,
    @Default(null) DateTime? quizAccessToTime,
    @Default(false) bool isQuizActive,
    @Default([]) List<Question> questions,
  }) = _QuizEmpty;

  const Quiz._();

  bool isValid() {
    return true;
  }
}
