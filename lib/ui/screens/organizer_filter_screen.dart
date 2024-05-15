import 'package:flutter/material.dart';
import 'package:kjg_muf_app/viewmodels/organiser.filter.viewmodel.dart';
import 'package:provider/provider.dart';

class OrganizerFilterScreen extends StatelessWidget {
  final List<String> organizers;
  final Map<String, bool> showOrganizer;

  const OrganizerFilterScreen({
    super.key,
    required this.organizers,
    required this.showOrganizer,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrganiserFilterViewModel(organizers, showOrganizer),
      builder: (context, child) => Consumer<OrganiserFilterViewModel>(
        builder: (context, model, child) => WillPopScope(
          onWillPop: () {
            Navigator.of(context).pop(model.showOrganizer);
            return Future.value(false);
          },
          child: Scaffold(
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: organizers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(organizers[index]),
                  trailing: Switch(
                    value: model.showOrganizer[organizers[index]] ?? true,
                    onChanged: (value) => model.toggleFiltered(index),
                  ),
                  onTap: () {
                    model.toggleFiltered(index);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
