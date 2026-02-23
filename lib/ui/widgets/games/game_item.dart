import 'package:flutter/material.dart';
import 'package:kjg_muf_app/model/game.dart';

class GameItem extends StatelessWidget {
  final Game game;

  const GameItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    game.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      decoration: game.alreadyPlayed
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  Text(
                    game.categories.join(', '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                      decoration: game.alreadyPlayed
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  spacing: 4,
                  children: [
                    const Icon(Icons.people_outline, size: 18),
                    Text(
                      game.numberOfPlayer,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  spacing: 4,
                  children: [
                    const Icon(Icons.access_time, size: 18),
                    Text(
                      game.duration,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
