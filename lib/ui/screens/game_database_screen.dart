import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/screens/game_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/game_item.dart';
import 'package:kjg_muf_app/viewmodels/game.database.viewmodel.dart';
import 'package:provider/provider.dart';

class GameDatabase extends StatelessWidget {
  const GameDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => GameDatabaseViewModel(),
        child: Consumer<GameDatabaseViewModel>(builder: (_, model, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Spieledatenbank"),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () => showResetGamesPlayedDialog(
                          context, () => model.resetPlayedGames()),
                      child: const Icon(
                        Icons.undo_outlined,
                        size: 26.0,
                      ),
                    ))
              ],
            ),
            body: model.games != null
                ? ListView.builder(
                    itemCount: model.games?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: GameItem(game: model.games![index]),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => GameDetailScreen(
                                    game: model.games![index]))),
                        onLongPress: () => model.updatedPlayedGame(
                            model.games![index],
                            !model.games![index].alreadyPlayed),
                      );
                    })
                : const CircularProgressIndicator(),
          );
        }));
  }

  showResetGamesPlayedDialog(BuildContext context, Function() onConfirmed) {
    AlertDialog alert = AlertDialog(
      title: const Text("Gespielte Spiele zurücksetzen?"),
      content: const Text(
          "Möchtest du, dass alle Spiele wieder auf ungespielt zurückgesetzt werden?"),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Nein")),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              onConfirmed();
            },
            child: const Text("Ja"))
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
