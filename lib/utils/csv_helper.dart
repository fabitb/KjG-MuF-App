import 'package:csv/csv.dart';

import '../model/csv_event.dart';

class CSVHelper {
  static List<CSVEvent> csvToEvents(String csvString) {
    // csv format: [Datum, Bild, Veranstaltung, Verein, , , Ort, Status, Link]
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(csvString, fieldDelimiter: ";");

    int idIndex = -1;
    int statusIndex = -1;
    int placeIndex = -1;
    List<dynamic> firstRow = rowsAsListOfValues[0];
    for (int i = 0; i < firstRow.length; i++) {
      if (firstRow[i] == "Link") {
        idIndex = i;
      } else if (firstRow[i] == "Status") {
        statusIndex = i;
      } else if (firstRow[i] == "Ort") {
        placeIndex = i;
      }
    }
    // something went wrong (wrong token?)
    if (placeIndex == -1 || idIndex == -1 || statusIndex == -1) {
      throw Exception("Error getting personal events");
    }

    List<CSVEvent> csvEvents = [];
    for (List<dynamic> row in rowsAsListOfValues) {
      // e.g. https://mida.kjg.de/DVMuenchenundFreising_METrudering/?veranstaltung=6226@876 (@ doesn't always exist)
      String link = row[idIndex];
      int a = link.indexOf("veranstaltung=");
      int b = link.indexOf("@");
      if (a != -1) {
        String id = link.substring(a + 14, b == -1 ? link.length : b);

        csvEvents.add(
          CSVEvent(
            eventID: id,
            registered: row[statusIndex] == "angemeldet",
          ),
        );
      }
    }

    return csvEvents;
  }
}
