import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/auth/presentation/screens/login_screen.dart';
import 'package:intopic/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:intopic/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:intopic/features/auth/presentation/screens/welcome_screen.dart';
import 'package:intopic/features/common/presentation/screens/error_screen.dart';
import 'package:intopic/features/common/presentation/screens/splash_screen.dart';
import 'package:intopic/features/home/presentation/screens/home_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
// Keep this to `true` if want to know what's going on under the hood
    initialLocation: '/',
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => ErrorScreen(message: state.error.toString()),
    redirect: (ctx, GoRouterState state) {
      final authState = ref.watch(authStateNotifierProvider);

      final areWeLoggingIn = state.location == '/${WelcomeScreen.route}' ||
          state.location == '/${LoginScreen.route}' ||
          state.location == '/${SignUpScreen.route}';

      return authState.when(
        initial: () => '/',
        authenticated: (user, token) => '/${HomeScreen.route}',
        unauthenticated: (isFirstLaunch) {
          if (isFirstLaunch) {
            return '/${OnBoardingScreen.route}';
          }

          if (areWeLoggingIn) {
            return state.location;
          }

          return '/${WelcomeScreen.route}';
        },
      );
    },
    refreshListenable: RouterNotifier(ref),
    routes: [
      GoRoute(
        path: '/home',
        name: HomeScreen.route,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/',
        name: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
            path: OnBoardingScreen.route,
            name: OnBoardingScreen.route,
            builder: (context, state) => const OnBoardingScreen(),
          ),
          GoRoute(
            path: WelcomeScreen.route,
            name: WelcomeScreen.route,
            builder: (context, state) => const WelcomeScreen(),
          ),
          GoRoute(
            path: LoginScreen.route,
            name: LoginScreen.route,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: SignUpScreen.route,
            name: SignUpScreen.route,
            builder: (context, state) => const SignUpScreen(),
          ),
        ],
      ),
    ],
    observers: [
      routeObserver,
    ],
  );
});

/// Route observer to use with RouteAware
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

class RouterNotifier extends ChangeNotifier {

  RouterNotifier(this._ref) {
    _ref.listen<AuthState?>(
      authStateNotifierProvider,
      (_, __) => notifyListeners(),
    );
  }
  final Ref _ref;
}
