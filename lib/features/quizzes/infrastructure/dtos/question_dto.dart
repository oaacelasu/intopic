import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_type.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:isar/isar.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

@freezed

/// QuestionDto class is the data transfer object for [Quiz] entity

@Embedded(ignore: {'copyWith'})
class QuestionDto with _$QuestionDto {
  /// Default constructor for the [QuestionDto] class
  factory QuestionDto({
    @JsonKey(name: '_id') String? id,
    String? quizId,
    String? topicId,
    String? questionType,
    String? question,
    List<String>? options,
    String? answer,
  }) = _QuestionDto;

  const QuestionDto._();

  /// Converts [Quiz] to [QuestionDto]
  factory QuestionDto.fromDomain(Question _) {
    return QuestionDto(
      id: _.id,
      quizId: _.quizId,
      topicId: _.topicId,
      questionType: _.questionType.toRaw(),
      question: _.question,
      options: _.options,
      answer: _.answer,
    );
  }

  /// Creates [QuestionDto] from json
  factory QuestionDto.fromJson(Map<String, dynamic> json) => _$QuestionDtoFromJson(json);
}

/// Extension method to convert from [QuestionDto] to [Question]
extension QuestionDtoX on QuestionDto {
  /// Converts [QuestionDto] to [Question]
  Question toDomain() {
    return Question(
      id: id ?? '',
      quizId: quizId ?? '',
      topicId: topicId ?? '',
      questionType: QuestionType.parse(questionType ?? ''),
      question: question ?? '',
      options: options ?? [],
      answer: answer ?? '',
    );
  }
}
