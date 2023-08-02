import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/app_error.dart';
import 'package:intopic/features/home/presentation/widgets/quiz_submission_card.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';

class InsightsScreen extends HookConsumerWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final submissionsAsync = ref.watch(quizSubmissionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.insights),
      ),
      body: submissionsAsync.maybeWhen(orElse: () => const CircularProgressIndicator(), data: (submissions) {
        submissions.sort((a, b) => b.submittedAt.compareTo(a.submittedAt));
        if(submissions.isEmpty) {
          return Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(child: AppError(title: context.tr.noSubmissionsYet)),),
          );
        }

        final uniqueQuizzes = submissions.map((e) => e.quizId).toSet().toList();

        return ListView.builder(
          itemCount: uniqueQuizzes.length,
          itemBuilder: (context, index) {
            final submission = submissions.firstWhere((element) => element.quizId == uniqueQuizzes[index]);
            final score = submission.getScore();
            return QuizSubmissionCard(submission: submission, score: score, submissions: submissions.where((element) => element.quizId == submission.quizId).toList(),);
          },
        );
      },),
    );
  }
}
