import 'package:intopic/features/auth/domain/entities/tutorial_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
List<TutorialItem> tutorialItems(TutorialItemsRef ref) {
  return [
    const TutorialItem(
      title: 'Need to study or review content?',
      description:
          "Whether you're preparing for exams or need to brush up on a subject, our app provides the resources you need to study effectively. Discover a wealth of educational content and resources at your fingertips",
      image: 'assets/images/onboarding_0.png',
    ),
    const TutorialItem(
      title: 'Overwhelmed by information and due dates?',
      description:
          'Don’t let the sheer amount of information and deadlines stress you out. Our app helps you organize your study materials, set reminders for important dates, and stay on top of your tasks. Stay organized and focused with ease.',
      image: 'assets/images/onboarding_1.png',
    ),
    const TutorialItem(
      title: 'Enhance your learning experience with AI.',
      description:
          'Our app leverages the power of AI to personalize your learning journey. It adapts to your preferences, identifies knowledge gaps, and suggests relevant study materials. Experience a tailored and efficient learning experience like never before.',
      image: 'assets/images/onboarding_2.png',
    ),
    const TutorialItem(
      title: 'Create quizzes directly from the website',
      description:
          'Take charge of your learning by creating your own quizzes. Our app allows you to generate quizzes directly from the website, incorporating your preferred topics and study materials. Share them with others and test your knowledge',
      image: 'assets/images/onboarding_3.png',
    ),
    const TutorialItem(
      title: 'Study anytime, anywhere',
      description:
          'Access your topics and quizzes anytime, anywhere with our mobile app. Carry your study materials in your pocket, allowing you to learn on the go and make the most of your time. Seamlessly switch between devices and continue your progress',
      image: 'assets/images/onboarding_4.png',
    ),
    const TutorialItem(
      title: 'Start your journey to success',
      description:
          'Begin your path to academic success with our app. Gain confidence, expand your knowledge, and unlock your potential. Embrace a more productive and fulfilling study life starting today',
      image: 'assets/images/onboarding_5.png',
    ),
  ];
}
