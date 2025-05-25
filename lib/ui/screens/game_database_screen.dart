import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/providers/games_provider.dart';
import 'package:kjg_muf_app/ui/screens/game_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/game_item.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

class GameDatabase extends ConsumerWidget {
  const GameDatabase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gamesProvider);

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
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(16.0),
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
          SliverList(
            delegate: SliverChildListDelegate(
              switch (games) {
                AsyncError() => [Text(context.localizations.noNewsAvailable)],
                AsyncData(:final value) => [
                    ...List.generate(value.length, (index) {
                      return InkWell(
                        child: GameItem(game: value[index]),
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameDetailScreen(game: value[index]))),
                        //onLongPress: () => model.updatedPlayedGame(model.games![index], !model.games![index].alreadyPlayed),
                      );
                    }),
                  ],
                _ => [CircularProgressIndicator()],
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
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
}
