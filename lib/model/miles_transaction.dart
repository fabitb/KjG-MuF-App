class MilesTransaction {
  final int milesTransacted;
  final String description;
  final DateTime date;

  const MilesTransaction(
      {required this.milesTransacted,
      required this.description,
      required this.date});

  factory MilesTransaction.fromJson(Map<String, dynamic> json) {
    int miles = json['milesTransacted'];
    String description = json['description'];
    DateTime date = DateTime.parse(json['createdAt'].toString());

    return MilesTransaction(
        milesTransacted: miles, description: description, date: date);
  }
}
