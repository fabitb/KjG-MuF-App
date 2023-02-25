import 'package:flutter/material.dart';

class MilesAndMorusScreen extends StatelessWidget {
  MilesAndMorusScreen({super.key});

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
                color: Color(0xFFFFD700),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Column(
                    children: [
                      Text(
                        "245",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text("Morus Meilen (MM)", style: TextStyle(fontSize: 16)),
                      SizedBox(
                        height: 24,
                      ),
                      Text("Aktueller Status: Gold")
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 24,
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
          ),
          Align(alignment: Alignment.center, child: ElevatedButton(onPressed: () {}, child: Text("Punkte einlösen"))),
          SizedBox(
            height: 56,
          ),
          Text("Dein aktueller Status: Silber"),
          Text("Dir fehlen noch 3000 Punkte bis Gold!")
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
