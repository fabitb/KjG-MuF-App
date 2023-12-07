import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../model/csv_event.dart';

class CSVHelper {
  static List<CSVEvent> csvToEvents(String csvString) {
    // csv format: [Datum, Bild, Veranstaltung, Verein, , , Ort, Status, Link]
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(csvString, fieldDelimiter: ";");

    int idIndex = -1;
    int statusIndex = -1;
    int placeIndex = -1;
    int dateIndex = -1;
    int titleIndex = -1;
    List<dynamic> firstRow = rowsAsListOfValues[0];
    for (int i = 0; i < firstRow.length; i++) {
      if (firstRow[i] == "Link") {
        idIndex = i;
      } else if (firstRow[i] == "Status") {
        statusIndex = i;
      } else if (firstRow[i] == "Ort") {
        placeIndex = i;
      } else if (firstRow[i] == "Veranstaltung") {
        titleIndex = i;
      } else if (firstRow[i] == "Datum") {
        dateIndex = i;
      }
    }
    // something went wrong (wrong token?)
    if (placeIndex == -1 ||
        idIndex == -1 ||
        statusIndex == -1 ||
        dateIndex == -1) {
      return [];
    }

    List<CSVEvent> csvEvents = [];
    for (List<dynamic> row in rowsAsListOfValues) {
      // e.g. https://mida.kjg.de/DVMuenchenundFreising_METrudering/?veranstaltung=6226@876 (@ doesn't always exist)
      String link = row[idIndex];
      int a = link.indexOf("veranstaltung=");
      int b = link.indexOf("@");
      if (a != -1) {
        String id = link.substring(a + 14, b == -1 ? link.length : b);

        String date = (row[dateIndex] as String).substring(3);

        int dashIndex = date.indexOf("-");
        DateTime d;
        if (dashIndex == -1) {
          d = DateFormat("dd.MM.yy, HH:mm").parse(date);
        } else {
          date = date.substring(0, dashIndex);
          if (date.length == 15) {
            d = DateFormat("dd.MM.yy, HH:mm").parse(date);
          } else if (date.length == 8) {
            d = DateFormat("dd.MM.yy").parse(date);
          } else {
            d = DateTime.now();
          }
        }

        csvEvents.add(
          CSVEvent(
            eventID: id,
            registered: (row[statusIndex] as String).contains("angemeldet"),
            title: row[titleIndex],
            startTime: d,
            place: row[placeIndex],
            link: row[idIndex],
          ),
        );
      }
    }

    return csvEvents;
  }
}
