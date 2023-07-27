import 'package:intopic/features/quizzes/infrastructure/dtos/question_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto.dart';
import 'package:isar/isar.dart' hide Name;

part 'quiz_dto_isar.g.dart';

@collection
class QuizDtoIsar {
  QuizDtoIsar(this.id, this.quiz);

  final Id id;
  final QuizDto quiz;
}
