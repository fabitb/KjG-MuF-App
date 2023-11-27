class Game {
  final String id;
  final String title;
  final int actionScore;
  final int cognitiveScore;
  final String numberOfPlayer;
  final String duration;
  final String ageLimitations;
  final String spaceLimitations;
  final String materials;
  final String goalOfGame;
  final String preparationsInstructions;
  final String gameplayInstructions;
  final String endingInstructions;
  final List<String> categories;
  final String author;
  final bool reviewed;
  final bool twoAMGame;

  const Game(
      {required this.id,
      required this.title,
      required this.actionScore,
      required this.cognitiveScore,
      required this.numberOfPlayer,
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
      required this.twoAMGame});

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
        id: json["_id"],
        title: json["title"],
        actionScore: json["actionScore"],
        cognitiveScore: json["cognitiveScore"],
        numberOfPlayer: json["numberOfPlayer"],
        duration: json["duration"],
        ageLimitations: json["ageLimitations"] ?? "",
        spaceLimitations: json["spaceLimitations"],
        materials: json["materials"],
        goalOfGame: json["goalOfGame"],
        preparationsInstructions: json["preparationsInstructions"],
        gameplayInstructions: json["gameplayInstructions"],
        endingInstructions: json["endingInstructions"],
        categories:
            (json["categories"] as List).map((e) => e as String).toList(),
        author: json["author"],
        reviewed: json["reviewed"],
        twoAMGame: json["twoAMGame"]);
  }
}
