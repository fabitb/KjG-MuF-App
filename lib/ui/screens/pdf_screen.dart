import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFScreen extends StatelessWidget {
  final String pdfLink;

  PDFScreen({super.key, required this.pdfLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: FutureBuilder<File>(
        future: DefaultCacheManager().getSingleFile(pdfLink),
        builder: (context, snapshot) => snapshot.hasData
            ? PDFView(
                fitPolicy: FitPolicy.HEIGHT,
                filePath: snapshot.data!.path,
                pageSnap: true,
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
