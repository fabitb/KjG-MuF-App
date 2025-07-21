import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/providers/games_provider.dart';

class EditGameScreen extends ConsumerStatefulWidget {
  final GameModel? initialGame;

  const EditGameScreen({super.key, this.initialGame});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditGameScreenState();
}

class _EditGameScreenState extends ConsumerState<EditGameScreen> {
  late final TextEditingController titleController;
  late final TextEditingController numberOfPlayersController;
  late final TextEditingController durationController;
  late final TextEditingController categoriesController;
  late final TextEditingController materialsController;
  late final TextEditingController ageLimitationsController;
  late final TextEditingController spaceLimitationsController;
  late final TextEditingController goalOfGameController;
  late final TextEditingController preparationsInstructionsController;
  late final TextEditingController gameplayInstructionsController;
  late final TextEditingController endingInstructionsController;
  late final TextEditingController authorController;

  int actionScore = 0;
  int cognitiveScore = 0;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    final g = widget.initialGame;

    titleController = TextEditingController(text: g?.title ?? '');
    numberOfPlayersController =
        TextEditingController(text: g?.numberOfPlayers ?? '');
    durationController = TextEditingController(text: g?.duration ?? '');
    categoriesController =
        TextEditingController(text: g?.categories.join(', ') ?? '');
    materialsController = TextEditingController(text: g?.materials ?? '');
    ageLimitationsController =
        TextEditingController(text: g?.ageLimitations ?? '');
    spaceLimitationsController =
        TextEditingController(text: g?.spaceLimitations ?? '');
    goalOfGameController = TextEditingController(text: g?.goalOfGame ?? '');
    preparationsInstructionsController =
        TextEditingController(text: g?.preparationsInstructions ?? '');
    gameplayInstructionsController =
        TextEditingController(text: g?.gameplayInstructions ?? '');
    endingInstructionsController =
        TextEditingController(text: g?.endingInstructions ?? '');
    authorController = TextEditingController(text: g?.author ?? '');

    actionScore = g?.actionScore ?? 0;
    cognitiveScore = g?.cognitiveScore ?? 0;
  }

  @override
  void dispose() {
    for (final c in [
      titleController,
      numberOfPlayersController,
      durationController,
      categoriesController,
      materialsController,
      ageLimitationsController,
      spaceLimitationsController,
      goalOfGameController,
      preparationsInstructionsController,
      gameplayInstructionsController,
      endingInstructionsController,
      authorController,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.initialGame == null ? "Spiel erstellen" : "Spiel bearbeiten",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTextField("Titel", titleController),
          _buildTextField("Spieleranzahl", numberOfPlayersController),
          _buildTextField("Dauer", durationController),
          _buildTextField("Kategorien (mit , trennen)", categoriesController),
          _buildTextField("Materialien", materialsController),
          _buildTextField("Altersbeschränkungen", ageLimitationsController),
          _buildTextField("Raumbeschränkungen", spaceLimitationsController),
          const SizedBox(height: 16),
          _buildScoreSlider(
            "Action",
            actionScore,
            (v) => setState(() => actionScore = v),
          ),
          _buildScoreSlider(
            "Denken",
            cognitiveScore,
            (v) => setState(() => cognitiveScore = v),
          ),
          const SizedBox(height: 16),
          _buildTextField("Ziel des Spiels", goalOfGameController, maxLines: 3),
          _buildTextField(
            "Spielaufbau",
            preparationsInstructionsController,
            maxLines: 3,
          ),
          _buildTextField(
            "Spielablauf",
            gameplayInstructionsController,
            maxLines: 4,
          ),
          _buildTextField(
            "Spielende",
            endingInstructionsController,
            maxLines: 3,
          ),
          _buildTextField("Autor", authorController),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _saveGame,
            icon: const Icon(Icons.save),
            label: const Text("Spiel speichern"),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildScoreSlider(
    String label,
    int value,
    ValueChanged<int> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label: $value",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value.toDouble(),
          min: 0,
          max: 5,
          divisions: 5,
          label: value.toString(),
          onChanged: (val) => onChanged(val.round()),
        ),
      ],
    );
  }

  void _saveGame() async {
    final newGame = Game(
      id: widget.initialGame?.id ?? '',
      title: titleController.text.trim(),
      numberOfPlayer: numberOfPlayersController.text.trim(),
      duration: durationController.text.trim(),
      categories: categoriesController.text
          .split(',')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList(),
      materials: materialsController.text.trim(),
      ageLimitations: ageLimitationsController.text.trim(),
      spaceLimitations: spaceLimitationsController.text.trim(),
      actionScore: actionScore,
      cognitiveScore: cognitiveScore,
      goalOfGame: goalOfGameController.text.trim(),
      preparationsInstructions: preparationsInstructionsController.text.trim(),
      gameplayInstructions: gameplayInstructionsController.text.trim(),
      endingInstructions: endingInstructionsController.text.trim(),
      author: authorController.text.trim(),
    );

    setState(() => isLoading = true);

    if (widget.initialGame != null) {
      await ref.read(gamesProvider.notifier).updateGame(newGame);
    } else {
      await ref.read(gamesProvider.notifier).createGame(newGame);
    }

    setState(() => isLoading = false);
  }
}
