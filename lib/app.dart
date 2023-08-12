import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/config/notification_controller.dart';
import 'package:intopic/config/theme.dart';
import 'package:intopic/flavors.dart';
import 'package:intopic/l10n/app_localizations.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

/// App widget
class App extends HookConsumerWidget {
  /// App constructor
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      AwesomeNotifications().setListeners(
          onActionReceivedMethod: NotificationController.onActionReceivedMethod,
          onNotificationCreatedMethod: NotificationController.onNotificationCreatedMethod,
          onNotificationDisplayedMethod: NotificationController.onNotificationDisplayedMethod,
          onDismissActionReceivedMethod: NotificationController.onDismissActionReceivedMethod,);
      return null;
    }, [],);

    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: F.title,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'CA'),
      theme: AppTheme(Brightness.light).getThemeData(context),
      darkTheme: AppTheme(Brightness.dark).getThemeData(context),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
        Locale('fr'), // French
        Locale('de'), // German
        Locale('ko'), // Korean
      ],
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
