// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_cache_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attachmentCachedHash() => r'0e0967ff17beb81fc92335d9f0f87cf635c01585';

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

/// See also [attachmentCached].
@ProviderFor(attachmentCached)
const attachmentCachedProvider = AttachmentCachedFamily();

/// See also [attachmentCached].
class AttachmentCachedFamily extends Family<bool> {
  /// See also [attachmentCached].
  const AttachmentCachedFamily();

  /// See also [attachmentCached].
  AttachmentCachedProvider call({
    required String key,
  }) {
    return AttachmentCachedProvider(
      key: key,
    );
  }

  @override
  AttachmentCachedProvider getProviderOverride(
    covariant AttachmentCachedProvider provider,
  ) {
    return call(
      key: provider.key,
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
  String? get name => r'attachmentCachedProvider';
}

/// See also [attachmentCached].
class AttachmentCachedProvider extends AutoDisposeProvider<bool> {
  /// See also [attachmentCached].
  AttachmentCachedProvider({
    required String key,
  }) : this._internal(
          (ref) => attachmentCached(
            ref as AttachmentCachedRef,
            key: key,
          ),
          from: attachmentCachedProvider,
          name: r'attachmentCachedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$attachmentCachedHash,
          dependencies: AttachmentCachedFamily._dependencies,
          allTransitiveDependencies:
              AttachmentCachedFamily._allTransitiveDependencies,
          key: key,
        );

  AttachmentCachedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Override overrideWith(
    bool Function(AttachmentCachedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AttachmentCachedProvider._internal(
        (ref) => create(ref as AttachmentCachedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _AttachmentCachedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AttachmentCachedProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AttachmentCachedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `key` of this provider.
  String get key;
}

class _AttachmentCachedProviderElement extends AutoDisposeProviderElement<bool>
    with AttachmentCachedRef {
  _AttachmentCachedProviderElement(super.provider);

  @override
  String get key => (origin as AttachmentCachedProvider).key;
}

String _$attachmentCacheHash() => r'4b21a3151cc3c5c2da8e41197d763bb125530c69';

/// See also [AttachmentCache].
@ProviderFor(AttachmentCache)
final attachmentCacheProvider =
    AsyncNotifierProvider<AttachmentCache, List<EventAttachment>>.internal(
  AttachmentCache.new,
  name: r'attachmentCacheProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$attachmentCacheHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AttachmentCache = AsyncNotifier<List<EventAttachment>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
