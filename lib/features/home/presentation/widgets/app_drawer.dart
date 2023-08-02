import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(
      authStateNotifierProvider.select(
        (value) => value.maybeWhen(
          orElse: () => '',
          authenticated: (user, _) => user.name.getOrEmpty(),
        ),
      ),
    );

    final userEmail = ref.watch(
      authStateNotifierProvider.select(
        (value) => value.maybeWhen(
          orElse: () => '',
          authenticated: (user, _) => user.email.getOrEmpty(),
        ),
      ),
    );

    final currentIndex = useState(0);

    return NavigationDrawer(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(userName, style: context.titleLarge.withColor(context.onPrimaryColor)),
          accountEmail: Text(userEmail, style: context.bodyMedium.withColor(context.onPrimaryColor)),
          currentAccountPicture: const CircleAvatar(
            child: FlutterLogo(),
          ),
        ),
        NavigationDrawerDestination(icon: const Icon(Icons.home), label: Text(context.tr.home)),
        NavigationDrawerDestination(icon: const Icon(Icons.settings), label: Text(context.tr.settings)),
        NavigationDrawerDestination(icon: const Icon(Icons.insights), label: Text(context.tr.insights)),
        NavigationDrawerDestination(icon: const Icon(Icons.logout), label: Text(context.tr.logout)),
      ],
      onDestinationSelected: (index) async {
        switch (index) {
          case 0:
            currentIndex.value = 0;
            Get.back<void>();
          case 1:
            Get.close(1);
            await Get.toNamed<void>(AppRoutes.settings);
          case 2:
            Get.close(1);
            await Get.toNamed<void>(AppRoutes.insights);
          case 3:
            await ref.read(authStateNotifierProvider.notifier).signOut();
        }
      },
    );
  }
}
