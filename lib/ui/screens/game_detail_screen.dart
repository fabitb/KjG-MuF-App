import 'package:flutter/material.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';

class GameDetailScreen extends StatelessWidget {
  final GameModel game;

  const GameDetailScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Action:"),
                          const SizedBox(width: 4.0),
                          ...List.generate(
                              game.actionScore,
                              (index) => const Icon(
                                  Icons.local_fire_department_outlined)),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Denken:"),
                          const SizedBox(
                            width: 4.0,
                          ),
                          ...List.generate(game.cognitiveScore,
                              (index) => const Icon(Icons.cloud_outlined)),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Text("Kategorien: ${game.categories.join(", ")}"),
                      if (game.materials.isNotEmpty) ...{
                        const SizedBox(height: 8.0),
                        Text("Material: ${game.materials}"),
                      },
                      if (game.ageLimitations.isNotEmpty) ...{
                        const SizedBox(height: 8.0),
                        Text("Altersbeschränkungen: ${game.ageLimitations}"),
                      },
                      if (game.spaceLimitations.isNotEmpty) ...{
                        const SizedBox(height: 8.0),
                        Text("Raumbeschränkungen: ${game.spaceLimitations}"),
                      }
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.people_alt_outlined),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(game.numberOfPlayers)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timelapse_outlined),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(game.duration)
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8.0),
              const Divider(),
              if (game.goalOfGame.isNotEmpty) ...{
                const SizedBox(height: 8.0),
                const Text("Ziel des Spieles:", style: TextStyle(fontSize: 16)),
                Text(game.goalOfGame),
              },
              if (game.preparationsInstructions.isNotEmpty) ...{
                const SizedBox(height: 16.0),
                const Text("Spielaufbau:", style: TextStyle(fontSize: 16)),
                Text(game.preparationsInstructions),
              },
              if (game.gameplayInstructions.isNotEmpty) ...{
                const SizedBox(height: 16.0),
                const Text("Spielablauf:", style: TextStyle(fontSize: 16)),
                Text(game.gameplayInstructions),
              },
              if (game.endingInstructions.isNotEmpty) ...{
                const SizedBox(height: 16.0),
                const Text("Spielende:", style: TextStyle(fontSize: 16)),
                Text(game.endingInstructions),
              },
              const SizedBox(height: 32.0),
              Text("Danke an ${game.author} für das Erstellen des Spiels!")
            ],
          ),
        ),
      ),
    );
  }
}
