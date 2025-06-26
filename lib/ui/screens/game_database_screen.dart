import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/model/games_filter_settings.dart';
import 'package:kjg_muf_app/providers/authorized_games_user_provider.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';
import 'package:kjg_muf_app/providers/games_provider.dart';
import 'package:kjg_muf_app/ui/screens/edit_game_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/GamesFilterBottomSheet.dart';
import 'package:kjg_muf_app/ui/widgets/five_taps_recognizer.dart';
import 'package:kjg_muf_app/ui/widgets/game_item.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

class GameDatabase extends ConsumerWidget {
  const GameDatabase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gamesProvider);
    final isAuthorized = ref.watch(authorizedGamesUserProviderProvider);
    final gamesFilter = ref.watch(gamesFilterProvider);

    List<GameModel> filteredGames() {
      final list = games.valueOrNull;
      if (list == null) return [];
      return gamesFilter.showOnlyUnplayed ? list.where((g) => !g.alreadyPlayed).toList() : list;
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            backgroundColor: KjGColors.kjgLightBlue,
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: FiveTapsRecognizer(
              onFiveTaps: () => showApiTokenDialog(context).then((value) {
                ref.read(authorizedGamesUserProviderProvider.notifier).setApiKey(value as String);
              }),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      context.localizations.gameDatabase,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: KjGColors.kjgWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              switch (games) {
                AsyncError() => [Text(context.localizations.noNewsAvailable)],
                AsyncData() => [
                    ...List.generate(filteredGames().length, (index) {
                      return InkWell(
                        child: GameItem(game: filteredGames()[index]),
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameDetailScreen(game: filteredGames()[index]))),
                        onLongPress: () => ref.read(gamesProvider.notifier).updatedPlayedGame(filteredGames()[index], !filteredGames()[index].alreadyPlayed),
                      );
                    }),
                  ],
                _ => [CircularProgressIndicator()],
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 12,
        children: [
          switch (isAuthorized) {
            AsyncData(:final value) => value
                ? FloatingActionButton(
                    heroTag: 'fab1',
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditGameScreen())),
                    child: Icon(
                      Icons.add,
                    ),
                  )
                : SizedBox(),
            _ => SizedBox(),
          },
          FloatingActionButton(
            heroTag: 'fab2',
            onPressed: () => _showFilterSheet(context, gamesFilter, ref),
            child: Icon(
              gamesFilter.isActive ? Icons.filter_list : Icons.filter_list_off,
            ),
          ),
        ],
      ),
    );
  }

  showResetGamesPlayedDialog(BuildContext context, Function() onConfirmed) {
    AlertDialog alert = AlertDialog(
      title: const Text("Gespielte Spiele zurücksetzen?"),
      content: const Text("Möchtest du, dass alle Spiele wieder auf ungespielt zurückgesetzt werden?"),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text("Nein")),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onConfirmed();
          },
          child: const Text("Ja"),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Future<String?> showApiTokenDialog(BuildContext context) async {
    final TextEditingController controller = TextEditingController();

    return await showDialog<String?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('API-Token eingeben'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'API-Token',
              hintText: 'Gib deinen API-Token ein',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: Text('Abbrechen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(controller.text.trim()),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showFilterSheet(
    BuildContext context,
    GamesFilterSettings gamesFilterSettings,
    WidgetRef ref,
  ) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      builder: (BuildContext context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GamesFilterBottomSheet(
              gamesFilterSettings: gamesFilterSettings,
              onSettingsChanged: (newFilterSettings) {
                if (gamesFilterSettings.showReviewed != newFilterSettings.showReviewed) {
                  ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(newFilterSettings);
                  ref.invalidate(gamesProvider);
                } else {
                  ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(newFilterSettings);
                }
                /*ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(newFilterSettings);
                if (gamesFilterSettings.showReviewed != newFilterSettings.showReviewed) {
                  ref.invalidate(gamesProvider);
                }*/
              },
            ),
          ),
        );
      },
    );
  }
}
