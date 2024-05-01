import 'package:flutter/material.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:provider/provider.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EventListViewModel>(
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_getFilterString(model.filterSettings)),
              Text(_getResultCountString(model.events?.length ?? 0, model.eventsUnfiltered?.length ?? 0)),
            ],
          ),
        );
      },
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
    int count = filterSettings.showOrganizer.values.where((element) => !element).length;
    if (count > 0) parts.add("$count Veranstalter ausgeblendet");

    if (filterSettings.hideGremien) parts.add("Keine Gremiensitzungen");

    return parts.isNotEmpty ? parts.join("\n") : "keine Filter aktiv";
  }
}
