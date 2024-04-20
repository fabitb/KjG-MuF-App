import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/constants.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

class EditGameScreen extends StatefulWidget {
  final GameModel game;

  const EditGameScreen({super.key, required this.game});

  @override
  State<StatefulWidget> createState() {
    return EditGameScreenState();
  }
}

class EditGameScreenState extends State<EditGameScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController()..text = widget.game.title;
    final TextEditingController numberOfPlayerController = TextEditingController()..text = widget.game.numberOfPlayers;
    final TextEditingController durationController = TextEditingController()..text = widget.game.duration;
    final TextEditingController ageLimitationsController = TextEditingController()..text = widget.game.ageLimitations;
    final TextEditingController spaceLimitationsController = TextEditingController()..text = widget.game.spaceLimitations;
    final TextEditingController materialsController = TextEditingController()..text = widget.game.materials;

    final TextEditingController goalOfGameController = TextEditingController()..text = widget.game.goalOfGame;
    final TextEditingController preparationsInstructionsController = TextEditingController()..text = widget.game.preparationsInstructions;
    final TextEditingController gameplayInstructionsController = TextEditingController()..text = widget.game.gameplayInstructions;
    final TextEditingController endingInstructionsController = TextEditingController()..text = widget.game.endingInstructions;

    final TextEditingController authorController = TextEditingController()..text = widget.game.author;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: "Spielname",
                    hintText: "Gebe den Namen des Spiels ein",
                    border: Constants.defaultOutlineInputBorder,
                  ),
                  validator: (value) {
                    if (!value.isNotNullAndNotEmpty()) {
                      return "Du musst einen Spielnamen eingeben";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: numberOfPlayerController,
                  decoration: const InputDecoration(
                    labelText: "Spieleranzahl",
                    hintText: "Gebe an für wie viele Spieler das Spiel ausgelegt ist",
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
                  controller: endingInstructionsController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: "Spielende",
                    hintText: "Gebe Informationen zum Spielende an",
                    border: Constants.defaultOutlineInputBorder,
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: authorController,
                  decoration: const InputDecoration(
                    labelText: "Autor",
                    hintText: "Gebe den Autor des Spiels an",
                    border: Constants.defaultOutlineInputBorder,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
