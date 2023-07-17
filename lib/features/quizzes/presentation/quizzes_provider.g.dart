// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizzes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentQuizCardItemHash() =>
    r'7c9927aa682500ba9011959decac98c3c83e7a2f';

/// See also [currentQuizCardItem].
@ProviderFor(currentQuizCardItem)
final currentQuizCardItemProvider = AutoDisposeProvider<Quiz>.internal(
  currentQuizCardItem,
  name: r'currentQuizCardItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentQuizCardItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentQuizCardItemRef = AutoDisposeProviderRef<Quiz>;
String _$currentQuizHash() => r'e4fc8f96a69ca6f3cfe373596ac2a892bd7ab550';

/// See also [currentQuiz].
@ProviderFor(currentQuiz)
final currentQuizProvider = AutoDisposeProvider<Quiz>.internal(
  currentQuiz,
  name: r'currentQuizProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentQuizHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentQuizRef = AutoDisposeProviderRef<Quiz>;
String _$currentQuestionHash() => r'c4aa1938b306306a33f0af65775f66dc62798532';

/// See also [currentQuestion].
@ProviderFor(currentQuestion)
final currentQuestionProvider = AutoDisposeProvider<Question>.internal(
  currentQuestion,
  name: r'currentQuestionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentQuestionHash,
  dependencies: <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies
  },
);

typedef CurrentQuestionRef = AutoDisposeProviderRef<Question>;
String _$selectedOptionHash() => r'0f51f47e7b587565b0709f93baac31bc8fe452ed';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SelectedOptionRef = AutoDisposeProviderRef<bool>;

/// See also [selectedOption].
@ProviderFor(selectedOption)
const selectedOptionProvider = SelectedOptionFamily();

/// See also [selectedOption].
class SelectedOptionFamily extends Family<bool> {
  /// See also [selectedOption].
  const SelectedOptionFamily();

  /// See also [selectedOption].
  SelectedOptionProvider call({
    required String option,
  }) {
    return SelectedOptionProvider(
      option: option,
    );
  }

  @override
  SelectedOptionProvider getProviderOverride(
    covariant SelectedOptionProvider provider,
  ) {
    return call(
      option: provider.option,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider,
    currentQuestionProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies,
    currentQuestionProvider,
    ...?currentQuestionProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectedOptionProvider';
}

/// See also [selectedOption].
class SelectedOptionProvider extends AutoDisposeProvider<bool> {
  /// See also [selectedOption].
  SelectedOptionProvider({
    required this.option,
  }) : super.internal(
          (ref) => selectedOption(
            ref,
            option: option,
          ),
          from: selectedOptionProvider,
          name: r'selectedOptionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedOptionHash,
          dependencies: SelectedOptionFamily._dependencies,
          allTransitiveDependencies:
              SelectedOptionFamily._allTransitiveDependencies,
        );

  final String option;

  @override
  bool operator ==(Object other) {
    return other is SelectedOptionProvider && other.option == option;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, option.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$currentQuestionIsAnsweredHash() =>
    r'17e1d7c0263512fe8d173d0cbf9276f1bcff115e';

/// See also [currentQuestionIsAnswered].
@ProviderFor(currentQuestionIsAnswered)
final currentQuestionIsAnsweredProvider = AutoDisposeProvider<bool>.internal(
  currentQuestionIsAnswered,
  name: r'currentQuestionIsAnsweredProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentQuestionIsAnsweredHash,
  dependencies: <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider,
    currentQuestionProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies,
    currentQuestionProvider,
    ...?currentQuestionProvider.allTransitiveDependencies
  },
);

typedef CurrentQuestionIsAnsweredRef = AutoDisposeProviderRef<bool>;
String _$questionStatusHash() => r'84c53111dee8a2e4ef98047a021e218be15ca6db';

/// See also [questionStatus].
@ProviderFor(questionStatus)
final questionStatusProvider = AutoDisposeProvider<QuizStateStatus>.internal(
  questionStatus,
  name: r'questionStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$questionStatusHash,
  dependencies: <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies
  },
);

typedef QuestionStatusRef = AutoDisposeProviderRef<QuizStateStatus>;
String _$quizLengthHash() => r'3b6841ac5f7b3d4c26eb909f2080edd4b3e86d85';

/// See also [quizLength].
@ProviderFor(quizLength)
final quizLengthProvider = AutoDisposeProvider<int>.internal(
  quizLength,
  name: r'quizLengthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$quizLengthHash,
  dependencies: <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies
  },
);

typedef QuizLengthRef = AutoDisposeProviderRef<int>;
String _$currentQuestionIndexHash() =>
    r'd29525946c0151bee3c488a320a5dc5e734d0ce7';

/// See also [currentQuestionIndex].
@ProviderFor(currentQuestionIndex)
final currentQuestionIndexProvider = AutoDisposeProvider<int>.internal(
  currentQuestionIndex,
  name: r'currentQuestionIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentQuestionIndexHash,
  dependencies: <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies
  },
);

typedef CurrentQuestionIndexRef = AutoDisposeProviderRef<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
