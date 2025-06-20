import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/repository/game_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'games_provider.g.dart';

@riverpod
Stream<List<GameModel>> games(Ref ref) {
  return GameRepository().getGames();
}
