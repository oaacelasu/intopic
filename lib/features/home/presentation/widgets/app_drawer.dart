import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String userEmail = ref.watch(
        userProvider.select((value) => value.fold(() => "", (t) => t.email.getOrEmpty())));

    final currentIndex = useState(0);


    return NavigationDrawer(
      children: [
        NavigationDrawerDestination(icon: Icon(Icons.home), label: Text("Home")),
        NavigationDrawerDestination(icon: Icon(Icons.settings), label: Text("Settings")),
        NavigationDrawerDestination(icon: Icon(Icons.person), label: Text("Profile")),
        NavigationDrawerDestination(icon: Icon(Icons.logout), label: Text("Logout")),
    ],
      onDestinationSelected: (index) {
        switch(index) {
          case 0:
            currentIndex.value = 0;
            Get.back();
            //Get.toNamed("/settings");
            break;
          case 1:
            //Get.toNamed("/profile");
            break;
          case 2:
          //Get.toNamed("/profile");
            break;
          case 3:
            ref.read(authStateNotifierProvider.notifier).signOut();
            break;
        }
      },
    );
  }
}