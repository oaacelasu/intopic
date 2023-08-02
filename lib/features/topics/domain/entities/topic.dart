import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

part 'topic.freezed.dart';

@freezed

/// Topic class is the entity for dto

class Topic with _$Topic {

  /// Default constructor for the [Topic] class
  const factory Topic({required String id,
    required String userId,
    required Name title,
    required String imageURL,
    required String description,
    required int noOfQuizzesAvailable,
    required List<Quiz> quizzes,
    required DateTime? createdAt,
  }) = _Topic;


  /// Empty constructor for the [Topic] class
  const factory Topic.empty({@Default('') String id,
    @Default('') String userId,
    @Default(Name.empty()) Name title,
    @Default('') String imageURL,
    @Default('') String description,
    @Default(0) int noOfQuizzesAvailable,
    @Default([]) List<Quiz> quizzes,
    @Default(null) DateTime? createdAt,
  }) = _TopicEmpty;

  const Topic._();


  /// Converts [Topic] to its dto
  bool isValid() {
    return id.isNotEmpty &&
        userId.isNotEmpty &&
        title.isValid &&
        imageURL.isNotEmpty &&
        description.isNotEmpty &&
        noOfQuizzesAvailable > 0;
  }
}
