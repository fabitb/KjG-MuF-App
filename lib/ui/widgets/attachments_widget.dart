import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/ui/screens/fullscreen_image.dart';
import 'package:kjg_muf_app/ui/screens/pdf_screen.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:kjg_muf_app/viewmodels/event.detail.viewmodel.dart';
import 'package:mime/mime.dart';
import 'package:provider/provider.dart';

class AttachmentsWidget extends StatelessWidget {
  final String baseUrl;
  final List<String> attachments;
  final DateTime? cachedTime;

  const AttachmentsWidget({
    super.key,
    required this.attachments,
    required this.baseUrl,
    this.cachedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Dateien", style: TextStyle(fontSize: 16)),
                  _iconButton(context),
                ],
              ),
              const SizedBox(height: 4),
              ..._getAttachments(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(BuildContext context) {
    final viewModel = Provider.of<EventDetailViewModel>(context, listen: false);

    if (viewModel.loadingAttachments) {
      return const IconButton(
        onPressed: null,
        icon: SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (cachedTime == null) {
      return IconButton(
        onPressed: () => _showDownloadDialog(context, viewModel),
        icon: const Icon(Icons.download),
      );
    }

    return IconButton(
      onPressed: () => _showDeleteDialog(context, viewModel),
      icon: const Icon(Icons.delete),
    );
  }

  _showDownloadDialog(BuildContext context, EventDetailViewModel viewModel) {
    if (viewModel.showDownloadDialog) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return DownloadDialog(
            downloadAction: (showDownloadDialog) {
              viewModel.cacheAttachments(showDownloadDialog);
            },
          );
        },
      );
    } else {
      viewModel.cacheAttachments(false);
    }
  }

  _showDeleteDialog(BuildContext context, EventDetailViewModel viewModel) {
    _showAlertDialog(
      context,
      "Löschen",
      "Möchtest du die Anhänge wirklich nicht mehr offline verfügbar haben?",
      okAction: () {
        viewModel.deleteAttachments();
      },
      okText: "Löschen",
      withCancel: true,
    );
  }

  Iterable<Widget> _getAttachments(BuildContext context) {
    return attachments.map((e) {
      return _attachment(context, e);
    });
  }

  Widget _attachment(BuildContext context, String attachment) {
    final fileType = FileType.getFileType(attachment);

    String fileTitle = fileType.isPdf
        ? attachment.substring(attachment.indexOf('_') + 1)
        : attachment;
    final icon = switch (fileType) {
      FileType.pdf => Icons.picture_as_pdf,
      FileType.image => Icons.image,
      FileType.unsupported => Icons.question_mark,
    };

    return ListTile(
      title: Text(fileTitle),
      leading: Icon(icon),
      onTap: () => _openFile(context, attachment, fileTitle, fileType),
    );
  }

  _openFile(
    BuildContext context,
    String attachment,
    String fileTitle,
    FileType fileType,
  ) {
    if (fileType.isUnsupported) {
      _showAlertDialog(
        context,
        "Fehler",
        "Es können aktuell nur PDF Dateien oder Bilder geöffnet werden",
      );
      return;
    }

    final url = Strings.attachmentDownloadLink(baseUrl, attachment);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return switch (fileType) {
            FileType.pdf => PDFScreen(
                pdfLink: url,
                pageTitle: fileTitle,
              ),
            FileType.image => FullscreenImage(url: url),
            FileType.unsupported => throw UnimplementedError(),
          };
        },
      ),
    );
  }

  _showAlertDialog(
    BuildContext context,
    String title,
    String message, {
    String okText = "OK",
    Function()? okAction,
    bool withCancel = false,
  }) {
    // set up the button
    Widget okButton = TextButton(
      onPressed: () {
        okAction?.call();
        Navigator.of(context).pop();
      },
      child: Text(okText),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        okButton,
        if (withCancel)
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Abbrechen"),
          ),
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
}

enum FileType {
  pdf,
  image,
  unsupported;

  static FileType getFileType(String fileName) {
    final mimeType = lookupMimeType(fileName);

    if (mimeType == null) return FileType.unsupported;

    if (mimeType.startsWith("image")) return FileType.image;
    if (mimeType == "application/pdf") return FileType.pdf;

    return FileType.unsupported;
  }

  bool get isPdf => this == FileType.pdf;

  bool get isImage => this == FileType.image;

  bool get isUnsupported => this == FileType.unsupported;
}

class DownloadDialog extends StatefulWidget {
  final Function(bool) downloadAction;

  const DownloadDialog({
    super.key,
    required this.downloadAction,
  });

  @override
  State<DownloadDialog> createState() => _DownloadDialogState();
}

class _DownloadDialogState extends State<DownloadDialog> {
  bool _showDownloadDialog = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Herunterladen"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Alle Anhänge für 90 Tage in der App offline verfügbar machen",
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Switch(
                value: _showDownloadDialog,
                onChanged: (newValue) {
                  setState(() {
                    _showDownloadDialog = newValue;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Nicht erneut nachfragen"),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            widget.downloadAction(
              _showDownloadDialog,
            );
            Navigator.of(context).pop();
          },
          child: const Text("Herunterladen"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Abbrechen"),
        ),
      ],
    );
  }
}
