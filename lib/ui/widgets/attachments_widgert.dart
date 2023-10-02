import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/screens/pdf_screen.dart';

Widget attachmentsWidget(BuildContext context, List<String> attachments) {
  return Card(
    child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("Dateien"),
          ...attachments.map((e) => ListTile(
                title: Text(e),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          PDFScreen(pdfLink: "https://mida.kjg.de/DVMuenchenundFreising/?download=20230829130452_2023_09_30_DRat_Tagesordnung.pdf")));
                },
              ))
        ],
      ),
    ),
  );
}
