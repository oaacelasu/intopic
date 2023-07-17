import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';

part 'topic_dto.freezed.dart';

part 'topic_dto.g.dart';

@freezed

/// TopicDto class is the data transfer object for [Topic] entity

class TopicDto with _$TopicDto {

  /// Default constructor for the [TopicDto] class
  factory TopicDto({ @JsonKey(name: '_id') required String? id,
    required String? userId,
    required String? title,
    required String? imageURL,
    required String? description,
    required int? noOfQuizzesAvailable,
    required List<QuizDto>? quizzes,
  }) = _TopicDto;


  /// Converts [Topic] to [TopicDto]

  factory TopicDto.fromDomain(Topic _) {
    return TopicDto(
      id: _.id,
      userId: _.userId,
      title: _.title.getOrEmpty(),
      imageURL: _.imageURL,
      description: _.description,
      noOfQuizzesAvailable: _.noOfQuizzesAvailable,
      quizzes: _.quizzes.map(QuizDto.fromDomain).toList(),
    );
  }


  /// Creates [TopicDto] from json
  factory TopicDto.fromJson(Map<String, dynamic> json) => _$TopicDtoFromJson(json);
}


/// Extension method to convert from [TopicDto] to [Topic]
extension TopicDtoX on TopicDto {

  /// Converts [TopicDto] to [Topic]
  Topic toDomain() {
    return Topic(
      id: id ?? '',
      userId: userId ?? '',
      title: Name(title),
      imageURL: imageURL ?? '',
      description: description ?? '',
      noOfQuizzesAvailable: noOfQuizzesAvailable ?? 0,
      quizzes: quizzes?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
