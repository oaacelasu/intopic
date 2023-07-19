import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';

abstract class IQuizRepository {
  Future<Either<Failure, List<Quiz>>> getTopQuizzes();

  Future<Either<Failure, Quiz>> getQuizDetail(String quizId);

  Future<Either<Failure, Unit>> saveQuizResponse(QuizResponse quizResponse);

  Future<Either<Failure, QuizSubmission>> saveQuizSubmission(QuizState state);
}
