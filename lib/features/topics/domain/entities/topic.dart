import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';

part 'topic.freezed.dart';

@freezed

/// Topic class is the entity for [TopicDto] data transfer object
class Topic with _$Topic {

  /// Default constructor for the [Topic] class
  const factory Topic(
      {required String id,
      required String userId,
      required Name title,
      required String imageURL,
      required String description,
      required int noOfQuizzesAvailable,}) = _Topic;


  /// Empty constructor for the [Topic] class
  const factory Topic.empty(
      {@Default('') String id,
      @Default('') String userId,
      @Default(Name.empty()) Name title,
      @Default('') String imageURL,
      @Default('') String description,
      @Default(0) int noOfQuizzesAvailable}) = _TopicEmpty;

  const Topic._();


  /// Converts [Topic] to [TopicDto]
  bool isValid() {
    return id.isNotEmpty &&
        userId.isNotEmpty &&
        title.isValid &&
        imageURL.isNotEmpty &&
        description.isNotEmpty &&
        noOfQuizzesAvailable > 0;
  }
}
