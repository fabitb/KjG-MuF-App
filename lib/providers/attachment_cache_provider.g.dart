// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_cache_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AttachmentCache)
const attachmentCacheProvider = AttachmentCacheProvider._();

final class AttachmentCacheProvider
    extends $AsyncNotifierProvider<AttachmentCache, List<EventAttachment>> {
  const AttachmentCacheProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'attachmentCacheProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$attachmentCacheHash();

  @$internal
  @override
  AttachmentCache create() => AttachmentCache();
}

String _$attachmentCacheHash() => r'4b21a3151cc3c5c2da8e41197d763bb125530c69';

abstract class _$AttachmentCache extends $AsyncNotifier<List<EventAttachment>> {
  FutureOr<List<EventAttachment>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<AsyncValue<List<EventAttachment>>, List<EventAttachment>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<EventAttachment>>, List<EventAttachment>>,
        AsyncValue<List<EventAttachment>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(attachmentCached)
const attachmentCachedProvider = AttachmentCachedFamily._();

final class AttachmentCachedProvider
    extends $FunctionalProvider<bool, bool, bool> with $Provider<bool> {
  const AttachmentCachedProvider._(
      {required AttachmentCachedFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'attachmentCachedProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$attachmentCachedHash();

  @override
  String toString() {
    return r'attachmentCachedProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as String;
    return attachmentCached(
      ref,
      key: argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AttachmentCachedProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$attachmentCachedHash() => r'0e0967ff17beb81fc92335d9f0f87cf635c01585';

final class AttachmentCachedFamily extends $Family
    with $FunctionalFamilyOverride<bool, String> {
  const AttachmentCachedFamily._()
      : super(
          retry: null,
          name: r'attachmentCachedProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  AttachmentCachedProvider call({
    required String key,
  }) =>
      AttachmentCachedProvider._(argument: key, from: this);

  @override
  String toString() => r'attachmentCachedProvider';
}
