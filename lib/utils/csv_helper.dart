import 'package:csv/csv.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

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
        String baseUrl = link.substring(0, idStart - 1);

        String date = (row[dateIndex] as String).substring(3);
        DateTime? d = _tryParseCsvDateString(date);

        if (d != null) {
          csvEvents.add(
            CSVEvent(
              eventID: id,
              registered: (row[statusIndex] as String).contains("angemeldet"),
              title: row[titleIndex],
              startTime: d,
              place: row[placeIndex],
              link: row[linkIndex],
              baseUrl: baseUrl,
            ),
          );
        }
      }
    }

    return csvEvents;
  }

  static DateTime? _tryParseCsvDateString(String date) {
    DateTime? d;

    d = DateFormat("dd.MM.yy, HH:mm").tryParse(date);
    d ??= DateFormat("dd.MM.yy").tryParse(date);

    return d;
  }
}
