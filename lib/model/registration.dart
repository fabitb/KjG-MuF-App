class Registration {
  final String userID;
  final int status; // 0=angemeldet, 1=abgemeldet

  const Registration({required this.userID, required this.status});

  factory Registration.fromJson(Map<String, dynamic> json) {
    String userID = json['userid'];
    int status = int.parse(json['status']);
    return Registration(userID: userID, status: status);
  }
}
