import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/games_filter_settings.dart';
import 'package:kjg_muf_app/providers/games_filter_provider.dart';
import 'package:kjg_muf_app/ui/widgets/games/range_slider_filter.dart';

class GamesFilterBottomSheet extends ConsumerWidget {
  final bool isAuthorized;

  const GamesFilterBottomSheet({
    super.key,
    required this.isAuthorized,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gamesFilter = ref.watch(gamesFilterProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RangeSliderFilter(
            label: context.localizations.action,
            onRangeValuesChangeEnd: (rangeValue) {
              ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(
                    gamesFilter.copyWith(actionRange: rangeValue),
                  );
            },
            currentValues: gamesFilter.actionRange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RangeSliderFilter(
            label: context.localizations.thinking,
            onRangeValuesChangeEnd: (rangeValue) {
              ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(
                    gamesFilter.copyWith(thinkingRange: rangeValue),
                  );
            },
            currentValues: gamesFilter.thinkingRange,
          ),
        ),
        ListTile(
          title: Text(context.localizations.showOnlyUnplayedGames),
          trailing: Checkbox(
            value: gamesFilter.showOnlyUnplayed,
            onChanged: (checked) {
              ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(
                    gamesFilter.copyWith(showOnlyUnplayed: checked ?? false),
                  );
            },
          ),
        ),
        if (isAuthorized)
          ListTile(
            title: Text(context.localizations.showOnlyReviewedGames),
            trailing: Checkbox(
              value: gamesFilter.showReviewed,
              onChanged: (checked) {
                ref.read(gamesFilterProvider.notifier).setGamesFilterSettings(
                      gamesFilter.copyWith(showReviewed: checked ?? true),
                    );
              },
            ),
          ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            ref
                .read(gamesFilterProvider.notifier)
                .setGamesFilterSettings(GamesFilterSettings());
          },
          child: Text(context.localizations.resetFilter),
        ),
      ],
    );
  }
}
