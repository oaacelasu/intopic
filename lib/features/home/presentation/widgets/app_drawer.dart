import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentIndex = useState(0);

    return NavigationDrawer(
      children: const [
        NavigationDrawerDestination(icon: Icon(Icons.home), label: Text('Home')),
        NavigationDrawerDestination(icon: Icon(Icons.settings), label: Text('Settings')),
        NavigationDrawerDestination(icon: Icon(Icons.person), label: Text('Profile')),
        NavigationDrawerDestination(icon: Icon(Icons.logout), label: Text('Logout')),
      ],
      onDestinationSelected: (index) async {
        switch (index) {
          case 0:
            currentIndex.value = 0;
            Get.back<void>();
          case 1:
            final isar = await ref.read(isarPod.future);
            await isar.writeTxn(() async {
               return isar.clear();
            });
          case 2:
            //Get.toNamed("/profile");
            break;
          case 3:
            await ref.read(authStateNotifierProvider.notifier).signOut();
        }
      },
    );
  }
}
