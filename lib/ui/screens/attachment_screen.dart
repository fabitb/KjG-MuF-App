import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/attachment_cache_provider.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widget.dart';
import 'package:photo_view/photo_view.dart';

class AttachmentScreen extends ConsumerWidget {
  final EventAttachment attachment;

  const AttachmentScreen({super.key, required this.attachment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attachmentsCache = ref.read(attachmentCacheProvider.notifier);

    final fileType = attachment.fileType;

    return Scaffold(
      appBar: AppBar(
        title: Text(attachment.displayName),
      ),
      body: fileType != FileType.unsupported
          ? FutureBuilder<File>(
              future: attachmentsCache.getSingleFile(attachment),
              builder: (context, snapshot) {
                if (snapshot.data case File file) {
                  return content(context, file, fileType);
                }

                return const Center(child: CircularProgressIndicator());
              },
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(context.localizations.fileErrorDescription),
              ),
            ),
    );
  }

  Widget content(BuildContext context, File file, FileType fileType) {
    return switch (fileType) {
      FileType.pdf => PDFView(
          fitPolicy: FitPolicy.WIDTH,
          filePath: file.path,
          pageSnap: true,
        ),
      FileType.image => PhotoView(
          backgroundDecoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2,
          imageProvider: FileImage(file.absolute),
        ),
      FileType.unsupported => throw UnimplementedError(),
    };
  }
}
