
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get/get.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma('vm:entry-point')
  static Future<void> onNotificationCreatedMethod(ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma('vm:entry-point')
  static Future<void> onNotificationDisplayedMethod(ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma('vm:entry-point')
  static Future<void> onDismissActionReceivedMethod(ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    // Your code goes here
    if (receivedAction.payload == null) return;

    final quizId = receivedAction.payload!['quizId'];
    final topicId = receivedAction.payload!['topicId'];

    if (quizId != null && topicId != null) {
      await Get.toNamed<void>(AppRoutes.quiz, arguments: {'quiz': Quiz.empty(id: quizId), 'topic': Topic.empty(id: topicId)});
    }

  }
}
