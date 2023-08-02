import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';

class QuizSubmissionCard extends StatelessWidget {
  const QuizSubmissionCard({
    required this.submission,
    required this.score,
    required this.submissions,
    super.key,
  });

  final QuizSubmission submission;
  final List<QuizSubmission> submissions;
  final double score;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppDimens.xs,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.md)),
      margin: const EdgeInsets.symmetric(horizontal: AppDimens.lg, vertical: AppDimens.md),
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz: ${submission.quizName}',
              style: context.titleLarge.bold,
            ),
            const SizedBox(height: AppDimens.sm),
            Text(
              'Submitted at: ${DateTime.fromMillisecondsSinceEpoch(submission.submittedAt).prettyString()}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: AppDimens.lg),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Score: ${score.toStringAsFixed(2)}%',
                    style: context.titleMedium.bold,
                  ),
                ),
                FilledButton(
                  onPressed: () async {
                    await Get.bottomSheet<void>(
                      _SubmissionsHistoryDialog(submission: submission, submissions: submissions),
                    );
                  },
                  child: const Text('History'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SubmissionsHistoryDialog extends StatelessWidget {
  const _SubmissionsHistoryDialog({
    required this.submission, required this.submissions,
  });

  final QuizSubmission submission;
  final List<QuizSubmission> submissions;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.surfaceColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppDimens.md),
              topRight: Radius.circular(AppDimens.md),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppDimens.lg),
                child: Text(
                  'Quiz: ${submission.quizName}',
                  style: context.titleLarge.bold,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: submissions.length,
                itemBuilder: (context, index) {
                  final submission = submissions[index];
                  final score = submission.getScore();
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Submitted at:',
                          style: context.bodyLarge.regular,
                        ),
                        Text(
                          DateTime.fromMillisecondsSinceEpoch(submission.submittedAt).prettyString(),
                          style: context.titleMedium.bold,
                        ),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Score: ${score.toStringAsFixed(2)}%',
                          style: context.bodyLarge.regular,
                        ),
                        Text(
                          '${score.toStringAsFixed(2)}%',
                          style: context.titleLarge.bold,
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ],
          ),
        ),
        const CloseButton()
      ],
    );
  }
}
