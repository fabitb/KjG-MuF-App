import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

import '../../constants/kjg_colors.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

Widget eventItem(
    BuildContext context, int index, Event event, bool registered) {
  return Card(
    color: registered ? KjGColors.kjgGreen : null,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            event.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          if (event.startDateAndTime != null &&
              event.durationDays != null &&
              event.endDate != null)
            Row(
              children: [
                const Icon(Icons.date_range_outlined),
                Text(
                    "${dateFormat.format(event.startDateAndTime!)}${event.durationDays! > 1 ? " - ${dateFormat.format(event.endDate!)}" : ""}"),
                const SizedBox(width: 20),
                const Icon(Icons.watch_later_outlined),
                Text(
                    "${timeFormat.format(event.startDateAndTime!)}${event.endTime != null ? "-${timeFormat.format(event.endTime!)}" : ""}")
              ],
            ),
          const SizedBox(height: 5),
          if (event.location.isNotNullAndNotEmpty())
            Row(
              children: [
                const Icon(Icons.place_outlined),
                Flexible(child: Text(event.location!)),
              ],
            )
        ],
      ),
    ),
  );
}
