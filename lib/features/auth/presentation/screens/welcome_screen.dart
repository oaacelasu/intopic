import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/auth/presentation/screens/login_screen.dart';
import 'package:intopic/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:intopic/features/auth/presentation/widgets/text_with_lisk.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String route = 'welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: AppDimens.xxlg),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/welcome.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: AppDimens.sm),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(context.tr.letsGetStarted,
                                style: context.displayMedium.bold.withColor(context.onPrimaryColor)),
                            const SizedBox(height: AppDimens.md),
                            Text(context.tr.welcomeDescription,
                                style: context.titleLarge.light.withColor(context.onPrimaryColor)),
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SecondaryBtn(
                    label: context.tr.start,
                    onPressed: () => Get.toNamed<void>(AppRoutes.signup),
                  ),
                  const SizedBox(height: AppDimens.lg),
                  TextWithLink(
                    text: context.tr.alreadyHaveAccount,
                    link: context.tr.login,
                    onPressed: () => Get.toNamed<void>(AppRoutes.login),
                    color: context.onPrimaryColor,
                  ),
                ],
              )
            ],
          ).marginAll(AppDimens.lg),
        ));
  }
}
