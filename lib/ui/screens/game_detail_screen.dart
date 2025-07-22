import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/authorized_games_user_provider.dart';
import 'package:kjg_muf_app/providers/games_provider.dart';
import 'package:kjg_muf_app/ui/screens/edit_game_screen.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_app_bar.dart';

class GameDetailScreen extends ConsumerWidget {
  final String gameId;

  const GameDetailScreen({super.key, required this.gameId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthorized = ref.watch(authorizedGamesUserProviderProvider);
    final gameAsync = ref.watch(gameByIdProvider(gameId));

    return gameAsync.when(
      data: (game) {
        // Should really not happen
        if (game == null) {
          return Scaffold(
            appBar: AppBar(title: Text(context.localizations.gameNotFound)),
            body: Center(child: Text(context.localizations.gameCouldNotLoad)),
          );
        }

        return Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              KjgAppBar(
                title: game.title.substring(0, min(game.title.length, 30)),
                centerTitle: true,
                actions: [
                  if (isAuthorized.hasValue && isAuthorized.value == true)
                    game.reviewed
                        ? IconButton(
                            onPressed: () => _showSetReviewedDialog(
                              context,
                              ref,
                              game,
                              false,
                            ),
                            icon: const Icon(Icons.close),
                          )
                        : IconButton(
                            onPressed: () => _showSetReviewedDialog(
                              context,
                              ref,
                              game,
                              true,
                            ),
                            icon: const Icon(Icons.check),
                          ),
                ],
              ),
            ],
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildGameInfoCard(context, game),
                _buildSection(
                  context.localizations.goalOfGame,
                  game.goalOfGame,
                ),
                _buildSection(
                  context.localizations.preparationsInstructions,
                  game.preparationsInstructions,
                ),
                _buildSection(
                  context.localizations.gameplayInstructions,
                  game.gameplayInstructions,
                ),
                _buildSection(
                  context.localizations.endingInstructions,
                  game.endingInstructions,
                ),
                const SizedBox(height: 32),
                Center(
                  child: Text(
                    context.localizations.thanksToGameAuthor(game.author),
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
          floatingActionButton: isAuthorized.hasValue &&
                  isAuthorized.value == true
              ? FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                    Navigator.of(context)
                        .push(
                          MaterialPageRoute(
                            builder: (context) =>
                                EditGameScreen(initialGame: game),
                          ),
                        )
                        .then((_) => ref.invalidate(gameByIdProvider(gameId)));
                  },
                  child: const Icon(Icons.edit),
                )
              : null,
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: Text(context.localizations.error(""))),
        body: Center(child: Text(context.localizations.error(e.toString()))),
      ),
    );
  }

  Widget _buildGameInfoCard(BuildContext context, GameModel game) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIconRow(
                    context.localizations.action,
                    game.actionScore,
                    Icons.local_fire_department_outlined,
                  ),
                  _buildIconRow(
                    context.localizations.thinking,
                    game.cognitiveScore,
                    Icons.cloud_outlined,
                  ),
                  _buildInfoText(
                    context.localizations.categories,
                    game.categories.join(", "),
                  ),
                  if (game.materials.isNotEmpty)
                    _buildInfoText(
                      context.localizations.material,
                      game.materials,
                    ),
                  if (game.ageLimitations.isNotEmpty)
                    _buildInfoText(
                      context.localizations.ageRestrictions,
                      game.ageLimitations,
                    ),
                  if (game.spaceLimitations.isNotEmpty)
                    _buildInfoText(
                      context.localizations.spaceRestrictions,
                      game.spaceLimitations,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Right Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Icon(Icons.people_alt_outlined),
                    const SizedBox(width: 4),
                    Text(game.numberOfPlayers),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.timelapse_outlined),
                    const SizedBox(width: 4),
                    Text(game.duration),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconRow(String label, int score, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Text("$label:", style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 8),
          ...List.generate(score, (_) => Icon(icon, size: 20)),
        ],
      ),
    );
  }

  Widget _buildInfoText(String label, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(content),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    if (content.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(content, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  void _showSetReviewedDialog(
    BuildContext context,
    WidgetRef ref,
    GameModel game,
    bool setReviewed,
  ) {
    final loc = context.localizations;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          setReviewed ? loc.gameSetReviewedTitle : loc.gameSetUnreviewedTitle,
        ),
        content: Text(
          setReviewed
              ? loc.gameSetReviewedMessage(game.title)
              : loc.gameSetUnreviewedMessage(game.title),
        ),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await ref
                  .read(gamesProvider.notifier)
                  .setReviewStatus(game.id, setReviewed);

              if (context.mounted) {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              }
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
}
