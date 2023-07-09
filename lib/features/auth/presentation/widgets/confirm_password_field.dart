import 'package:flutter/material.dart';
import "package:flutter_hooks/flutter_hooks.dart";
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ConfirmPasswordField extends HookWidget {
  const ConfirmPasswordField({Key? key, required this.enabled, this.onSubmitted}) : super(key: key);

  final bool enabled;
  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);

    return IgnorePointer(
      ignoring: !enabled,
      child: ReactiveTextField<String>(
        formControlName: 'confirmPassword',
        obscureText: obscureText.value,
        validationMessages: {
          ValidationMessage.required: (_) => context.tr.passwordRequired,
          ValidationMessage.equals: (_) => context.tr.passwordNotMatch,
          ValidationMessage.mustMatch: (_) => context.tr.passwordNotMatch,
        },
        onSubmitted: (_)=>onSubmitted?.call(),
        textInputAction: TextInputAction.done,
        showErrors: (control) => control.invalid && control.dirty,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: context.tr.confirmPassword,
          hintText: context.tr.enterConfirmPassword,
          helperStyle: const TextStyle(height: 0.7),
          errorStyle: const TextStyle(height: 0.7),
          suffixIcon: IconButton(
            icon: Icon(obscureText.value ? Icons.visibility : Icons.visibility_off),
            onPressed: () => obscureText.value = !obscureText.value,
          ),
        ),
      ),
    );
  }
}
