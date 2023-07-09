import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';
import 'package:intopic/features/home/presentation/widgets/app_drawer.dart';
import 'package:intopic/features/home/presentation/widgets/home_search_fielter.dart';
import 'package:intopic/features/home/presentation/widgets/home_top_quizzes.dart';
import 'package:intopic/features/home/presentation/widgets/home_topics.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const String route = 'home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
          slivers: [
            HomeSearchFilter().sliverBox,
            HomeTopQuizzes().sliverBox,
            HomeTopics().sliverBox,
          ],
        ).marginSymmetric(horizontal: AppDimens.xlg),
        drawer: AppDrawer());
  }
}
