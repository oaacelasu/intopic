// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizStateNotifierHash() => r'e69f12e930c93bdfef7ba52f89548be2c5b58958';

/// See also [QuizStateNotifier].
@ProviderFor(QuizStateNotifier)
final quizStateNotifierProvider =
    AutoDisposeAsyncNotifierProvider<QuizStateNotifier, QuizState>.internal(
  QuizStateNotifier.new,
  name: r'quizStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizStateNotifierHash,
  dependencies: <ProviderOrFamily>[currentQuizProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies
  },
);

typedef _$QuizStateNotifier = AutoDisposeAsyncNotifier<QuizState>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
