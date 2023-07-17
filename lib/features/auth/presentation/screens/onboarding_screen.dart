import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/app_logo_small.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';

///  onboarding screen
class OnBoardingScreen extends HookConsumerWidget {
  const OnBoardingScreen({super.key});

  static const String route = 'onboarding';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tutorial = ref.watch(authStateNotifierProvider.notifier).tutorialItems;
    final pageController = useState(PageController());
    final currentIndex = useState(0);
    final onPageChangedByPageController = useState(false);

    void onPageChanged(int index) {
      onPageChangedByPageController.value = true;
      currentIndex.value = index;
    }

    void nextIndex() {
      if (currentIndex.value <= tutorial.length - 1) {
        onPageChangedByPageController.value = false;
        currentIndex.value++;
      }
    }

    useEffect(
      () {
        if (onPageChangedByPageController.value) {
          onPageChangedByPageController.value = false;
          return null;
        }
        if (currentIndex.value > tutorial.length - 1) {
          Future.microtask(() {
            ref.read(authStateNotifierProvider.notifier).setTutorialCompleted();
          });
        } else {
          if (pageController.value.hasClients && currentIndex.value != 0) {
            pageController.value.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
          }
        }
        return null;
      },
      [currentIndex.value],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _OnBoardingHeader(currentIndex: currentIndex, tutorialCount: tutorial.length),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    controller: pageController.value,
                    onPageChanged: onPageChanged,
                    children: tutorial
                        .mapWithIndex(
                          (e, index) => Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  tutorial[index].image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: AppDimens.sm),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      tutorial[index].title,
                                      style: context.headlineMedium.bold.withColor(context.primaryColor),
                                    ),
                                    const SizedBox(height: AppDimens.sm),
                                    Text(tutorial[index].description, style: context.titleLarge.light),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                        .toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (currentIndex.value < tutorial.length - 1)
                        DotsIndicator(
                          dotsCount: tutorial.length,
                          position: currentIndex.value,
                          decorator: DotsDecorator(
                            activeSize: const Size(18, 9),
                            activeColor: context.primaryColor,
                            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      Visibility(
                        visible: currentIndex.value < tutorial.length - 1,
                        replacement: PrimaryBtn(label: context.tr.getStarted, onPressed: nextIndex),
                        child: FloatingActionButton(
                          onPressed: nextIndex,
                          backgroundColor: context.primaryColor,
                          child: Icon(Icons.arrow_forward_ios_rounded, color: context.onPrimaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ).marginAll(AppDimens.lg),
      ),
    );
  }
}

class _OnBoardingHeader extends StatelessWidget {
  const _OnBoardingHeader({required this.currentIndex, required this.tutorialCount});

  final ValueNotifier<int> currentIndex;
  final int tutorialCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppLogoSmall(),
        const Spacer(),
        TextButton(
          onPressed: () {
            currentIndex.value = tutorialCount;
          },
          child: Text(context.tr.skip, style: context.titleLarge.bold.withColor(context.tertiaryColor)),
        ),
      ],
    );
  }
}
