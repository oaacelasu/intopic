import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_dto.dart';

part 'quiz_dto.freezed.dart';
part 'quiz_dto.g.dart';

@freezed

/// QuizDto class is the data transfer object for [Quiz] entity
class QuizDto with _$QuizDto {

  /// Default constructor for the [QuizDto] class
  factory QuizDto({
    required String? id,
    required String? topicId,
    required String? userId,
    required String? title,
    required String? imageURL,
    required String? quizAccessFromTime,
    required String? quizAccessToTime,
    required bool? isQuizActive,
    required List<QuestionDto>? questions,
  }) = _QuizDto;


  /// Converts [Quiz] to [QuizDto]
  factory QuizDto.fromDomain(Quiz _) {
    return QuizDto(
      id: _.id,
      topicId: _.topicId,
      userId: _.userId,
      title: _.title.getOrEmpty(),
      imageURL: _.imageURL,
      quizAccessFromTime: _.quizAccessFromTime?.toIso8601String(),
      quizAccessToTime: _.quizAccessToTime?.toIso8601String(),
      isQuizActive: _.isQuizActive,
      questions: _.questions.map((e) => QuestionDto.fromDomain(e)).toList(),
    );
  }


  /// Creates [QuizDto] from json
  factory QuizDto.fromJson(Map<String, dynamic> json) => _$QuizDtoFromJson(json);
}


/// Extension method to convert from [QuizDto] to [Quiz]
extension QuizDtoX on QuizDto {

  /// Converts [QuizDto] to [Quiz]
  Quiz toDomain() {
    return Quiz(
      id: id ?? '',
      topicId: topicId ?? '',
      userId: userId ?? '',
      title: Name(title),
      imageURL: imageURL ?? '',
      quizAccessFromTime: DateTime.tryParse(quizAccessFromTime ?? ''),
      quizAccessToTime: DateTime.tryParse(quizAccessToTime ?? ''),
      isQuizActive: isQuizActive ?? false,
      questions: questions?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
