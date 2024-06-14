import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';

class PDFScreen extends StatelessWidget {
  final String pdfLink;
  final String pageTitle;

  const PDFScreen({super.key, required this.pdfLink, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: FutureBuilder<File>(
        future: KjGCacheManager.instance.getSingleFile(pdfLink),
        builder: (context, snapshot) => snapshot.hasData
            ? PDFView(
                fitPolicy: FitPolicy.WIDTH,
                filePath: snapshot.data!.path,
                pageSnap: true,
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
