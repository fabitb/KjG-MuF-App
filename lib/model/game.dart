import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
sealed class Game with _$Game {
  const factory Game({
    @JsonKey(name: '_id') required String id,
    required String title,
    required int actionScore,
    required int cognitiveScore,
    required String numberOfPlayer,
    required String duration,
    required String? ageLimitations,
    required String spaceLimitations,
    required String materials,
    required String goalOfGame,
    required String preparationsInstructions,
    required String gameplayInstructions,
    required String endingInstructions,
    required List<String> categories,
    required bool reviewed,
    required String author,
    @Default(false) bool alreadyPlayed,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
