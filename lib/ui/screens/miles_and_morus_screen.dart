import 'package:flutter/material.dart';

class MilesAndMorusScreen extends StatelessWidget {
  const MilesAndMorusScreen({super.key});

  Future<List<String>> getData() async {
    var list = List.filled(3, "Test", growable: true);
    list.add("string");
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Miles & Morus"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Theme.of(context)
                    .secondaryHeaderColor, // Color(0xFFFFD700),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Column(
                    children: const [
                      Text(
                        "245",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 16),
                      Text("Morus Meilen (MM)", style: TextStyle(fontSize: 16))
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 24,
          ),
          ListView(
            shrinkWrap: true,
            children: [Text("Test")],
          ),
          SizedBox(
            height: 56,
          ),
          Text("DRat, 15.01, 500 Meilen"),
          Text("Happy Hour, 26.01, 100 Meilen"),
          Text("Schlittschuhlaufen, 01.02, 200 Meilen"),
          Text("ME Wochenende, 24.02, 300 Meilen"),
          SizedBox(
            height: 56,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.monetization_on)),
    );
  }
}
