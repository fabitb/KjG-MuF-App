class Event {
  final String title;
  final DateTime startDateAndTime;
  final DateTime? endTime;
  final String location;

  const Event(
      {required this.title,
      required this.startDateAndTime,
      this.endTime,
      required this.location});

  static RegExp regexStartTime = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
  static RegExp regexStartAndEndTime = RegExp(r'^\d{2}:\d{2}-\d{2}:\d{2}$');

  factory Event.fromJson(Map<String, dynamic> json) {
    var timeInput = json['zeit'].toString();
    var startTime = "00:00";
    var hasEndTime = false;
    var endTime = "00:00";
    if (regexStartTime.hasMatch(timeInput)) {
      startTime = timeInput;
    } else if (regexStartAndEndTime.hasMatch(timeInput)) {
      startTime = timeInput.split('-').first;
      hasEndTime = true;
      endTime = timeInput.split('-')[1];
    }

    return Event(
        title: json['titel'],
        startDateAndTime:
            DateTime.parse('${json['datum'].toString()} $startTime'),
        endTime: hasEndTime
            ? DateTime.parse('${json['datum'].toString()} $endTime')
            : null,
        location: json['ort']);
  }
}
