import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/model/miles_transaction.dart';

DateFormat dateFormat = DateFormat("dd.MM.yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

Widget milesTransactionWidget(
    BuildContext context, MilesTransaction milesTransaction) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(milesTransaction.description,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.date_range_outlined),
              Text(dateFormat.format(milesTransaction.date)),
              const SizedBox(width: 20),
              const Icon(Icons.attach_money),
              Text("${milesTransaction.milesTransacted}",
                  style: TextStyle(
                      color: (milesTransaction.milesTransacted >= 0)
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16))
            ],
          ),
          const SizedBox(height: 5)
        ],
      ),
    ),
  );
}
