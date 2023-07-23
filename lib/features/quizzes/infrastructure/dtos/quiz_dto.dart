import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_dto.dart';
import 'package:isar/isar.dart' hide Name;

part 'quiz_dto.freezed.dart';
part 'quiz_dto.g.dart';

@freezed

/// QuizDto class is the data transfer object for [Quiz] entity @Embedded(ignore: {'copyWith'})
class QuizDto with _$QuizDto {
  /// Default constructor for the [QuizDto] class
  factory QuizDto({
    @JsonKey(name: '_id') String? id,
    String? topicId,
    String? userId,
    String? title,
    String? description,
    String? imageURL,
    String? quizAccessFromTime,
    String? quizAccessToTime,
    bool? isQuizActive,
    int? totalQuestions,
    List<QuestionDto>? questions,
  }) = _QuizDto;

  const QuizDto._();

  /// Converts [Quiz] to [QuizDto]
  factory QuizDto.fromDomain(Quiz _) {
    return QuizDto(
      id: _.id,
      topicId: _.topicId,
      userId: _.userId,
      title: _.title.getOrEmpty(),
      description: _.description,
      imageURL: _.imageURL,
      quizAccessFromTime: _.quizAccessFromTime?.toIso8601String(),
      quizAccessToTime: _.quizAccessToTime?.toIso8601String(),
      isQuizActive: _.isQuizActive,
      totalQuestions: _.totalQuestions,
      questions: _.questions.map(QuestionDto.fromDomain).toList(),
    );
  }

  /// Creates [QuizDto] from json
  factory QuizDto.fromJson(Map<String, dynamic> json) => _$QuizDtoFromJson(json);
}

@collection
class QuizDtoIsar {
  QuizDtoIsar(this.id, this.quiz);

  final Id id;
  final QuizDto quiz;
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
      description: description ?? '',
      imageURL: imageURL ?? '',
      quizAccessFromTime: DateTime.tryParse(quizAccessFromTime ?? ''),
      quizAccessToTime: DateTime.tryParse(quizAccessToTime ?? ''),
      isQuizActive: isQuizActive ?? false,
      totalQuestions: totalQuestions ?? questions?.length ?? 0,
      questions: questions?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
