class CSVEvent {
  final String title;
  final DateTime startTime;
  final String place;
  final String eventID;
  final bool registered;
  final String link;

  CSVEvent(
      {required this.eventID,
      required this.registered,
      required this.title,
      required this.startTime,
      required this.place,
      required this.link});

  @override
  String toString() {
    return "{eventID: $eventID, title: $title, registered: $registered}";
  }
}
