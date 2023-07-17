import 'package:flutter/material.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final logoAsset = Image.asset('assets/images/books.png', height: AppDimens.xxlg);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logoAsset,
        const SizedBox(width: AppDimens.sm),
        Text(
          context.tr.appName,
          style: context.headlineLarge.extraBold.withColor(context.primaryColor),
        ),
      ],
    );
  }
}
