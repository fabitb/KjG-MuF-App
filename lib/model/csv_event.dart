class CSVEvent {
  final String title;
  final DateTime startTime;
  final String place;
  final String eventID;
  final bool registered;
  final String link;
  final String baseUrl;

  CSVEvent({
    required this.eventID,
    required this.registered,
    required this.title,
    required this.startTime,
    required this.place,
    required this.link,
    required this.baseUrl,
  });

  @override
  String toString() {
    return "{eventID: $eventID, title: $title, registered: $registered}";
  }
}
