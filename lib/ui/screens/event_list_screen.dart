import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/screens/event_list.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/main.viewmodel.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Veranstaltungen"),
          ),
          body: EventList(),
        );
      }),
    );
  }
}
