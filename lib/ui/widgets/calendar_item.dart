import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/event.dart';

import '../../model/calendar.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");
const daysOfAWeek = 7;

Widget calendarItem(BuildContext context, Calendar calendar) {
  return Column(
    children: [
      Text(calendar.text),
      DataTable(
        columns: List<DataColumn>.generate(
            daysOfAWeek,
            (index) => const DataColumn(
                  label: Text(""),
                )),
        rows: List<DataRow>.generate(
          ((calendar.tage + calendar.offset) / daysOfAWeek).ceil(),
          (int row) => DataRow(
            cells: List<DataCell>.generate(daysOfAWeek, (column) {
              int day = (column + 1) + (row * daysOfAWeek) - calendar.offset;
              String dayText =
                  day <= 0 || day > calendar.tage ? '' : day.toString();

              return DataCell(
                Text(
                  dayText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: calendar.tag.contains(day)
                          ? Colors.red
                          : Colors.black),
                ),
              );
            }),
          ),
        ),
      ),
      DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Datum',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Titel',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'id',
                ),
              ),
            ),
          ],
          rows: List<DataRow>.generate(
            calendar.id.length,
            (index) => DataRow(
              cells: <DataCell>[
                DataCell(Text(calendar.datum[index])),
                DataCell(Text(calendar.titel[index])),
                DataCell(Text(calendar.id[index])),
              ],
            ),
          )),
    ],
  );
}
