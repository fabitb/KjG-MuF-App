import 'package:flutter/material.dart';
import 'package:kjg_muf_app/database/model/game_model.dart';

class GameItem extends StatelessWidget {
  final GameModel game;

  const GameItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(game.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        decoration: game.alreadyPlayed
                            ? TextDecoration.lineThrough
                            : null)),
                Text(
                  game.categories.join(', '),
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: game.alreadyPlayed
                          ? TextDecoration.lineThrough
                          : null),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.people_alt_outlined),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Flexible(
                          child: Text(
                        game.numberOfPlayers,
                        overflow: TextOverflow.ellipsis,
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.timelapse_outlined),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Flexible(
                        child: Text(
                          game.duration,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
