// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topicHash() => r'6ac787cddb23236339a1a0175391b3f26cea2773';

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

typedef TopicRef = AutoDisposeFutureProviderRef<Topic>;

/// See also [topic].
@ProviderFor(topic)
const topicProvider = TopicFamily();

/// See also [topic].
class TopicFamily extends Family<AsyncValue<Topic>> {
  /// See also [topic].
  const TopicFamily();

  /// See also [topic].
  TopicProvider call({
    required String topicId,
  }) {
    return TopicProvider(
      topicId: topicId,
    );
  }

  @override
  TopicProvider getProviderOverride(
    covariant TopicProvider provider,
  ) {
    return call(
      topicId: provider.topicId,
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
  String? get name => r'topicProvider';
}

/// See also [topic].
class TopicProvider extends AutoDisposeFutureProvider<Topic> {
  /// See also [topic].
  TopicProvider({
    required this.topicId,
  }) : super.internal(
          (ref) => topic(
            ref,
            topicId: topicId,
          ),
          from: topicProvider,
          name: r'topicProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$topicHash,
          dependencies: TopicFamily._dependencies,
          allTransitiveDependencies: TopicFamily._allTransitiveDependencies,
        );

  final String topicId;

  @override
  bool operator ==(Object other) {
    return other is TopicProvider && other.topicId == topicId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, topicId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$currentTopicHash() => r'ef6399f860bf829884b1f187b685a09931222fcf';

/// See also [currentTopic].
@ProviderFor(currentTopic)
final currentTopicProvider = AutoDisposeProvider<Topic>.internal(
  currentTopic,
  name: r'currentTopicProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentTopicHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentTopicRef = AutoDisposeProviderRef<Topic>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
