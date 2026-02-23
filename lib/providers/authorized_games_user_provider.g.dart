// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorized_games_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthorizedGamesUserProvider)
const authorizedGamesUserProviderProvider =
    AuthorizedGamesUserProviderProvider._();

final class AuthorizedGamesUserProviderProvider
    extends $AsyncNotifierProvider<AuthorizedGamesUserProvider, bool> {
  const AuthorizedGamesUserProviderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authorizedGamesUserProviderProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authorizedGamesUserProviderHash();

  @$internal
  @override
  AuthorizedGamesUserProvider create() => AuthorizedGamesUserProvider();
}

String _$authorizedGamesUserProviderHash() =>
    r'aee2dfded4c03555a950330586fedb63b056587f';

abstract class _$AuthorizedGamesUserProvider extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<bool>, bool>,
        AsyncValue<bool>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
