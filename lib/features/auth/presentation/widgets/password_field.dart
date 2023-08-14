import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PasswordField extends HookWidget {
  const PasswordField({super.key, this.onChanged, this.onSubmitted});

  final ValueChanged<FormControl<String>>? onChanged;
  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);

    return ReactiveTextField<String>(
      formControlName: 'password',
      obscureText: obscureText.value,
      validationMessages: {
        ValidationMessage.required: (_) => context.tr.enterPassword,
        ValidationMessage.minLength: (_) => context.tr.passwordMinLength,
      },
      onChanged: onChanged,
      textInputAction: onChanged != null ? TextInputAction.next : TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      onSubmitted: (_) => onSubmitted?.call(),
      decoration: InputDecoration(
        labelText: context.tr.password,
        hintText: context.tr.enterPassword,
        fillColor: context.surfaceColor,
        helperStyle: const TextStyle(height: 0.7),
        errorStyle: const TextStyle(height: 0.7),
        suffixIcon: IconButton(
          icon: Icon(obscureText.value ? Icons.visibility : Icons.visibility_off),
          onPressed: () => obscureText.value = !obscureText.value,
        ),
      ),
    );
  }
}
