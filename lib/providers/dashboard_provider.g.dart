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

String _$newsHash() => r'80e379d2ed59fe812a543fb7a0b56cfcbb3d6af3';

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

String _$activitiesHash() => r'1b219c93a411d052207bedb934b8bc92b51978cc';
