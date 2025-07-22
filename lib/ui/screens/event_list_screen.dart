import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/providers/event_list_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/providers/registered_list_provider.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/ui/widgets/filter_bottom_sheet.dart';
import 'package:kjg_muf_app/ui/widgets/filter_widget.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_app_bar.dart';
import 'package:kjg_muf_app/ui/widgets/searchbar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventListScreen extends ConsumerWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(filteredEventsProvider);
    final allEvents = ref.watch(cachedEventsProvider).valueOrNull;
    final filterSettings = ref.watch(filterProvider);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          KjgAppBar(title: context.localizations.events),
        ],
        body: switch (events) {
          AsyncValue(:final value?, error: null) => _body(value, ref),
          _ => Skeletonizer(
              enabled: true,
              child: ListView(
                children: MidaEvent.createFakeData()
                    .map((e) => EventItem(event: e, registered: false))
                    .toList(),
              ),
            ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFilterSheet(
          context,
          allEvents,
          filterSettings,
          ref,
        ),
        child: Icon(
          filterSettings.isActive() ? Icons.filter_list : Icons.filter_list_off,
        ),
      ),
    );
  }

  void _showFilterSheet(
    BuildContext context,
    List<MidaEvent>? allEvents,
    FilterSettings filterSettings,
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
            child: FilterBottomSheet(
              events: allEvents ?? [],
              filterSettings: filterSettings,
              onSettingsChanged: (newFilterSettings) {
                ref
                    .read(filterProvider.notifier)
                    .setFilterSettings(newFilterSettings);
              },
            ),
          ),
        );
      },
    );
  }

  Widget _body(List<MidaEvent> events, WidgetRef ref) {
    final filterSettingsActive = ref.watch(filterProvider).isActive();
    final searchTextProvider = ref.watch(filterTextProvider.notifier);
    final registeredList = ref.watch(cachedRegisteredProvider).valueOrNull ?? [];

    return RefreshIndicator(
      onRefresh: () {
        return ref.read(eventListProvider.notifier).refresh();
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: events.length + (filterSettingsActive ? 2 : 1),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Searchbar(onSearchString: searchTextProvider.setFilterText);
          }
          index--;

          if (filterSettingsActive) {
            if (index == 0) {
              return const FilterWidget();
            }
            index -= 1;
          }

          final event = events[index];
          return InkWell(
            child: EventItem(
              event: event,
              registered: registeredList.contains(event.id),
            ),
            onTap: () => Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) =>
                        EventDetailScreen(event: events[index]),
                  ),
                )
                .then(
                  (value) => ref.read(eventListProvider.notifier).refresh(),
                ),
          );
        },
      ),
    );
  }
}
