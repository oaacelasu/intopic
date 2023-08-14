import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppLoader extends HookWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 600),
      initialValue: 0.7,
      lowerBound: 0.5,
    );

    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    animationController.repeat(reverse: true);

    const imageProvider = AssetImage('assets/images/books.png');


    return Center(
      child: ScaleTransition(
        scale: animation,
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: imageProvider, // Replace with your image
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}