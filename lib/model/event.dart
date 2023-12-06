class Event {
  final String eventID;
  final String title;
  final DateTime startDateAndTime;
  final DateTime? endTime;
  final String location;
  final String description;
  final String contactName;
  final String contactEmail;
  final String eventUrl;
  final int durationDays;
  final List<String> attachments;
  final String imageUrl;

  const Event(
      {required this.eventID,
      required this.title,
      required this.startDateAndTime,
      this.endTime,
      required this.location,
      required this.description,
      required this.contactName,
      required this.contactEmail,
      required this.eventUrl,
      required this.durationDays,
      required this.attachments,
      required this.imageUrl});

  DateTime get endDate =>
      startDateAndTime.add(Duration(days: durationDays - 1));

  static RegExp regexStartTime = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
  static RegExp regexStartAndEndTime = RegExp(r'^\d{2}:\d{2}-\d{2}:\d{2}$');

  factory Event.fromJson(Map<String, dynamic> json) {
    String eventID = json['id'];
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
    String imageURL = (json['bild'] as String).isEmpty
        ? ""
        : json['url'] + "/?download=" + json['bild'];
    List<String> attachments = (json['attachments'] as String)
        .split("\n")
        .where((element) => element.isNotEmpty)
        .toList();

    return Event(
        eventID: eventID,
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
        durationDays: int.parse(json['anzahltage']),
        attachments: attachments,
        imageUrl: imageURL);
  }

  static List<Event> createFakeData() {
    return List.generate(
        4,
        (index) => Event(
            eventID: index.toString(),
            title: "TestEvent",
            startDateAndTime: DateTime.now(),
            location: "",
            description: "",
            contactName: "",
            contactEmail: "",
            eventUrl: "",
            durationDays: 1,
            attachments: [],
            imageUrl: ""));
  }
}
