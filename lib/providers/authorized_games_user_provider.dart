import 'package:kjg_muf_app/backend/backend_service.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authorized_games_user_provider.g.dart';

@riverpod
class AuthorizedGamesUserProvider extends _$AuthorizedGamesUserProvider {
  @override
  Future<bool> build() async {
    final apiKey = SharedPreferencesService.instance.gamesApiKey;

    if (apiKey != null) {
      return await BackendService().isAuthorized(apiKey);
    }

    return false;
  }

  void setApiKey(String apiKey) {
    SharedPreferencesService.instance.gamesApiKey = apiKey;
    ref.invalidateSelf();
  }
}
