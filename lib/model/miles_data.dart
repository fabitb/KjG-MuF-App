import 'miles_transaction.dart';

class MilesData {
  final int milesCount;
  final List<MilesTransaction> transactions;

  const MilesData({required this.milesCount, required this.transactions});

  factory MilesData.fromJson(Map<String, dynamic> json) {
    int miles = json['milesCounts'];
    List<MilesTransaction> transactions = (json['transactions'] as List)
        .map((data) => MilesTransaction.fromJson(data))
        .toList();

    return MilesData(milesCount: miles, transactions: transactions);
  }
}
