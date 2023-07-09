import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_colors.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';

class HomeTopQuizzes extends HookConsumerWidget {
  const HomeTopQuizzes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredList = ref.watch(filteredTopQuizzesProvider);

    return filteredList.when(data: (value) => Visibility(
      visible: value.isNotEmpty,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.tr.topQuizzes,
                style: context.titleLarge.bold,
              ).marginSymmetric(
                vertical: AppDimens.lg,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  context.tr.seeAll,
                  style: context.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: AppDimens.sm),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.randomColor(value[index].title.getOrEmpty()).withAlpha(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircleAvatar(
                              radius: 35,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 25,
                            foregroundImage: NetworkImage(
                              value[index].imageURL
                            )
                          ),
                        ],
                      ),
                      Text(
                        value[index].title.getOrEmpty(),
                        style: context.titleLarge.bold,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ),
         error: (_,l) {
      return SizedBox(
        height: 300,
        child: Center(
          child: Text(l.toString(), style: context.bodyMedium),
        ),
      );
         }, loading: () => Container(
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
