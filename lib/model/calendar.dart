class Calendar {
  final int offset;
  final int tage;
  final String text;

  final List<String> id;

  final List<int> tag;
  final List<int> format;
  final List<String> datum;
  final List<String> titel;

  const Calendar(
      {required this.offset,
      required this.tage,
      required this.text,
      required this.id,
      required this.tag,
      required this.format,
      required this.titel,
      required this.datum});

  factory Calendar.fromJson(Map<String, dynamic> json) {
    return Calendar(
        offset: json['offset'],
        tage: json['tage'],
        text: json['text'],
        id: List.from(json['id']),
        tag: List.from(json['tag']),
        format: List.from(json['format']),
        datum: List.from(json['titel']),
        titel: List.from(json['datum']));
  }
}
