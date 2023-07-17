import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/auth/presentation/widgets/auth_third_party_buttons.dart';
import 'package:intopic/features/auth/presentation/widgets/confirm_password_field.dart';
import 'package:intopic/features/auth/presentation/widgets/email_field.dart';
import 'package:intopic/features/auth/presentation/widgets/name_field.dart';
import 'package:intopic/features/auth/presentation/widgets/password_field.dart';
import 'package:intopic/features/auth/presentation/widgets/text_with_lisk.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/app_logo.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  static const String route = 'signUp';

  FormGroup buildForm() => fb.group(<String, Object>{
        'name': FormControl<String>(
          validators: [Validators.required, Validators.minLength(3), Validators.maxLength(20)],
        ),
        'email': FormControl<String>(
          validators: [Validators.required, Validators.email],
        ),
        'password': ['', Validators.required, Validators.minLength(6), Validators.maxLength(20)],
        'confirmPassword': [
          '',
          Validators.required,
        ],
      }, [
        Validators.mustMatch('password', 'confirmPassword', markAsDirty: false)
      ]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPasswordEnabled = useState(false);

    void onSignUp(FormGroup form) {
      if (form.valid) {
        ref.read(authStateNotifierProvider.notifier).signUp(
              name: Name(form.control('name').value as String),
              email: EmailAddress(form.control('email').value as String),
              password: Password(form.control('password').value as String),
            );
      } else {
        form.markAllAsTouched();
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const AppLogo().marginOnly(bottom: AppDimens.lg),
                Text(context.tr.signUpWelcome),
              ],
            ).marginSymmetric(vertical: Get.height * 0.1),
            ReactiveFormBuilder(
              form: buildForm,
              builder: (context, form, child) {
                return Column(
                  children: [
                    const NameField().marginOnly(bottom: AppDimens.xlg),
                    const EmailField(),
                    PasswordField(
                      onChanged: (value) {
                        confirmPasswordEnabled.value = value.valid;
                      },
                    ).marginSymmetric(vertical: AppDimens.xlg),
                    ConfirmPasswordField(
                      enabled: confirmPasswordEnabled.value,
                      onSubmitted: () => onSignUp(form),
                    ).marginOnly(bottom: AppDimens.xlg),
                    PrimaryBtn(
                      label: context.tr.signup,
                      onPressed: () => onSignUp(form),
                    ).marginSymmetric(vertical: AppDimens.xlg),
                  ],
                );
              },
            ),
            Column(
              children: [
                const AuthThirdPartyButtons(isLogin: false),
                TextWithLink(
                  text: context.tr.alreadyHaveAccount,
                  link: context.tr.login,
                  onPressed: () => Get.toNamed<void>(AppRoutes.login),
                ),
              ],
            ).marginSymmetric(vertical: Get.height * 0.05),
          ],
        ).marginSymmetric(horizontal: AppDimens.xlg),
      ),
    );
  }
}
