import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/ui/screens/event_list.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:provider/provider.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(
        builder: (_, model, __) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.events),
            ),
            body: const EventList(),
          );
        },
      ),
    );
  }
}
