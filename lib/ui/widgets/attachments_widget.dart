import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/ui/screens/fullscreen_image.dart';
import 'package:kjg_muf_app/ui/screens/pdf_screen.dart';
import 'package:kjg_muf_app/ui/widgets/download_dialog.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:mime/mime.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

class AttachmentsWidget extends StatefulWidget {
  final MidaEvent event;
  final String baseUrl;
  final List<String> attachments;

  const AttachmentsWidget({
    super.key,
    required this.event,
    required this.attachments,
    required this.baseUrl,
  });

  @override
  State<AttachmentsWidget> createState() => _AttachmentsWidgetState();
}

class _AttachmentsWidgetState extends State<AttachmentsWidget> {
  bool _loading = false;

  Map<String, bool> get _attachmentCached => {
        for (var a in widget.attachments)
          a: KjGCacheManager.instance.store.memoryCacheContainsKey(
            Strings.attachmentDownloadLink(widget.baseUrl, a),
          ),
      };

  Future<void> _cacheAttachments() async {
    List<Future> futures = [];
    final event = widget.event;

    for (var attachment in widget.attachments) {
      final url = Strings.attachmentDownloadLink(widget.baseUrl, attachment);

      futures.add(KjGCacheManager.instance.downloadFile(url));
    }

    setState(() {
      _loading = true;
    });

    try {
      await Future.wait(futures, eagerError: true);
    } on Exception {
      // ignore
    }

    setState(() {
      _loading = false;
    });
  }

  Future<void> _deleteAttachments() async {
    List<Future> futures = [];

    for (var attachment in widget.attachments) {
      final url = Strings.attachmentDownloadLink(widget.baseUrl, attachment);

      futures.add(KjGCacheManager.instance.removeFile(url));
    }

    await Future.wait(futures);

    setState(() {});
  }

  _showDownloadDialog() {
    if (!SharedPreferencesService.instance.downloadDialogShown) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return DownloadDialog(
            downloadAction: (showDownloadDialog) {
              if (showDownloadDialog) {
                SharedPreferencesService.instance.downloadDialogShown = true;
              }
              _cacheAttachments();
            },
          );
        },
      );
    } else {
      _cacheAttachments();
    }
  }

  _showDeleteDialog() {
    _showAlertDialog(
      context,
      context.localizations.delete,
      context.localizations.deleteDescription,
      okAction: () {
        _deleteAttachments();
      },
      okText: context.localizations.delete,
      withCancel: true,
    );
  }

  _openFile(
    BuildContext context,
    String attachment,
    String fileTitle,
    FileType fileType,
  ) async {
    if (fileType.isUnsupported) {
      _showAlertDialog(
        context,
        context.localizations.error,
        context.localizations.fileErrorDescription,
      );
      return;
    }

    final url = Strings.attachmentDownloadLink(widget.baseUrl, attachment);

    await Navigator.of(context).push(
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

    setState(() {});
  }

  _showAlertDialog(
    BuildContext context,
    String title,
    String message, {
    String? okText,
    Function()? okAction,
    bool withCancel = false,
  }) {
    okText ??= context.localizations.ok;

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
            child: Text(context.localizations.cancel),
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
                  Text(
                    context.localizations.attachments,
                    style: const TextStyle(fontSize: 16),
                  ),
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
    if (_loading) {
      return const IconButton(
        onPressed: null,
        icon: SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (_attachmentCached.containsValue(false)) {
      return IconButton(
        onPressed: _showDownloadDialog,
        icon: const Icon(Icons.download),
      );
    }

    return IconButton(
      onPressed: _showDeleteDialog,
      icon: const Icon(Icons.delete),
    );
  }

  Iterable<Widget> _getAttachments(BuildContext context) {
    return widget.attachments.map((e) {
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

    final cached = _attachmentCached[attachment] ?? false;

    return ListTile(
      title: Text(fileTitle),
      leading: Icon(icon),
      trailing: cached ? Icon(Icons.download_done) : null,
      onTap: () => _openFile(context, attachment, fileTitle, fileType),
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
