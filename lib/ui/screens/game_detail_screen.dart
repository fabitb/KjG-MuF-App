import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/authorized_games_user_provider.dart';
import 'package:kjg_muf_app/ui/screens/edit_game_screen.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_app_bar.dart';

class GameDetailScreen extends ConsumerWidget {
  final GameModel game;

  const GameDetailScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthorized = ref.watch(authorizedGamesUserProviderProvider);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          KjgAppBar(title: game.title),
        ],
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Column (Scores + Infos)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
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
                    // Right Column (Spielinfos)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: 8,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            const Icon(Icons.people_alt_outlined),
                            Text(game.numberOfPlayers),
                          ],
                        ),
                        Row(
                          spacing: 4,
                          children: [
                            const Icon(Icons.timelapse_outlined),
                            Text(game.duration),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // --- Content Sections ---
            _buildSection(context.localizations.goalOfGame, game.goalOfGame),
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
      floatingActionButton: isAuthorized.hasValue && isAuthorized.value == true
          ? FloatingActionButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditGameScreen(initialGame: game),
                ),
              ),
              child: Icon(
                Icons.edit,
              ),
            )
          : null,
    );
  }

  Widget _buildIconRow(String label, int score, IconData icon) {
    return Row(
      spacing: 8,
      children: [
        Text("$label:", style: const TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(score, (_) => Icon(icon, size: 20)),
      ],
    );
  }

  Widget _buildInfoText(String label, String content) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(content),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    if (content.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
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
}
