import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  Future<List<Event>> getData() async {
    return MidaService().getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>?>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    child: eventItem(context, index, snapshot.data![index]),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            EventDetailScreen(event: snapshot.data![index]))));
              });
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
