class Event {
  final String title;
  final DateTime dateTime;
  final String location;

  const Event({
    required this.title,
    required this.dateTime,
    required this.location
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        title: json['titel'],
        dateTime: DateTime.parse("${json['datum'].toString()} ${json['zeit'].toString()}"),
        location: json['ort']
    );
  }
}