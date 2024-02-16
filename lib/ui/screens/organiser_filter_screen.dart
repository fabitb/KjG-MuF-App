import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:kjg_muf_app/viewmodels/organiser.filter.viewmodel.dart';
import 'package:provider/provider.dart';

class OrganiserFilterScreen extends StatelessWidget {
  final List<String> organisers;
  final Map<String, bool> showOrganizer;

  const OrganiserFilterScreen({super.key, required this.organisers, required this.showOrganizer});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrganiserFilterViewModel(organisers, showOrganizer),
      builder: (context, child) => Consumer<OrganiserFilterViewModel>(
        builder: (context, model, child) => WillPopScope(
          onWillPop: () {
            Navigator.of(context).pop(model.showOrganizer);
            return Future.value(false);
          },
          child: Scaffold(
              appBar: AppBar(),
              body: ListView.builder(
                itemCount: organisers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(organisers[index]),
                    trailing: Switch(
                      value: model.showOrganizer[organisers[index]] ?? true,
                      onChanged: (value) => model.toggleFiltered(index),
                    ),
                    onTap: () {
                      model.toggleFiltered(index);
                    },
                  );
                },
              )),
        ),
      ),
    );
  }
}
