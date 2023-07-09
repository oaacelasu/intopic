// This is the interface that the presentation layer will use to interact with the data layer
import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';

abstract class IAuthRepository {
  Future<Either<AlertError, User>> restoreSession();

  Future<Either<AlertError, User>> signIn(String email, String password, bool rememberMe);

  Future<Either<AlertError, User>> signUp(String name, String email, String password);

  Future<void> signOut();
}
