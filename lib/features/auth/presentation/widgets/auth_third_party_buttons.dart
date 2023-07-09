import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class AuthThirdPartyButtons extends ConsumerWidget {
  const AuthThirdPartyButtons({Key? key, this.isLogin = true}) : super(key: key);

  final bool isLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final googleAction = isLogin ? () {
      ref.read(authStateNotifierProvider.notifier).signInWithGoogle();
    } : () {
      ref.read(authStateNotifierProvider.notifier).signUpWithGoogle();
    };
    final facebookAction = isLogin ? () {} : () {};
    final dividerText = isLogin ? context.tr.orLoginWith : context.tr.orSignupWith;

    return Column(
      children: [
        Stack(
          children: [
            const Divider(),
            Center(
              child: ColoredBox(
                color: context.backgroundColor,
                child: Text(
                  dividerText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ).paddingSymmetric(horizontal: AppDimens.lg),
              ),
            ),
          ],
        ).marginOnly(bottom: AppDimens.xxlg),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: OutlinedButton.icon(
                    icon: FaIcon(FontAwesomeIcons.google, color: context.primaryColor, size: AppDimens.xlg),
                    onPressed: googleAction,
                    label: Text(context.tr.google))),
            const SizedBox(width: AppDimens.lg),
            Expanded(
                child: OutlinedButton.icon(
                    icon: FaIcon(FontAwesomeIcons.facebook, color: context.primaryColor, size: AppDimens.xlg),
                    onPressed: facebookAction,
                    label: Text(context.tr.facebook))),
          ],
        ),
      ],
    );
  }
}
