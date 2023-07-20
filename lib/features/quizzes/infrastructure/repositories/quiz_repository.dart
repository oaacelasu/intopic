
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/quizzes/application/quiz_state_notifier.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_response.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/domain/repositories/i_quiz_repository.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_response_dto.dart';
import 'package:intopic/features/quizzes/infrastructure/dtos/quiz_submission_dto.dart';
import 'package:isar/isar.dart' hide Name;
import 'package:riverpod_annotation/riverpod_annotation.dart';

class QuizRepository implements IQuizRepository {
  QuizRepository(this.ref);

  final ProviderRef<IQuizRepository> ref;

  @override
  Future<Either<Failure, Quiz>> getQuizDetail(String quizId) async {
    Quiz quiz;
    final isar = await ref.watch(isarPod.future);

    final quizDto = await isar.quizDtoIsars.where().idEqualTo(quizId.hashCode).findFirst();


    if(quizDto != null) {
      quiz = quizDto.quiz.toDomain();
    } else {
      final data = await DefaultAssetBundle.of(Get.context!).loadString('assets/mocks/quiz.json');
      final jsonResult = jsonDecode(data) as Map<String, dynamic>;
      quiz = QuizDto.fromJson(jsonResult).toDomain().shuffleAndTakeLimitedQuestions();
      await isar.writeTxn(() async {
        await isar.quizDtoIsars.put(QuizDtoIsar(quizId.hashCode, QuizDto.fromDomain(quiz)));
      });
    }
    return right(quiz);
  }

  @override
  Future<Either<Failure, List<Quiz>>> getTopQuizzes() async {
    final data = await DefaultAssetBundle.of(Get.context!).loadString('assets/mocks/quiz.json');
    final jsonResult = jsonDecode(data) as Map<String, dynamic>;
    return right(
      [
        QuizDto.fromJson(jsonResult).toDomain()
      ],
    );
  }

  @override
  Future<Either<Failure, Unit>> saveQuizResponse(QuizResponse quizResponse) async {
    final isar = await ref.watch(isarPod.future);
    await isar.writeTxn(() async {
      await isar.quizResponseDtos.put(
          QuizResponseDto.fromDomain(quizResponse),);
    });
    return right(unit);
  }

  @override
  Future<Either<Failure, QuizSubmission>> saveQuizSubmission(QuizState state) async {
    final isar = await ref.watch(isarPod.future);
    final quizSubmission = QuizSubmission(
      id: Isar.autoIncrement, quizId: state.quiz.id,
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
