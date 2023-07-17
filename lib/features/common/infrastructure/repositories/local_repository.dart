import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intopic/config/providers.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/auth/infrastructure/dtos/user_dto.dart';
import 'package:intopic/features/common/domain/repositories/i_local_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalRepository implements ILocalRepository {
  LocalRepository(this.ref);

  final ProviderRef<ILocalRepository> ref;

  static const String _prefToken = 'TOKEN_USER';
  static const String _prefUser = 'USER_DATA';
  static const String _prefEmail = 'EMAIL';
  static const String _prefOnBoarding = 'ON_BOARDING';

  @override
  Future<void> clearAllData() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.remove(_prefToken);
    await prefs.remove(_prefUser);
  }

  @override
  Future<Option<String>> getToken() async =>
      optionOf((await ref.read(sharedPreferencesProvider.future)).getString(_prefToken));

  @override
  Future<Option<User>> getUser() async =>
      optionOf(UserDto.fromPrefs(await SharedPreferences.getInstance(), _prefUser).toDomain());

  @override
  Future<void> saveToken(String token) {
    // TODO(oscar): implement saveToken
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(User user) async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString(_prefUser, jsonEncode(UserDto.fromDomain(user).toJson()));
  }

  @override
  Future<bool> getIsFirstLaunch() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    return prefs.getBool(_prefOnBoarding) != true;
  }

  @override
  Future<void> saveFirstLaunchCompleted() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setBool(_prefOnBoarding, true);
  }

  @override
  Future<Option<String>> getEmail() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    return optionOf(prefs.getString(_prefEmail));
  }

  @override
  Future<void> saveEmail(String email) async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString(_prefEmail, email);
  }
}
