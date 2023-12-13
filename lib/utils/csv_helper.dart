import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../constants/strings.dart';
import '../model/csv_event.dart';

class CSVHelper {
  static List<CSVEvent> csvToEvents(String csvString) {
    // csv format: [Datum, Bild, Veranstaltung, Verein, , , Ort, Status, Link]
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(csvString, fieldDelimiter: ";");

    int linkIndex = -1;
    int statusIndex = -1;
    int placeIndex = -1;
    int dateIndex = -1;
    int titleIndex = -1;
    List<dynamic> firstRow = rowsAsListOfValues[0];
    for (int i = 0; i < firstRow.length; i++) {
      if (firstRow[i] == Strings.midaCsvLinkHeader) {
        linkIndex = i;
      } else if (firstRow[i] == Strings.midaCsvStatusHeader) {
        statusIndex = i;
      } else if (firstRow[i] == Strings.midaCsvPlaceHeader) {
        placeIndex = i;
      } else if (firstRow[i] == Strings.midaCsvTitleHeader) {
        titleIndex = i;
      } else if (firstRow[i] == Strings.midaCsvDateHeader) {
        dateIndex = i;
      }
    }
    // something went wrong (wrong token?)
    if (placeIndex == -1 ||
        linkIndex == -1 ||
        statusIndex == -1 ||
        dateIndex == -1 ||
        titleIndex == -1) {
      return [];
    }

    List<CSVEvent> csvEvents = [];
    for (List<dynamic> row in rowsAsListOfValues) {
      // e.g. https://mida.kjg.de/DVMuenchenundFreising_METrudering/?veranstaltung=6226@876 (@ doesn't always exist)
      String link = row[linkIndex];
      int idStart = link.indexOf("veranstaltung=");
      int idEnd = link.indexOf("@");
      if (idStart != -1) {
        String id =
            link.substring(idStart + 14, idEnd == -1 ? link.length : idEnd);

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
            link: row[linkIndex],
          ),
        );
      }
    }

    return csvEvents;
  }
}
