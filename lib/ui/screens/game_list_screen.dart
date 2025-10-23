import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/games_filter_settings.dart';
import 'package:kjg_muf_app/providers/authorized_games_user_provider.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';
import 'package:kjg_muf_app/providers/games_provider.dart';
import 'package:kjg_muf_app/ui/screens/edit_game_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/five_taps_recognizer.dart';
import 'package:kjg_muf_app/ui/widgets/games/game_database_tutorial_widget.dart';
import 'package:kjg_muf_app/ui/widgets/games/game_item.dart';
import 'package:kjg_muf_app/ui/widgets/games/games_filter_bottom_sheet.dart';
import 'package:kjg_muf_app/ui/widgets/searchbar.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';

class GameListScreen extends ConsumerStatefulWidget {
  const GameListScreen({super.key});

  @override
  ConsumerState<GameListScreen> createState() => _GameListScreenState();
}

class _GameListScreenState extends ConsumerState<GameListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _showGameTutorialDialog(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    final games = ref.watch(filteredGamesProvider);
    final isAuthorized = ref.watch(authorizedGamesUserProviderProvider);
    final gamesFilter = ref.watch(gamesFilterProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: switch (games) {
        AsyncValue(:final value?, error: null) => _body(context, ref, value),
        _ => const Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
          ),
      },
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'addGameButton',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditGameScreen(),
              ),
            ),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'showFilterButton',
            onPressed: () => _showFilterSheet(
              context,
              gamesFilter,
              isAuthorized.value == true,
              ref,
            ),
            child: Icon(
              gamesFilter.isActive ? Icons.filter_list : Icons.filter_list_off,
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref, List<GameModel> games) {
    final searchTextProvider = ref.watch(gamesFilterTextProvider.notifier);

    return RefreshIndicator(
      onRefresh: () async => await ref.refresh(gamesProvider),
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () => _showGameTutorialDialog(context, force: true),
                icon: const Icon(Icons.question_mark),
              ),
              IconButton(
                onPressed: () => _showResetGamesPlayedDialog(
                  context,
                  () => ref.read(gamesProvider.notifier).resetPlayedGames(),
                ),
                icon: const Icon(Icons.settings_backup_restore_rounded),
              ),
            ],
            foregroundColor: KjGColors.kjgWhite,
            backgroundColor: KjGColors.kjgLightBlue,
            pinned: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: FiveTapsRecognizer(
              onFiveTaps: () => _showApiTokenDialog(context).then((value) {
                ref
                    .read(authorizedGamesUserProviderProvider.notifier)
                    .setApiKey(value as String);
              }),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  context.localizations.gameDatabase,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    color: KjGColors.kjgWhite,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Searchbar(onSearchString: searchTextProvider.setFilterText),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final game = games[index];
                return InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GameDetailScreen(gameId: game.id),
                    ),
                  ),
                  onLongPress: () => ref
                      .read(gamesProvider.notifier)
                      .updatedPlayedGame(game, !game.alreadyPlayed),
                  child: GameItem(game: game),
                );
              },
              childCount: games.length,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }

  void _showResetGamesPlayedDialog(
    BuildContext context,
    Function() onConfirmed,
  ) {
    final alert = AlertDialog(
      title: Text(context.localizations.resetPlayedGames),
      content: Text(context.localizations.resetPlayedGamesDescription),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(context.localizations.no),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onConfirmed();
          },
          child: Text(context.localizations.yes),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (context) => alert,
    );
  }

  Future<String?> _showApiTokenDialog(BuildContext context) async {
    final controller = TextEditingController();
    return await showDialog<String?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.localizations.apiToken),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: context.localizations.apiToken,
              hintText: context.localizations.typeInAPIToken,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: Text(context.localizations.cancel),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pop(controller.text.trim()),
              child: Text(context.localizations.ok),
            ),
          ],
        );
      },
    );
  }

  void _showFilterSheet(
    BuildContext context,
    GamesFilterSettings gamesFilterSettings,
    bool isAuthorized,
    WidgetRef ref,
  ) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: GamesFilterBottomSheet(isAuthorized: isAuthorized),
          ),
        );
      },
    );
  }

  void _showGameTutorialDialog(BuildContext context, {bool force = false}) {
    if (!SharedPreferencesService.instance.gameTutorialShown || force) {
      SharedPreferencesService.instance.gameTutorialShown = true;
      showDialog(
        context: context,
        builder: (_) => Dialog(
          backgroundColor: Colors.white,
          child: GameDatabaseTutorialWidget(),
        ),
      );
    }
  }
}
