import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/widgets/app_logo.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

/// Default app splash screen
class SplashScreen extends HookConsumerWidget {
  /// Default constructor for [SplashScreen]
  const SplashScreen({super.key});

  /// Named route for [SplashScreen]
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.microtask(() {
          /// hide keyboard
          FocusManager.instance.primaryFocus?.unfocus();
        });
        return null;
      },
      [],
    );

    ref.listen(authStateNotifierProvider, (previous, next) {
      next.when(
        initial: () {},
        authenticated: (user, token) {
          Get.offAllNamed<void>(AppRoutes.home);
        },
        unauthenticated: (isFirstLaunch) {
          if (isFirstLaunch) {
            Get.offAllNamed<void>(AppRoutes.onboarding);
          } else {
            Get.offAllNamed<void>(AppRoutes.welcome);
          }
        },
      );
    });

    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: const Scaffold(
        body: Center(child: AppLogo()),
      ),
    );
  }
}
