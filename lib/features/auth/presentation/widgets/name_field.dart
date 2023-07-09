import 'package:flutter/material.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<String>(
      formControlName: 'name',
      validationMessages: {
        ValidationMessage.required: (_) => context.tr.userNameRequired,
      },
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: context.tr.userName,
        hintText: context.tr.enterUserName,
        helperStyle: TextStyle(height: 0.7),
        errorStyle: TextStyle(height: 0.7),
      ),
    );
  }
}
