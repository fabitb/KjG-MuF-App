import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
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
    final game = widget.initialGame;

    titleController = TextEditingController(text: game?.title ?? '');
    numberOfPlayersController =
        TextEditingController(text: game?.numberOfPlayers ?? '');
    durationController = TextEditingController(text: game?.duration ?? '');
    categoriesController =
        TextEditingController(text: game?.categories.join(', ') ?? '');
    materialsController = TextEditingController(text: game?.materials ?? '');
    ageLimitationsController =
        TextEditingController(text: game?.ageLimitations ?? '');
    spaceLimitationsController =
        TextEditingController(text: game?.spaceLimitations ?? '');
    goalOfGameController = TextEditingController(text: game?.goalOfGame ?? '');
    preparationsInstructionsController =
        TextEditingController(text: game?.preparationsInstructions ?? '');
    gameplayInstructionsController =
        TextEditingController(text: game?.gameplayInstructions ?? '');
    endingInstructionsController =
        TextEditingController(text: game?.endingInstructions ?? '');
    authorController = TextEditingController(text: game?.author ?? '');

    actionScore = game?.actionScore ?? 0;
    cognitiveScore = game?.cognitiveScore ?? 0;
  }

  @override
  void dispose() {
    for (final controller in [
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
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(
              widget.initialGame == null
                  ? context.localizations.createGame
                  : context.localizations.editGame,
            ),
            actions: [
              if (widget.initialGame != null)
                IconButton(
                  onPressed: () => _showDeleteDialog(context, ref),
                  icon: const Icon(Icons.delete),
                ),
            ],
          ),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildTextField(context.localizations.title, titleController),
                _buildTextField(
                  context.localizations.playerNumber,
                  numberOfPlayersController,
                ),
                _buildTextField(
                  context.localizations.duration,
                  durationController,
                ),
                _buildTextField(
                  context.localizations.categoriesSeparateWithComma,
                  categoriesController,
                ),
                _buildTextField(
                  context.localizations.material,
                  materialsController,
                ),
                _buildTextField(
                  context.localizations.ageRestrictions,
                  ageLimitationsController,
                ),
                _buildTextField(
                  context.localizations.spaceRestrictions,
                  spaceLimitationsController,
                ),
                const SizedBox(height: 16),
                _buildScoreSlider(
                  context.localizations.action,
                  actionScore,
                  (v) => setState(() => actionScore = v),
                ),
                _buildScoreSlider(
                  context.localizations.thinking,
                  cognitiveScore,
                  (v) => setState(() => cognitiveScore = v),
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  context.localizations.goalOfGame,
                  goalOfGameController,
                  maxLines: 3,
                ),
                _buildTextField(
                  context.localizations.preparationsInstructions,
                  preparationsInstructionsController,
                  maxLines: 3,
                ),
                _buildTextField(
                  context.localizations.gameplayInstructions,
                  gameplayInstructionsController,
                  maxLines: 4,
                ),
                _buildTextField(
                  context.localizations.endingInstructions,
                  endingInstructionsController,
                  maxLines: 3,
                ),
                _buildTextField(context.localizations.author, authorController),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: _saveGame,
                  label: Text(
                    context.localizations.saveGame,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: KjGColors.kjgLightBlue,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isLoading)
          Container(
            color: Colors.black54,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
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
    final title = titleController.text.trim();
    final numberOfPlayers = numberOfPlayersController.text.trim();
    final duration = durationController.text.trim();
    final author = authorController.text.trim();

    final missingFields = <String>[];

    if (title.isEmpty) missingFields.add(context.localizations.title);
    if (numberOfPlayers.isEmpty) {
      missingFields.add(context.localizations.playerNumber);
    }
    if (duration.isEmpty) missingFields.add(context.localizations.duration);
    if (author.isEmpty) missingFields.add(context.localizations.author);
    if (actionScore == 0) {
      missingFields.add('${context.localizations.action} > 0');
    }
    if (cognitiveScore == 0) {
      missingFields.add('${context.localizations.thinking} > 0');
    }

    if (missingFields.isNotEmpty) {
      final message = context.localizations
          .pleaseFillOutMandatoryFields(missingFields.join(', '));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
      return;
    }

    final newGame = Game(
      id: widget.initialGame?.id ?? '',
      title: title,
      numberOfPlayer: numberOfPlayers,
      duration: duration,
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
      reviewed: widget.initialGame?.reviewed ?? false,
      author: author,
    );

    setState(() => isLoading = true);

    try {
      if (widget.initialGame != null) {
        await ref.read(gamesProvider.notifier).updateGame(newGame);
      } else {
        await ref.read(gamesProvider.notifier).createGame(newGame);
      }

      if (mounted) {
        await _showSuccessDialog(context);

        if (mounted) {
          Navigator.of(context).pop();
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.localizations.error(e.toString()))),
        );
      }
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  Future<void> _showSuccessDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.localizations.gameSaveSuccess),
        content: Text(context.localizations.gameSaveSuccessMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(context.localizations.ok),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, WidgetRef ref) {
    final loc = context.localizations;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(loc.gameDeleteTitle),
        content: Text(loc.gameDeleteMessage(widget.initialGame!.title)),
        actions: [
          ElevatedButton(
            onPressed: () {
              _onDeleteTap(context, ref);
              Navigator.of(context).pop();
            },
            child: Text(loc.yes),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(loc.no),
          ),
        ],
      ),
    );
  }

  void _onDeleteTap(BuildContext context, WidgetRef ref) async {
    await ref.read(gamesProvider.notifier).deleteGame(widget.initialGame!.id);

    if (context.mounted) {
      Navigator.of(context)
          .popUntil((route) => route.settings.name == '/gameList');
    }
  }
}
