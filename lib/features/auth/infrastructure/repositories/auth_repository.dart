import 'dart:convert' as convert;

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:intopic/features/auth/infrastructure/dtos/user_dto.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';
import 'package:intopic/flavors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository(this.ref);

  final ProviderRef<IAuthRepository> ref;

  @override
  Future<Either<AlertError, User>> restoreSession() async {
    final userOption = await ref.read(localRepositoryProvider).getUser();
    return userOption.fold(() => left(const AlertError('No user found')), (user) {
      if (user.isValid()) {
        return right(user);
      } else {
        return left(const AlertError('No user found'));
      }
    });
  }

  @override
  Future<void> signOut() {
    return ref.read(localRepositoryProvider).clearAllData();
  }

  @override
  Future<Either<AlertError, User>> signIn(String email, String password, {bool rememberMe = false}) async {
    // Make an HTTP POST request to sign in the user
    await ref.read(localRepositoryProvider).saveEmail(email);
    final url = Uri.parse('${F.baseUrl}/auth/login');

    try {
      final response = await http.post(
        url,
        body: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        final user = UserDto.fromJson(jsonResponse['userObj'] as Map<String, dynamic>).toDomain();
        if (!user.isValid()) {
          return left(const AlertError('Generic error'));
        }

        await ref.read(localRepositoryProvider).saveUser(user);
        if (rememberMe) {
          await ref.read(localRepositoryProvider).saveEmail(email);
        }
        return right(user);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return left(AlertError(jsonResponse['message'].toString()));
      }
    } catch (e) {
      return left(const AlertError('Generic error'));
    }
  }

  @override
  Future<Either<AlertError, User>> signUp(String name, String email, String password) async {
    // Make an HTTP POST request to sign up the user
    final url = Uri.parse('${F.baseUrl}/auth/register');

    try {
      final response = await http.post(
        url,
        body: {'userName': name, 'email': email, 'password': password, 'reEnterPassword': password},
      );

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        return right(const User.empty());
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;

        return left(AlertError(jsonResponse['message'].toString()));
      }
    } catch (e) {
      return left(const AlertError('Generic error'));
    }
  }
}
