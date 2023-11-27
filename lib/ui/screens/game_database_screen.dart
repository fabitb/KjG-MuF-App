import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/screens/game_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/game_filter_widget.dart';
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
                  ),
                )
              ],
            ),
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    model.setGameFilter(model.filter..searchTerm = value);
                  },
                  decoration: const InputDecoration(
                    labelText: "Suche",
                    hintText: "Suche nach einem Spiel",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              model.filteredGames != null
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: model.filteredGames?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              child:
                                  GameItem(game: model.filteredGames![index]),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => GameDetailScreen(
                                          game: model.filteredGames![index]))),
                              onLongPress: () => model.updatedPlayedGame(
                                  model.filteredGames![index],
                                  !model.filteredGames![index].alreadyPlayed),
                            );
                          }))
                  : const CircularProgressIndicator(),
            ]),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.filter_alt_outlined),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0))),
                    builder: (BuildContext context) {
                      return GameFilterWidget(
                        gameFilter: model.filter,
                        setFilter: (b) {
                          model.setGameFilter(b);
                        },
                      );
                    }).whenComplete(() => null);
              },
            ),
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
