import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:intopic/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:intopic/features/auth/presentation/widgets/auth_third_party_buttons.dart';
import 'package:intopic/features/auth/presentation/widgets/email_field.dart';
import 'package:intopic/features/auth/presentation/widgets/password_field.dart';
import 'package:intopic/features/auth/presentation/widgets/text_with_lisk.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:intopic/features/common/presentation/widgets/app_logo.dart';
import 'package:intopic/features/common/presentation/widgets/buttons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  static const String route = 'login';

  FormGroup buildForm({String? rememberEmail}) => fb.group(<String, Object>{
        'email': FormControl<String>(
          value: rememberEmail,
          validators: [Validators.required, Validators.email],
        ),
        'password': ['', Validators.required, Validators.minLength(6), Validators.maxLength(20)],
        'rememberMe': false,
      });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final rememberEmail = useState<String?>(null);

    useEffect(() {
      Future.microtask(() async {
        final optionEmail = await ref.read(authStateNotifierProvider.notifier).rememberMeEmail;
        optionEmail.fold(() =>
            rememberEmail.value = ""
            , (email) => rememberEmail.value = email);
      });
      return null;
    }, []);

    void _onLogin(FormGroup form) {
      if (form.valid) {
        ref.read(authStateNotifierProvider.notifier).signIn( email:
        EmailAddress(form.control('email').value as String),
          password: Password(form.control('password').value as String),
          rememberMe: form.control('rememberMe').value as bool,
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
                AppLogo().marginOnly(bottom: AppDimens.lg),
                Text(context.tr.loginHello),
              ],
            ).marginSymmetric(vertical: Get.height * 0.1),
            if(rememberEmail.value == null)
            SizedBox(
                height: Get.height * 0.3,
                child: CircularProgressIndicator()),

              if(rememberEmail.value != null)
            ReactiveFormBuilder(
              form: ()=>buildForm(rememberEmail: rememberEmail.value),
              builder: (context, form, child) {
                return Column(
                  children: [
                    EmailField().marginOnly(bottom: AppDimens.xlg),
                    PasswordField(
                      onSubmitted: () => _onLogin(form),
                    ),
                    Row(
                      children: [
                        ReactiveCheckbox(formControlName: 'rememberMe'),
                        Text(context.tr.rememberMe),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(context.tr.forgotPassword),
                        ),
                      ],
                    ),
                    PrimaryBtn(
                        label: context.tr.login,
                        onPressed: () => _onLogin(form)).marginSymmetric(vertical: AppDimens.xlg),
                  ],
                );
              },
            ),
            Column(
              children: [
                const AuthThirdPartyButtons(),
                TextWithLink(
                  text: context.tr.dontHaveAccount,
                  link: context.tr.signup,
                  onPressed: () => Get.toNamed<void>(AppRoutes.signup),
                ),
              ],
            ).marginSymmetric(vertical: Get.height * 0.05),
          ],
        ).marginSymmetric(horizontal: AppDimens.xlg),
      ),
    );
  }
}
