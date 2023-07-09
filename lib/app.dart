import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/config/router.dart';
import 'package:intopic/config/theme.dart';
import 'package:intopic/flavors.dart';
import 'package:intopic/l10n/app_localizations.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: F.title,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en", "CA"),
      theme: AppTheme(Brightness.light).getThemeData(context),
      darkTheme: AppTheme(Brightness.dark).getThemeData(context),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
