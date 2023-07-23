import 'package:flutter/material.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class TextWithLink extends StatelessWidget {
  const TextWithLink({
    required this.text,
    required this.link,
    required this.onPressed,
    super.key,
    this.color,
  });

  final String text;
  final String link;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: context.titleLarge.light.withColor(color ?? context.primaryColor)),
        TextButton(
          onPressed: onPressed,
          child: Text(link, style: context.titleLarge.extraBold.withColor(color ?? context.primaryColor)),
        ),
      ],
    );
  }
}
