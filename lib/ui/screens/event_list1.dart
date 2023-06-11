import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/calendar.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';

import '../widgets/calendar_item.dart';

class EventList1 extends StatefulWidget {
  const EventList1({super.key});

  @override
  State<EventList1> createState() => _EventListState();
}

class _EventListState extends State<EventList1> {
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  Future<Calendar> getData() async {
    return MidaService().getCalendar(this.month, this.year);
  }

  void increaseMonth() {
    if (month == 12) {
      this.year++;
      this.month = 1;
    } else {
      this.month++;
    }
  }

  void decreaseMonth() {
    if (month == 1) {
      this.year--;
      this.month = 12;
    } else {
      this.month--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                decreaseMonth();
              });
            },
            child: const Text('<<'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                increaseMonth();
              });
            },
            child: const Text('>>'),
          ),
        ],
      ),
      FutureBuilder<Calendar>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return calendarItem(context, snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    ]);
  }
}