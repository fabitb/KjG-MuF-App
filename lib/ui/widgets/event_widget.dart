import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/event.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

Widget eventWidget(BuildContext context, int index, Event event) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(event.title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.date_range_outlined),
              Text(dateFormat.format(event.startDateAndTime)),
              const SizedBox(width: 20),
              const Icon(Icons.watch_later_outlined),
              Text(
                  "${timeFormat.format(event.startDateAndTime)}${event.endTime != null ? "-${timeFormat.format(event.endTime!)}" : ""}")
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.place_outlined),
              Flexible(child: Text(event.location)),
            ],
          )
        ],
      ),
    ),
  );
}
