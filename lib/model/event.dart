class Event {
  final String title;
  final DateTime startDateAndTime;
  final DateTime? endTime;
  final String location;
  final String description;
  final String contactName;
  final String contactEmail;
  final String eventUrl;
  final List<String> attachments;

  const Event(
      {required this.title,
      required this.startDateAndTime,
      this.endTime,
      required this.location,
      required this.description,
      required this.contactName,
      required this.contactEmail,
      required this.eventUrl,
      required this.attachments});

  static RegExp regexStartTime = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
  static RegExp regexStartAndEndTime = RegExp(r'^\d{2}:\d{2}-\d{2}:\d{2}$');

  factory Event.fromJson(Map<String, dynamic> json) {
    String timeInput = json['zeit'];
    String startTime = "00:00";
    bool hasEndTime = false;
    String endTime = "00:00";
    if (regexStartTime.hasMatch(timeInput)) {
      startTime = timeInput;
    } else if (regexStartAndEndTime.hasMatch(timeInput)) {
      startTime = timeInput.split('-').first;
      hasEndTime = true;
      endTime = timeInput.split('-')[1];
    }
    String eventUrl = json['url'] + json['link'];
    List<String> attachments = (json['attachments'] as String)
        .split("\n")
        .where((element) => element.isNotEmpty)
        .toList();

    return Event(
        title: json['titel'],
        startDateAndTime:
            DateTime.parse('${json['datum'].toString()} $startTime'),
        endTime: hasEndTime
            ? DateTime.parse('${json['datum'].toString()} $endTime')
            : null,
        location: json['ort'],
        description: json['beschreibung'],
        contactName: json['kontakt'],
        contactEmail: json['kontaktemail'],
        eventUrl: eventUrl,
        attachments: attachments);
  }
}
