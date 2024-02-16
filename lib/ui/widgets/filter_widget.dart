import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/ui/screens/filter_screen.dart';
import 'package:kjg_muf_app/ui/screens/organiser_filter_screen.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:provider/provider.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EventListViewModel>(builder: (context, model, child) {
      return InkWell(
        onTap: () async {
          final result = await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FilterScreen(
                    events: model.eventsUnfiltered ?? [],
                    filterSettings: model.filterSettings,
                  )));

          if (result != null) {
            model.setFilterSettings(result as FilterSettings);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                  Text(_getFilterString(model.filterSettings)),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              Text(_getResultCountString(model.events?.length ?? 0,
                  model.eventsUnfiltered?.length ?? 0))
            ],
          ),
        ),
      );
    });
  }

  String _getResultCountString(int filteredCount, int totalCount) {
    return "$filteredCount Ergebnisse (von $totalCount)";
  }

  String _getFilterString(FilterSettings filterSettings) {
    List<String> parts = [];
    if (filterSettings.onlyRegistered) parts.add("nur angemeldet");
    if (filterSettings.dateTimeRange != null) {
      parts.add(filterSettings.dateTimeRange!.startEndString());
    }
    int count =
        filterSettings.showOrganizer.values.where((element) => !element).length;
    if (count > 0) parts.add("$count Veranstalter ausgeblendet");

    return parts.isNotEmpty ? parts.join(", ") : "keine Filter aktiv";
  }
}
