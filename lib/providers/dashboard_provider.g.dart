// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(news)
const newsProvider = NewsProvider._();

final class NewsProvider extends $FunctionalProvider<AsyncValue<List<News>?>,
        List<News>?, Stream<List<News>?>>
    with $FutureModifier<List<News>?>, $StreamProvider<List<News>?> {
  const NewsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'newsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$newsHash();

  @$internal
  @override
  $StreamProviderElement<List<News>?> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<News>?> create(Ref ref) {
    return news(ref);
  }
}

String _$newsHash() => r'7d40dc5f4bdb6cd7614b6b83de34c45398ff585b';

@ProviderFor(activities)
const activitiesProvider = ActivitiesProvider._();

final class ActivitiesProvider extends $FunctionalProvider<
        AsyncValue<List<News>?>, List<News>?, Stream<List<News>?>>
    with $FutureModifier<List<News>?>, $StreamProvider<List<News>?> {
  const ActivitiesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'activitiesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$activitiesHash();

  @$internal
  @override
  $StreamProviderElement<List<News>?> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<News>?> create(Ref ref) {
    return activities(ref);
  }
}

String _$activitiesHash() => r'0c82ef7a7d831d7c343f4e8ea3830c01d01ebba7';
