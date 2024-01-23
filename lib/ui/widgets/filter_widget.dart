import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/ui/screens/organiser_filter_screen.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:provider/provider.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EventListViewModel>(
      builder: (context, model, child) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                title: Text("Nur angemeldete Veranstaltungen"),
                trailing: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                title: Text("Nach Veranstalter filtern"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () async {
                  final result =
                      await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OrganiserFilterScreen(
                        organisers: model.getOrganisers() ?? [],
                        filters: model.organiserFilter),
                  ));

                  if (result != null) {
                    model.setOrganiserFilter(result as List<String>);
                  }
                },
              ),
              ListTile(
                title: Text("Nach Datum filtern"),
                subtitle: model.dateTimeRange != null
                    ? Text(
                        "${DateFormat("dd.MM.yyyy").format(model.dateTimeRange!.start)} - ${DateFormat("dd.MM.yyyy").format(model.dateTimeRange!.end)}")
                    : null,
                trailing: Icon(Icons.date_range),
                onTap: () async {
                  final result = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365 * 2)),
                    initialDateRange: model.dateTimeRange,
                  );

                  model.setDateTimeRange(result);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
