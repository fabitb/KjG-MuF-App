import 'package:flutter/material.dart';
import 'package:kjg_muf_app/model/game_filter.dart';
import 'package:kjg_muf_app/ui/widgets/checkbox_widget.dart';

class GameFilterWidget extends StatelessWidget {
  final GameFilter gameFilter;
  final Function(GameFilter) setFilter;

  const GameFilterWidget(
      {super.key, required this.gameFilter, required this.setFilter});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Filter",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ),
            CheckBoxWidget(
              initialValue: gameFilter.hideAlreadyPlayed,
              title: "Bereits gespielte Spiele ausblenden:",
              callback: (filterChecked) {
                gameFilter.hideAlreadyPlayed = filterChecked;
                setFilter(gameFilter);
              },
            ),
            Text("Kategorien")
          ],
        ),
      ),
    );
  }
}
