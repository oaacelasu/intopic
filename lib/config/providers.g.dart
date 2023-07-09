// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'514bed3f78956d49e60dbc3200425abefc0de0e3';

/// Exposes [SharedPreferences] instance
///
/// Copied from [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$authRepositoryHash() => r'dbcbf753e3c1d4bf49f2fc1c5812391ba800c6d1';

/// Repository providers
///
/// Copied from [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = Provider<IAuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = ProviderRef<IAuthRepository>;
String _$localRepositoryHash() => r'8e08c3e2c266de1c2ff3040ff16461260dd8fb98';

/// See also [localRepository].
@ProviderFor(localRepository)
final localRepositoryProvider = Provider<ILocalRepository>.internal(
  localRepository,
  name: r'localRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalRepositoryRef = ProviderRef<ILocalRepository>;
String _$topicRepositoryHash() => r'c5f94771a2133eeb67c0230aa62c2df008d981fc';

/// See also [topicRepository].
@ProviderFor(topicRepository)
final topicRepositoryProvider = Provider<ITopicRepository>.internal(
  topicRepository,
  name: r'topicRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$topicRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TopicRepositoryRef = ProviderRef<ITopicRepository>;
String _$homeRepositoryHash() => r'07882935ee7affa9a6dccbd9f4434aa511d03a75';

/// See also [homeRepository].
@ProviderFor(homeRepository)
final homeRepositoryProvider = Provider<IHomeRepository>.internal(
  homeRepository,
  name: r'homeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeRepositoryRef = ProviderRef<IHomeRepository>;
String _$quizRepositoryHash() => r'e6295a588eabfe5300f01b50d3d0697b35aaa57a';

/// See also [quizRepository].
@ProviderFor(quizRepository)
final quizRepositoryProvider = Provider<IQuizRepository>.internal(
  quizRepository,
  name: r'quizRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef QuizRepositoryRef = ProviderRef<IQuizRepository>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
