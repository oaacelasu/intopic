import 'package:flutter/material.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<String>(
      formControlName: 'email',
      validationMessages: {
        ValidationMessage.required: (_) => context.tr.emailRequired,
        ValidationMessage.email: (_) => context.tr.enterValidEmail
      },
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: context.tr.email,
        hintText: context.tr.enterEmail,
        helperStyle: TextStyle(height: 0.7),
        errorStyle: TextStyle(height: 0.7),
      ),
    );
  }
}
