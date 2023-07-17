// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topQuizzesHash() => r'97d4e0c93365510e3e944a9834045c2bcb82d121';

/// See also [topQuizzes].
@ProviderFor(topQuizzes)
final topQuizzesProvider = AutoDisposeFutureProvider<List<Quiz>>.internal(
  topQuizzes,
  name: r'topQuizzesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$topQuizzesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TopQuizzesRef = AutoDisposeFutureProviderRef<List<Quiz>>;
String _$topicsHash() => r'9b638987613ffd25896ab4502ee9733afaa43445';

/// See also [topics].
@ProviderFor(topics)
final topicsProvider = AutoDisposeFutureProvider<List<Topic>>.internal(
  topics,
  name: r'topicsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$topicsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TopicsRef = AutoDisposeFutureProviderRef<List<Topic>>;
String _$filteredTopQuizzesHash() =>
    r'4d3d37950a3b4f5176aa47104804a8dc85cb0fc3';

/// See also [filteredTopQuizzes].
@ProviderFor(filteredTopQuizzes)
final filteredTopQuizzesProvider =
    AutoDisposeFutureProvider<List<Quiz>>.internal(
  filteredTopQuizzes,
  name: r'filteredTopQuizzesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTopQuizzesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTopQuizzesRef = AutoDisposeFutureProviderRef<List<Quiz>>;
String _$filteredTopicsHash() => r'1391db34d8a029728d5d291874936488f67778de';

/// See also [filteredTopics].
@ProviderFor(filteredTopics)
final filteredTopicsProvider = AutoDisposeFutureProvider<List<Topic>>.internal(
  filteredTopics,
  name: r'filteredTopicsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTopicsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTopicsRef = AutoDisposeFutureProviderRef<List<Topic>>;
String _$userHash() => r'54e1da18f39591508d7e91493d12d10cff883089';

/// See also [user].
@ProviderFor(user)
final userProvider = AutoDisposeProvider<Option<User>>.internal(
  user,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRef = AutoDisposeProviderRef<Option<User>>;
String _$currentTopQuizHash() => r'37764cfff000147bb6a1fa4ea6979115392b8db0';

/// See also [currentTopQuiz].
@ProviderFor(currentTopQuiz)
final currentTopQuizProvider = AutoDisposeProvider<Quiz>.internal(
  currentTopQuiz,
  name: r'currentTopQuizProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentTopQuizHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentTopQuizRef = AutoDisposeProviderRef<Quiz>;
String _$homeFilterHash() => r'b86c37f575248a2c2209c0e202149cdae423139c';

/// See also [HomeFilter].
@ProviderFor(HomeFilter)
final homeFilterProvider =
    AutoDisposeNotifierProvider<HomeFilter, String>.internal(
  HomeFilter.new,
  name: r'homeFilterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeFilter = AutoDisposeNotifier<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
