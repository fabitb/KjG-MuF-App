import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/ui/screens/organiser_filter_screen.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:kjg_muf_app/viewmodels/filter.viewmodel.dart';
import 'package:provider/provider.dart';

import '../../model/event.dart';
import '../../model/filter_settings.dart';

class FilterScreen extends StatelessWidget {
  final List<Event> events;
  final FilterSettings filterSettings;

  const FilterScreen(
      {super.key, required this.events, required this.filterSettings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter")),
      body: ChangeNotifierProvider(
          create: (_) => FilterViewModel(events, filterSettings),
          builder: (context, _) {
            return Consumer<FilterViewModel>(
              builder: (context, model, child) {
                return WillPopScope(
                  onWillPop: () {
                    Navigator.of(context).pop(model.filterSettings);
                    return Future.value(false);
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text("Nur angemeldete Veranstaltungen"),
                          trailing: Switch(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (value) {
                              model.setOnlyRegistered(value);
                            },
                            value: model.onlyRegistered,
                          ),
                          onTap: () {
                            model.setOnlyRegistered(!model.onlyRegistered);
                          },
                        ),
                        ListTile(
                          title: const Text("Nach Veranstalter filtern"),
                          subtitle: Text(_getOrganizerFilterString(
                              model.organisers, model.showOrganizer)),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () async {
                            final result = await Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => OrganiserFilterScreen(
                                  organisers: model.organisers,
                                  showOrganizer: model.showOrganizer),
                            ));

                            if (result != null) {
                              model.setShowOrganizer(
                                  result as Map<String, bool>);
                            }
                          },
                        ),
                        ListTile(
                          title: const Text("Gremiensitzungen ausblenden"),
                          trailing: Switch(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (value) {
                              model.setHideGremien(value);
                            },
                            value: model.hideGremien,
                          ),
                          onTap: () {
                            model.setHideGremien(!model.hideGremien);
                          },
                        ),
                        ListTile(
                          title: const Text("Nach Datum filtern"),
                          subtitle: model.dateTimeRange != null
                              ? Text(model.dateTimeRange!.startEndString())
                              : null,
                          trailing: const Icon(Icons.date_range),
                          onTap: () async {
                            final result = await showDateRangePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now()
                                  .add(const Duration(days: 365 * 2)),
                              initialDateRange: model.dateTimeRange,
                            );

                            model.setDateTimeRange(result);
                          },
                        ),
                        ElevatedButton(
                            onPressed: () {
                              model.resetFilterSettings();
                            },
                            child: const Text("Filter zurücksetzen"))
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }

  String _getOrganizerFilterString(
      List<String> organisers, Map<String, bool> showOrganizer) {
    List<String> show = [];
    for (String o in organisers) {
      if (showOrganizer[o] ?? true) show.add(o);
    }
    return show.join(", ");
  }
}
