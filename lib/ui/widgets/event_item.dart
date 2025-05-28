import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

class EventItem extends StatelessWidget {
  final MidaEvent event;
  final bool registered;

  const EventItem({super.key, required this.event, required this.registered});

  @override
  Widget build(BuildContext context) {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.date_range_outlined),
                Text(
                  "${dateFormat.format(event.startDateAndTime)}${(event.numberOfDays ?? 0) > 1 ? " - ${dateFormat.format(
                      event.endDateAndTime,
                    )}" : ""}",
                ),
                const SizedBox(width: 20),
                const Icon(Icons.watch_later_outlined),
                Text(
                  "${timeFormat.format(event.startDateAndTime)}${event.numberOfDays == 1 && event.startDateAndTime != event.endDateAndTime ? "-${timeFormat.format(event.endDateAndTime)}" : ""}",
                ),
              ],
            ),
            const SizedBox(height: 5),
            if (event.location.isNotNullAndNotEmpty)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.place_outlined),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(event.locationName!),
                        if (event.locationForMap.isNotNullAndNotEmpty)
                          Text(event.locationForMap!),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
