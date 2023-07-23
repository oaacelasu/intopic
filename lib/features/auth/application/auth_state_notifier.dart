import 'package:firebase_auth/firebase_auth.dart' as fa;
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intopic/config/navigation.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/domain/entities/tutorial_item.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/auth/presentation/auth_providers.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state.dart';
part 'auth_state_notifier.freezed.dart';
part 'auth_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() {
    _initialize();
    return const AuthState.initial();
  }

  Future<void> _initialize() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    /// try to restore saved session
    final res = await ref.read(authRepositoryProvider).restoreSession();
    state = await res.fold(
      (l) async {
        final isFirstLaunch = await ref.read(localRepositoryProvider).getIsFirstLaunch();
        return AuthState.unauthenticated(isFirstLaunch: isFirstLaunch);
      },
      (r) => AuthState.authenticated(r, r.token),
    );
  }

  /// setTutorialCompleted
  Future<void> setTutorialCompleted() async {
    await ref.read(localRepositoryProvider).saveFirstLaunchCompleted();
    state = state.maybeWhen(
      unauthenticated: (isFirstLaunch) {
        Get.offAllNamed<void>(AppRoutes.welcome);
        return const AuthState.unauthenticated(isFirstLaunch: false);
      },
      orElse: () => state,
    );
  }

  /// Signs in user
  Future<void> signIn({required EmailAddress email, required Password password, bool rememberMe = false}) async {
    Get.focusScope?.unfocus();
    final isValid = email.isValid && password.isValid;

    if (!isValid) {
      const AlertError('Invalid email or password');
      return;
    }

    final res = await ref
        .read(authRepositoryProvider)
        .signIn(email.getOrEmpty(), password.getOrEmpty(), rememberMe: rememberMe);
    res.fold((l) {
      l.show();
    }, (r) {
      state = AuthState.authenticated(r, r.token);
      Get.offAllNamed<void>(AppRoutes.home);
    });
  }

  /// Signs up user
  Future<void> signUp({required Name name, required EmailAddress email, required Password password}) async {
    Get.focusScope?.unfocus();
    final isValid = name.isValid && email.isValid && password.isValid;

    if (!isValid) {
      const AlertError('Invalid signup data');
      return;
    }

    final res =
        await ref.read(authRepositoryProvider).signUp(name.getOrEmpty(), email.getOrEmpty(), password.getOrEmpty());
    await res.fold((l) {
      l.show();
    }, (r) async {
      final res = await ref.read(authRepositoryProvider).signIn(email.getOrEmpty(), password.getOrEmpty());
      res.fold((l) {
        Get.offAllNamed<void>(AppRoutes.login);
      }, (r) {
        state = AuthState.authenticated(r, r.token);
        Get.offAllNamed<void>(AppRoutes.home);
      });
    });
  }

  /// Signs out user
  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    final isar = await ref.watch(isarPod.future);
    await isar.writeTxn(isar.clear);
    state = const AuthState.unauthenticated(isFirstLaunch: false);
    await Get.offAllNamed<void>(AppRoutes.login);
  }

  /// Sign in with google
  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    try {
      final googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = fa.GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final user = await fa.FirebaseAuth.instance.signInWithCredential(credential);
      await signIn(email: EmailAddress(user.user?.email ?? ''), password: Password(user.user?.uid ?? ''));
    } catch (e) {
      await AlertError(e.toString()).show();
    }
  }

  /// Sign up with google
  Future<void> signUpWithGoogle() async {
    // Trigger the authentication flow
    try {
      final googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = fa.GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final user = await fa.FirebaseAuth.instance.signInWithCredential(credential);
      await signUp(
        name: Name(user.user?.displayName ?? ''),
        email: EmailAddress(user.user?.email ?? ''),
        password: Password(user.user?.uid ?? ''),
      );
    } catch (e) {
      await AlertError(e.toString()).show();
    }
  }

  /// Signs up user
  List<TutorialItem> get tutorialItems => ref.read(tutorialItemsProvider);

  Future<Option<String>> get rememberMeEmail => ref.read(localRepositoryProvider).getEmail();

  String get token => state.maybeWhen(
        authenticated: (user, token) => token,
        orElse: () => '',
      );
}
