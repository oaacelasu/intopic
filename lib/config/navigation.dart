import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/features/auth/presentation/screens/login_screen.dart';
import 'package:intopic/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:intopic/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:intopic/features/auth/presentation/screens/welcome_screen.dart';
import 'package:intopic/features/common/presentation/screens/splash_screen.dart';
import 'package:intopic/features/home/presentation/screens/home_screen.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/quizzes/presentation/quizzes_provider.dart';
import 'package:intopic/features/quizzes/presentation/screens/quiz_list_screen.dart';
import 'package:intopic/features/quizzes/presentation/screens/quiz_screen.dart';
import 'package:intopic/features/topics/presentation/screens/topic_detail_screen.dart';
import 'package:intopic/features/topics/presentation/screens/topics_list_screen.dart';

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
}

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<SplashScreen>(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
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
    ),
    GetPage(name: AppRoutes.topics, page: () => const TopicsScreen()),
    GetPage(name: AppRoutes.topicDetail, page: () => const TopicDetailScreen()),
    GetPage(name: AppRoutes.quizList, page: () => const QuizListScreen()),
    GetPage(name: AppRoutes.quiz, page: () => ProviderScope(
        overrides: [
          currentQuizProvider.overrideWithValue(Get.arguments as Quiz),
        ],
        child: const QuizScreen(),),),
  ];
}
