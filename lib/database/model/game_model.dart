import 'package:kjg_muf_app/model/game.dart';

class GameModel {
  late String id;
  late String title;
  late int actionScore;
  late int cognitiveScore;
  late String numberOfPlayers;
  late String duration;
  late String ageLimitations;
  late String spaceLimitations;
  late String materials;
  late String goalOfGame;
  late String preparationsInstructions;
  late String gameplayInstructions;
  late String endingInstructions;
  late List<String> categories;
  late String author;
  late bool reviewed;
  late bool alreadyPlayed;

  GameModel({
    required this.id,
    required this.title,
    required this.actionScore,
    required this.cognitiveScore,
    required this.numberOfPlayers,
    required this.duration,
    required this.ageLimitations,
    required this.spaceLimitations,
    required this.materials,
    required this.goalOfGame,
    required this.preparationsInstructions,
    required this.gameplayInstructions,
    required this.endingInstructions,
    required this.categories,
    required this.author,
    required this.reviewed,
    required this.alreadyPlayed,
  });

  factory GameModel.fromGame(Game game) {
    return GameModel(
      id: game.id,
      title: game.title,
      actionScore: game.actionScore,
      cognitiveScore: game.cognitiveScore,
      numberOfPlayers: game.numberOfPlayer,
      duration: game.duration,
      ageLimitations: game.ageLimitations ?? "",
      spaceLimitations: game.spaceLimitations,
      materials: game.materials,
      goalOfGame: game.goalOfGame,
      preparationsInstructions: game.preparationsInstructions,
      gameplayInstructions: game.gameplayInstructions,
      endingInstructions: game.endingInstructions,
      categories: game.categories,
      author: game.author,
      reviewed: game.reviewed,
      alreadyPlayed: false,
    );
  }
}
