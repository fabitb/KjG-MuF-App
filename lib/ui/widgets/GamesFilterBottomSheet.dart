import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/games_filter_settings.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';

class GamesFilterBottomSheet extends ConsumerWidget {
  final GamesFilterSettings gamesFilterSettings;
  final Function(GamesFilterSettings) onSettingsChanged;

  const GamesFilterBottomSheet({
    super.key,
    required this.gamesFilterSettings,
    required this.onSettingsChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gamesFilter = ref.watch(gamesFilterProvider);

    return Column(
      children: [
        ListTile(
          title: Text("Nur ungespielte Spiele anzeigen"),
          trailing: Checkbox(
            value: gamesFilter.showOnlyUnplayed,
            onChanged: (checked) {
              onSettingsChanged(gamesFilterSettings.copyWith(showOnlyUnplayed: checked ?? false));
            },
          ),
          onTap: () {
            //model.setOnlyRegistered(!model.onlyRegistered);
          },
        ),
        ListTile(
          title: Text("Nur reviewed Spiele anzeigen"),
          trailing: Checkbox(
            value: gamesFilter.showReviewed,
            onChanged: (checked) {
              onSettingsChanged(gamesFilterSettings.copyWith(showReviewed: checked ?? true));
            },
          ),
          onTap: () {
            //model.setOnlyRegistered(!model.onlyRegistered);
          },
        ),
        ElevatedButton(
          onPressed: () {
            onSettingsChanged(GamesFilterSettings());
          },
          child: Text(context.localizations.resetFilter),
        ),
      ],
    );
  }
}
