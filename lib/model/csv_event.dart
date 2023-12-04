class CSVEvent {
  final String eventID;
  final bool registered;

  CSVEvent({required this.eventID, required this.registered});

  @override
  String toString() {
    return "{eventID: $eventID, registered: $registered}";
  }
}
