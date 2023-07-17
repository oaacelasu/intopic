import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_type.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

part 'question_dto.freezed.dart';

part 'question_dto.g.dart';

@freezed

/// QuestionDto class is the data transfer object for [Quiz] entity

class QuestionDto with _$QuestionDto {

  /// Default constructor for the [QuestionDto] class
  factory QuestionDto({
    required String? id,
    required String? quizId,
    required String? topicId,
    required String? questionType,
    required String? title,
    required String? question,
    required List<String>? options,
    required String? correctAnswer,
  }) = _QuestionDto;


  /// Converts [Quiz] to [QuestionDto]
  factory QuestionDto.fromDomain(Question _) {
    return QuestionDto(
      id: _.id,
      quizId: _.quizId,
      topicId: _.topicId,
      questionType: _.questionType.toString(),
      title: _.title,
      question: _.question,
      options: _.options,
      correctAnswer: _.correctAnswer,
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
      title: title ?? '',
      question: question ?? '',
      options: options ?? [],
      correctAnswer: correctAnswer ?? '',
    );
  }
}
