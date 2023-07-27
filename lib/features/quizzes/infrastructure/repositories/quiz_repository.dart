import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/domain/repositories/i_quiz_repository.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/question_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto_isar.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_response_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_submission_dto.dart';
import 'package:intopic/flavors.dart';
import 'package:isar/isar.dart' hide Name;
import 'package:riverpod_annotation/riverpod_annotation.dart';

class QuizRepository implements IQuizRepository {
  QuizRepository(this.ref);

  final ProviderRef<IQuizRepository> ref;

  @override
  Future<Either<Failure, Quiz>> getQuizDetail(String? topicId, String quizId) async {
    Quiz quiz;
    final isar = await ref.watch(isarPod.future);

    final quizDto = await isar.quizDtoIsars.where().idEqualTo(quizId.hashCode).findFirst();

    if (quizDto != null) {
      quiz = quizDto.quiz.toDomain();
    } else {
      final url = Uri.parse('${F.baseUrl}/topics/$topicId/quizzes/$quizId');
      try {
        final response = await http.get(
          url,
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer ${ref.read(authStateNotifierProvider.notifier).token}',
          },
        );

        if (response.statusCode == 200) {
          final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
          var quiz = QuizDto.fromJson(jsonResponse['quiz'] as Map<String, dynamic>).toDomain();
          final questions = (jsonResponse['questions'] as List<dynamic>)
              .map((e) => QuestionDto.fromJson(e as Map<String, dynamic>).toDomain())
              .toList();
          quiz = quiz.copyWith(questions: questions).shuffleAndTakeLimitedQuestions();

          await isar.writeTxn(() async {
            await isar.quizDtoIsars.put(QuizDtoIsar(quizId.hashCode, QuizDto.fromDomain(quiz)));
          });

          return right(quiz);
        } else {
          // If the server did not return a 200 OK response,
          // then throw an exception.
          final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
          if (response.statusCode == 403) {
            return left(const Failure.unauthorized());
          }

          return left(Failure.unprocessableEntity(message: jsonResponse['message'] as String));
        }
      } catch (e, s) {
        debugPrintStack(
          stackTrace: s,
          label: e.toString(),
        );
        return left(Failure.unprocessableEntity(message: e.toString()));
      }
    }
    return right(quiz);
  }

  @override
  Future<Either<Failure, List<Quiz>>> getTopQuizzes() async {
    final isar = await ref.watch(isarPod.future);
    final previousQuizzes = await isar.quizDtoIsars.where().findAll();
    return right(previousQuizzes.map((e) => e.quiz.toDomain()).toList());
  }

  @override
  Future<Either<Failure, Unit>> saveQuizResponse(QuizResponse quizResponse) async {
    final isar = await ref.watch(isarPod.future);
    await isar.writeTxn(() async {
      await isar.quizResponseDtos.put(
        QuizResponseDto.fromDomain(quizResponse),
      );
    });
    return right(unit);
  }

  @override
  Future<Either<Failure, QuizSubmission>> saveQuizSubmission(QuizState state) async {
    final isar = await ref.watch(isarPod.future);
    final quizSubmission = QuizSubmission(
      id: Isar.autoIncrement,
      quizId: state.quiz.id,
      responses: state.quizResponse.responses,
      questions: state.quiz.questions,
      submittedAt: DateTime.now().millisecondsSinceEpoch,
    );
    await isar.writeTxn(() async {
      await isar.quizSubmissionDtos.put(
        QuizSubmissionDto.fromDomain(quizSubmission),
      );
      await isar.quizResponseDtos.delete(state.quizResponse.id);
      await isar.quizDtoIsars.delete(state.quiz.id.hashCode);
    });
    return right(quizSubmission);
  }
}
