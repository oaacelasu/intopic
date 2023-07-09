import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:flutter_hooks/flutter_hooks.dart";
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';

class HomeSearchFilter extends HookConsumerWidget {
  const HomeSearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final filterController = useTextEditingController();

    return Column(
      children: [
        Text(
          context.tr.homeSearch,
          style: context.headlineLarge.withColor(context.primaryColor),
        )
            .marginSymmetric(
          vertical: AppDimens.lg,
        ),
        TextField(
          controller: filterController,
          onChanged: (value) {
            ref.read(homeFilterProvider.notifier).setQuery(value);
          },
          decoration: InputDecoration(
            hintText: context.tr.homeSearchPlaceholder,
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: Visibility(
              visible: filterController.text.isNotEmpty,
              child: IconButton(
                onPressed: () {
                  filterController.clear();
                  ref.read(homeFilterProvider.notifier).setQuery("");
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
