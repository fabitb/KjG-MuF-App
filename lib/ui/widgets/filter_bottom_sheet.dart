import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/ui/screens/organizer_filter_screen.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/viewmodels/filter.viewmodel.dart';
import 'package:provider/provider.dart';

class FilterBottomSheet extends StatelessWidget {
  final List<Event> events;
  final FilterSettings filterSettings;
  final Function(FilterSettings) onSettingsChanged;

  const FilterBottomSheet({super.key, required this.events, required this.filterSettings, required this.onSettingsChanged});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FilterViewModel(events, filterSettings),
      builder: (_, __) {
        return Consumer<FilterViewModel>(
          builder: (_, model, child) {
            return Column(
              children: [
                ListTile(
                  title: Text(AppLocalizations.of(context)!.onlyRegisteredEvents),
                  trailing: Checkbox(
                    value: model.onlyRegistered,
                    onChanged: (checked) {
                      model.setOnlyRegistered(checked == true);
                      onSettingsChanged(model.filterSettings);
                    },
                  ),
                  onTap: () {
                    model.setOnlyRegistered(!model.onlyRegistered);
                  },
                ),
                ListTile(
                  title: Text(AppLocalizations.of(context)!.hideCommitteeMeetings),
                  trailing: Checkbox(
                    value: model.hideGremien,
                    onChanged: (checked) {
                      model.setHideGremien(checked == true);
                      onSettingsChanged(model.filterSettings);
                    },
                  ),
                  onTap: () {
                    model.setHideGremien(!model.hideGremien);
                  },
                ),
                ListTile(
                  title: Text(AppLocalizations.of(context)!.filterByOrganizer),
                  subtitle: Text(_getOrganizerFilterString(model.organisers, model.showOrganizer)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () async {
                    final result = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OrganizerFilterScreen(organizers: model.organisers, showOrganizer: model.showOrganizer),
                      ),
                    );

                    if (result != null) {
                      model.setShowOrganizer(result as Map<String, bool>);
                      onSettingsChanged(model.filterSettings);
                    }
                  },
                ),
                ListTile(
                  title: Text(AppLocalizations.of(context)!.filterByDate),
                  subtitle: model.dateTimeRange != null ? Text(model.dateTimeRange!.startEndString()) : null,
                  trailing: const Icon(Icons.date_range),
                  onTap: () async {
                    final result = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
                      initialDateRange: model.dateTimeRange,
                    );

                    model.setDateTimeRange(result);
                    onSettingsChanged(model.filterSettings);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    model.resetFilterSettings();
                    onSettingsChanged(model.filterSettings);
                  },
                  child: Text(AppLocalizations.of(context)!.resetFilter),
                ),
              ],
            );
          },
        );
      },
    );
  }

  String _getOrganizerFilterString(List<String> organisers, Map<String, bool> showOrganizer) {
    List<String> show = [];
    for (String o in organisers) {
      if (showOrganizer[o] ?? true) show.add(o);
    }
    return show.join(", ");
  }
}
