import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:kjg_muf_app/viewmodels/organiser.filter.viewmodel.dart';
import 'package:provider/provider.dart';

class OrganiserFilterScreen extends StatelessWidget {
  final List<String> organisers;
  final List<String> filters;

  const OrganiserFilterScreen({super.key, required this.organisers, required this.filters});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrganiserFilterViewModel(organisers, filters),
      builder: (context, child) => Consumer<OrganiserFilterViewModel>(
        builder: (context, model, child) => WillPopScope(
          onWillPop: () {
            List<String> filters = [];
            for (int i = 0; i < model.filtered.length; i++) {
              if (!model.filtered[i]) {
                filters.add(organisers[i]);
              }
            }
            Navigator.of(context).pop(filters);
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
                      value: model.filtered[index],
                      onChanged: (value) => model.setFiltered(index, value),
                    ),
                    onTap: () {
                      model.setFiltered(index, !model.filtered[index]);
                    },
                  );
                },
              )),
        ),
      ),
    );
  }
}
