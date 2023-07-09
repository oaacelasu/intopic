import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';

abstract class ILocalRepository {
  Future<void> clearAllData();

  Future<void> saveUser(User user);

  Future<Option<User>> getUser();

  Future<void> saveFirstLaunchCompleted();

  Future<bool> getIsFirstLaunch();

  Future<void> saveToken(String token);

  Future<Option<String>> getToken();

  Future<void> saveEmail(String email);

  Future<Option<String>> getEmail();
}
