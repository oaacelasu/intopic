import 'package:flutter/material.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class AppLogoSmall extends StatelessWidget {
  const AppLogoSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/books.png", height: AppDimens.xlg),
        SizedBox(width: AppDimens.sm),
        Text(
          context.tr.appName,
          style: context.headlineSmall.bold.withColor(context.primaryColor),
        ),
      ],
    );
  }
}
