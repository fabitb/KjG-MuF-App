import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:provider/provider.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => EventListViewModel(),
        child: Consumer<EventListViewModel>(builder: (_, model, __) {
          return RefreshIndicator(
            onRefresh: model.loadEvents,
            child: model.events != null
                ? ListView.builder(
                itemCount: model.events?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      child:
                      eventItem(context, index, model.events![index]),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => EventDetailScreen(
                                  event: model.events![index]))));
                })
                : const Center(child: CircularProgressIndicator()),
          );
        }));
  }
}