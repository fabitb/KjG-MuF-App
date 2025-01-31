import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/providers/event_list_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/ui/widgets/filter_bottom_sheet.dart';
import 'package:kjg_muf_app/ui/widgets/filter_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventListScreen extends ConsumerWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(filteredEventsProvider);
    final allEvents = ref.watch(eventListProvider).valueOrNull;
    final filterSettings = ref.watch(filterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.events),
      ),
      body: switch (events) {
        AsyncValue(:final value?, error: null) => _body(value, ref),
        _ => Skeletonizer(
            enabled: true,
            child: ListView(
              children: EventModel.createFakeData()
                  .map((e) => eventItem(context, 1, e))
                  .toList(),
            ),
          ),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
        },
        child: Icon(
          filterSettings.isActive() ? Icons.filter_list : Icons.filter_list_off,
        ),
      ),
    );
  }

  Widget _body(List<EventModel> events, WidgetRef ref) {
    final filterSettingsActive = ref.watch(filterProvider).isActive();
    final searchTextProvider = ref.watch(filterTextProvider.notifier);

    return RefreshIndicator(
      onRefresh: () {
        return ref.read(eventListProvider.notifier).refresh();
      },
      child: ListView.builder(
        itemCount: events.length + (filterSettingsActive ? 2 : 1),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) => searchTextProvider.setFilterText(value),
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Suche",
                  // fix for text misalignment
                  prefixIconConstraints: BoxConstraints(minWidth: 48),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            );
          }
          index--;

          if (filterSettingsActive) {
            if (index == 0) {
              return const FilterWidget();
            }
            index -= 1;
          }
          return InkWell(
            child: eventItem(
              context,
              index,
              events[index],
            ),
            onTap: () => Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => EventDetailScreen(
                      event: events[index],
                      offline: false,
                    ),
                  ),
                )
                .then(
                    (value) => ref.read(eventListProvider.notifier).refresh()),
          );
        },
      ),
    );
  }
}
