import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/home/presentation/home_provider.dart';

class HomeTopics extends HookConsumerWidget {
  const HomeTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredList = ref.watch(filteredTopicsProvider);

    return filteredList.when(data: (value) => Visibility(
      visible: value.isNotEmpty,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.tr.topics,
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
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: value.length,
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.surfaceVariantColor
                ),
                padding: const EdgeInsets.symmetric(horizontal: AppDimens.md),
                child: Row(
                  children: [
                    Container(
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage("https://img.icons8.com/dusk/64/javascript.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppDimens.lg),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value[index].title.getOrEmpty(),
                          style: context.headlineSmall.bold,
                        ),
                        Text(
                          value[index].description,
                          style: context.bodyMedium,
                        ),
                        Row(
                          crossAxisAlignment:   CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(Icons.play_circle_outline_rounded)),
                            const SizedBox(width: AppDimens.xs),
                            Text(
                              value[index].noOfQuizzesAvailable.toString(),
                              style: context.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ).marginSymmetric(vertical: AppDimens.xs);
            },
          ),

        ],
      ),
    ),
        error: (_,l) {
          return SizedBox(
            height: 300,
            child: Center(
              child: Text(l.toString()),
            ),
          );
        }, loading: () => Container(
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
