import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/providers/event_list_provider.dart';
import 'package:kjg_muf_app/providers/filter_provider.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:provider/provider.dart';

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterSettings = ref.watch(filterProvider);
    final filteredEventsLength =
        ref.watch(filteredEventsProvider).valueOrNull?.length ?? 0;
    final eventsLength = ref.watch(eventListProvider).valueOrNull?.length ?? 0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_getFilterString(filterSettings)),
          Text(_getResultCountString(filteredEventsLength, eventsLength)),
        ],
      ),
    );
  }

  String _getResultCountString(int filteredCount, int totalCount) {
    return "$filteredCount Ergebnisse (von $totalCount)";
  }

  String _getFilterString(FilterSettings filterSettings) {
    List<String> parts = [];
    if (filterSettings.onlyRegistered) parts.add("Nur Angemeldete");
    if (filterSettings.dateTimeRange != null) {
      parts.add(filterSettings.dateTimeRange!.startEndString());
    }
    int count =
        filterSettings.showOrganizer.values.where((element) => !element).length;
    if (count > 0) parts.add("$count Veranstalter ausgeblendet");

    if (filterSettings.hideGremien) parts.add("Keine Gremiensitzungen");

    return parts.isNotEmpty ? parts.join("\n") : "keine Filter aktiv";
  }
}
