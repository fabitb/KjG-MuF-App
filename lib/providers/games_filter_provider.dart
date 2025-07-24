import 'package:kjg_muf_app/model/games_filter_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'games_filter_provider.g.dart';

@riverpod
class GamesFilter extends _$GamesFilter {
  @override
  GamesFilterSettings build() {
    return GamesFilterSettings();
  }

  setGamesFilterSettings(GamesFilterSettings newValue) {
    state = newValue;
    ref.notifyListeners();
  }
}

@riverpod
class GamesFilterText extends _$GamesFilterText {
  @override
  String build() {
    return "";
  }

  setFilterText(String newValue) {
    state = newValue;
  }
}
