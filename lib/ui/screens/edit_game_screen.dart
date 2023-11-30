import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/constants.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';

class EditGameScreen extends StatelessWidget {
  final GameModel game;

  const EditGameScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController()
      ..text = game.title;
    final TextEditingController numberOfPlayerController =
        TextEditingController()..text = game.numberOfPlayers;
    final TextEditingController durationController = TextEditingController()
      ..text = game.duration;
    final TextEditingController ageLimitationsController =
        TextEditingController()..text = game.ageLimitations;
    final TextEditingController spaceLimitationsController =
        TextEditingController()..text = game.spaceLimitations;
    final TextEditingController materialsController = TextEditingController()
      ..text = game.materials;

    final TextEditingController goalOfGameController = TextEditingController()
      ..text = game.goalOfGame;
    final TextEditingController preparationsInstructionsController =
        TextEditingController()..text = game.preparationsInstructions;
    final TextEditingController gameplayInstructionsController =
        TextEditingController()..text = game.gameplayInstructions;
    final TextEditingController endingInstructionsController =
        TextEditingController()..text = game.endingInstructions;

    final TextEditingController authorController = TextEditingController()
      ..text = game.author;

    return Scaffold(
      appBar: AppBar(
        title: Text(game.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: "Titel",
                  hintText: "Gebe den Titel des Spiels ein",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: numberOfPlayerController,
                decoration: const InputDecoration(
                  labelText: "Spieleranzahl",
                  hintText:
                      "Gebe an für wie viele Spieler das Spiel ausgelegt ist",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: durationController,
                decoration: const InputDecoration(
                  labelText: "Dauer",
                  hintText: "Gebe an wie lang das Spiel dauert",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: ageLimitationsController,
                decoration: const InputDecoration(
                  labelText: "Altersbeschränkungen",
                  hintText: "Gibt es Altersbeschränkungen?",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: spaceLimitationsController,
                decoration: const InputDecoration(
                  labelText: "Umgebungsbeschränkung",
                  hintText: "Gibt es Umgebungsbeschränkungen?",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: materialsController,
                decoration: const InputDecoration(
                  labelText: "Material",
                  hintText: "Wird Material benötigt?",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: goalOfGameController,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: "Ziel des Spiels",
                  hintText: "Was ist das Ziel des Spieles?",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: preparationsInstructionsController,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: "Spielvorbereitungen",
                  hintText: "Was gibt es zu vorzubereiten-?",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: gameplayInstructionsController,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: "Spielablauf",
                  hintText: "Gebe Informationen zum Spielablauf an",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: gameplayInstructionsController,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: "Spielablauf",
                  hintText: "Gebe Informationen zum Spielablauf an",
                  border: Constants.defaultOutlineInputBorder,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
