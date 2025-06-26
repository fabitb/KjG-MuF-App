import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
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
      body: CustomScrollView(
        slivers: [
          KjgAppBar(title: game.title),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // --- Overview Section ---
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                              _buildIconRow("Action", game.actionScore, Icons.local_fire_department_outlined),
                              _buildIconRow("Denken", game.cognitiveScore, Icons.cloud_outlined),
                              _buildInfoText("Kategorien", game.categories.join(", ")),
                              if (game.materials.isNotEmpty) _buildInfoText("Material", game.materials),
                              if (game.ageLimitations.isNotEmpty) _buildInfoText("Altersbeschränkungen", game.ageLimitations),
                              if (game.spaceLimitations.isNotEmpty) _buildInfoText("Raumbeschränkungen", game.spaceLimitations),
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
                _buildSection("Ziel des Spiels", game.goalOfGame),
                _buildSection("Spielaufbau", game.preparationsInstructions),
                _buildSection("Spielablauf", game.gameplayInstructions),
                _buildSection("Spielende", game.endingInstructions),

                const SizedBox(height: 32),
                Center(
                  child: Text(
                    "Danke an ${game.author} für das Erstellen des Spiels!",
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 48),
              ]),
            ),
          ),
        ],
      ),
      floatingActionButton: isAuthorized.hasValue && isAuthorized.value == true
          ? FloatingActionButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditGameScreen(initialGame: game))),
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
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(content, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
