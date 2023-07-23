import 'package:flutter/material.dart';

///
class AppError extends StatelessWidget {
  ///
  const AppError({
    required this.title,
    super.key,
    this.description,
  });

  /// Error title
  final String title;

  /// Error description
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(
          height: 30,
        ),
        if (description != null) Text(description!)
      ],
    );
  }
}
