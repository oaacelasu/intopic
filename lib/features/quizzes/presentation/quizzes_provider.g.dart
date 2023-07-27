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
String _$currentQuestionHash() => r'954a72d65b120520f296939c0843b970956f506b';

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
    r'cfcde6893898730c17774e5805529f0c8674645c';

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
String _$quizResponseByIdHash() => r'7db9eb00e3fe6e24a5535108836f258b21c27f44';
typedef QuizResponseByIdRef = AutoDisposeFutureProviderRef<QuizResponse>;

/// See also [quizResponseById].
@ProviderFor(quizResponseById)
const quizResponseByIdProvider = QuizResponseByIdFamily();

/// See also [quizResponseById].
class QuizResponseByIdFamily extends Family<AsyncValue<QuizResponse>> {
  /// See also [quizResponseById].
  const QuizResponseByIdFamily();

  /// See also [quizResponseById].
  QuizResponseByIdProvider call({
    required String quizId,
  }) {
    return QuizResponseByIdProvider(
      quizId: quizId,
    );
  }

  @override
  QuizResponseByIdProvider getProviderOverride(
    covariant QuizResponseByIdProvider provider,
  ) {
    return call(
      quizId: provider.quizId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    currentQuizProvider,
    quizStateNotifierProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    currentQuizProvider,
    ...?currentQuizProvider.allTransitiveDependencies,
    quizStateNotifierProvider,
    ...?quizStateNotifierProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quizResponseByIdProvider';
}

/// See also [quizResponseById].
class QuizResponseByIdProvider extends AutoDisposeFutureProvider<QuizResponse> {
  /// See also [quizResponseById].
  QuizResponseByIdProvider({
    required this.quizId,
  }) : super.internal(
          (ref) => quizResponseById(
            ref,
            quizId: quizId,
          ),
          from: quizResponseByIdProvider,
          name: r'quizResponseByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quizResponseByIdHash,
          dependencies: QuizResponseByIdFamily._dependencies,
          allTransitiveDependencies:
              QuizResponseByIdFamily._allTransitiveDependencies,
        );

  final String quizId;

  @override
  bool operator ==(Object other) {
    return other is QuizResponseByIdProvider && other.quizId == quizId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quizId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$currentQuizSubmissionHash() =>
    r'f0de8d974b5c61ed9793aad9fd1622fd03f5b3f0';

/// See also [currentQuizSubmission].
@ProviderFor(currentQuizSubmission)
final currentQuizSubmissionProvider =
    AutoDisposeProvider<QuizSubmission>.internal(
  currentQuizSubmission,
  name: r'currentQuizSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentQuizSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentQuizSubmissionRef = AutoDisposeProviderRef<QuizSubmission>;
String _$overallQuizScoreHash() => r'ff56a515841b560a278f272e436116fb17a77cd0';
typedef OverallQuizScoreRef = AutoDisposeFutureProviderRef<double?>;

/// See also [overallQuizScore].
@ProviderFor(overallQuizScore)
const overallQuizScoreProvider = OverallQuizScoreFamily();

/// See also [overallQuizScore].
class OverallQuizScoreFamily extends Family<AsyncValue<double?>> {
  /// See also [overallQuizScore].
  const OverallQuizScoreFamily();

  /// See also [overallQuizScore].
  OverallQuizScoreProvider call({
    required String quizId,
  }) {
    return OverallQuizScoreProvider(
      quizId: quizId,
    );
  }

  @override
  OverallQuizScoreProvider getProviderOverride(
    covariant OverallQuizScoreProvider provider,
  ) {
    return call(
      quizId: provider.quizId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'overallQuizScoreProvider';
}

/// See also [overallQuizScore].
class OverallQuizScoreProvider extends AutoDisposeFutureProvider<double?> {
  /// See also [overallQuizScore].
  OverallQuizScoreProvider({
    required this.quizId,
  }) : super.internal(
          (ref) => overallQuizScore(
            ref,
            quizId: quizId,
          ),
          from: overallQuizScoreProvider,
          name: r'overallQuizScoreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$overallQuizScoreHash,
          dependencies: OverallQuizScoreFamily._dependencies,
          allTransitiveDependencies:
              OverallQuizScoreFamily._allTransitiveDependencies,
        );

  final String quizId;

  @override
  bool operator ==(Object other) {
    return other is OverallQuizScoreProvider && other.quizId == quizId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quizId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
