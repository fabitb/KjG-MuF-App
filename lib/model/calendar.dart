class Calendar {
  final int offset;
  final int tag;
  final String text;

  const Calendar({required this.offset, required this.tag, required this.text});

  factory Calendar.fromJson(Map<String, dynamic> json) {
    return Calendar(
        offset: json['offset'], tag: json['tage'], text: json['text']);
  }
}
