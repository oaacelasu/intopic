import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';

abstract class IQuizRepository {
  Future<Either<Failure, List<Quiz>>> getTopQuizzes();

  Future<Either<Failure, Unit>> submitQuiz(Quiz quiz, User user);

  Future<Either<Failure, Quiz>> getQuizDetail(String quizId);
}
