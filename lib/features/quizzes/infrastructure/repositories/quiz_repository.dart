

import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/question.dart';
import 'package:intopic/features/quizzes/domain/entities/question_type.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/repositories/i_quiz_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class QuizRepository implements IQuizRepository {
  QuizRepository(this.ref);

  final ProviderRef<IQuizRepository> ref;

  @override
  Future<Either<Failure, Quiz>> getQuizDetail(String quizId) async {
    // TODO: implement getQuizDetail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Quiz>>> getTopQuizzes() async {
    return right(
      [
        ...List.generate(2, (i) =>
        Quiz.empty(
          id: i.toString(),
          title: Name('Quiz $i'),
          imageURL: 'https://picsum.photos/200/300',
          quizAccessFromTime: DateTime.now(),
          quizAccessToTime: DateTime.now(),
          isQuizActive: true,
          questions: [
            ...List.generate(8, (j) => Question(
              id: j.toString(),
              quizId: '$i',
              topicId: '1',
              questionType: QuestionType.singleChoice(),
              question: 'What is your name?',
              options: ['A', 'B', 'C', 'D'],
              correctAnswer: 'A',
            )),
          ],
        ),
        ),
      ],
    );
  }

  @override
  Future<Either<Failure, Unit>> submitQuiz(Quiz quiz, User user) async {
    // TODO: implement submitQuiz
    throw UnimplementedError();
  }
}
