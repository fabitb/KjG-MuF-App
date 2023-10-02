import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/ui/screens/pdf_screen.dart';

Widget attachmentsWidget(BuildContext context, List<String> attachments) {
  return Card(
    child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Dateien", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 4),
            ...attachments.map((e) {
              bool isPDF = e.endsWith('.pdf');
              String fileTitle = e.substring(e.indexOf('_') + 1);

              return ListTile(
                title: Text(fileTitle),
                leading:
                    Icon(isPDF ? Icons.picture_as_pdf : Icons.question_mark),
                onTap: () {
                  if (isPDF) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PDFScreen(
                            pdfLink: "${Strings.midaBaseURL}/?download=$e",
                            pageTitle: fileTitle)));
                  } else {
                    showAlertDialog(context, "Fehler",
                        "Es können aktuell nur PDF Dateien geöffnet werden");
                  }
                },
              );
            })
          ],
        ),
      ),
    ),
  );
}

showAlertDialog(BuildContext context, String title, String message) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
