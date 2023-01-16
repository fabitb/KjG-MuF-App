import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/event.dart';

import '../../model/calendar.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

Widget calendarItem(BuildContext context, Calendar calendar) {
  return DataTable(
    columns: List<DataColumn>.generate(
        7,
        (index) => const DataColumn(
              label: Text(""),
            )),
    rows: List<DataRow>.generate(
      ((calendar.tag + calendar.offset) / 7).ceil(),
      (int row) => DataRow(
        cells: List<DataCell>.generate(7, (column) {
          int day = (column + 1) + (row * 7) - calendar.offset;
          if (day <= 0 || day > calendar.tag) {
            return const DataCell(Text(''));
          } else {
            return DataCell(
              Text('$day', textAlign: TextAlign.center),
            );
          }
        }),
      ),
    ),
  );
}
