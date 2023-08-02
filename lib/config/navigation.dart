import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/features/auth/presentation/screens/login_screen.dart';
import 'package:intopic/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:intopic/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:intopic/features/auth/presentation/screens/welcome_screen.dart';
import 'package:intopic/features/common/presentation/screens/splash_screen.dart';
import 'package:intopic/features/home/presentation/screens/home_screen.dart';
import 'package:intopic/features/home/presentation/screens/insights_screen.dart';
import 'package:intopic/features/home/presentation/screens/settings_screen.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz_submission.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/screens/quiz_list_screen.dart';
import 'package:intopic/features/quizzes/presentation/screens/quiz_screen.dart';
import 'package:intopic/features/quizzes/presentation/screens/quiz_submission_confirmation.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:intopic/features/topics/presentation/screens/topic_detail_screen.dart';
import 'package:intopic/features/topics/presentation/screens/topics_list_screen.dart';
import 'package:intopic/features/topics/presentation/topics_provider.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String topics = '/topics';
  static const String topicDetail = '/topicDetail';
  static const String quiz = '/quiz';
  static const String quizList = '/quizList';
  static const String confirmation = '/confirmation';
  static const String settings = '/settings';
  static const String insights = '/insights';
}

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<SplashScreen>(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage<OnBoardingScreen>(
      name: AppRoutes.onboarding,
      page: () => const OnBoardingScreen(),
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage<WelcomeScreen>(
      name: AppRoutes.welcome,
      page: () => const WelcomeScreen(),
      showCupertinoParallax: false,
      transition: Transition.downToUp,
    ),
    GetPage<LoginScreen>(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage<SignUpScreen>(
      name: AppRoutes.signup,
      page: () => const SignUpScreen(),
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage<HomeScreen>(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      preventDuplicates: false,
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.topics,
      page: () => const TopicsScreen(),
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.topicDetail,
      page: () => ProviderScope(
        overrides: [
          currentTopicProvider.overrideWithValue(Get.arguments as Topic),
        ],
        child: const TopicDetailScreen(),
      ),
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage(name: AppRoutes.quizList, page: () => const QuizListScreen()),
    GetPage(
      name: AppRoutes.quiz,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        final quiz = args['quiz'] as Quiz;
        final topic = args['topic'] as Topic?;
        return ProviderScope(
          overrides: [
            currentQuizProvider.overrideWithValue(quiz),
            if (topic != null) currentTopicProvider.overrideWithValue(topic),
          ],
          child: const QuizScreen(),
        );
      },
      showCupertinoParallax: false,
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.confirmation,
      page: () => ProviderScope(
        overrides: [
          currentQuizSubmissionProvider.overrideWithValue(Get.arguments as QuizSubmission),
        ],
        child: const QuizSubmissionConfirmation(),
      ),
      showCupertinoParallax: false,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.settings,
      page: () => const SettingsScreen(),
      showCupertinoParallax: false,
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: AppRoutes.insights,
      page: () => const InsightsScreen(),
      showCupertinoParallax: false,
      transition: Transition.leftToRight,
    ),
  ];
}
