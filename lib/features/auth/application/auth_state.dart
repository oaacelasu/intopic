part of 'auth_state_notifier.dart';

@freezed
class AuthState with _$AuthState {
  /// Initial state of the auth state notifier
  const factory AuthState.initial() = _Initial;

  /// State of the auth state notifier when the user is authenticated
  const factory AuthState.authenticated(User user, String token) = _Authenticated;

  /// State of the auth state notifier when the user is not authenticated
  const factory AuthState.unauthenticated({required bool isFirstLaunch}) = _Unauthenticated;
}
