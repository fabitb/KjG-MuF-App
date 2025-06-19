import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/attachment_cache_provider.dart';
import 'package:kjg_muf_app/ui/screens/attachment_screen.dart';
import 'package:kjg_muf_app/ui/widgets/download_dialog.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:mime/mime.dart';

class AttachmentsWidget extends ConsumerStatefulWidget {
  final List<EventAttachment> attachments;

  const AttachmentsWidget({super.key, required this.attachments});

  @override
  ConsumerState<AttachmentsWidget> createState() => _AttachmentsWidgetState();
}

class _AttachmentsWidgetState extends ConsumerState<AttachmentsWidget> {
  bool _loading = false;

  Future<void> _cacheAttachments() async {
    List<Future> futures = [];

    final attachmentsCache = ref.read(attachmentCacheProvider.notifier);
    for (var attachment in widget.attachments) {
      futures.add(attachmentsCache.downloadAttachment(attachment));
    }

    setState(() {
      _loading = true;
    });

    try {
      await Future.wait(futures, eagerError: true);
    } on Exception {
      // ignore
    }

    if (mounted) {
      setState(() {
        _loading = false;
      });
    }
  }

  Future<void> _deleteAttachments() async {
    List<Future> futures = [];

    final attachmentsCache = ref.read(attachmentCacheProvider.notifier);
    for (var attachment in widget.attachments) {
      futures.add(attachmentsCache.removeAttachment(attachment));
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

  _openFile(BuildContext context, EventAttachment attachment) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AttachmentScreen(attachment: attachment),
      ),
    );
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

    final cachedKeys =
        ref.watch(attachmentCacheProvider).valueOrNull?.map((e) => e.key) ?? [];
    final allCached =
        widget.attachments.where((e) => !cachedKeys.contains(e.key)).isEmpty;
    if (!allCached) {
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

  Widget _attachment(BuildContext context, EventAttachment attachment) {
    final fileType = attachment.fileType;

    final cached = ref.watch(attachmentCachedProvider(key: attachment.key));

    return ListTile(
      title: Text(
        attachment.displayName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Icon(fileType.icon),
      trailing: cached ? Icon(Icons.download_done) : null,
      onTap: () => _openFile(context, attachment),
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

  IconData get icon {
    return switch (this) {
      FileType.pdf => Icons.picture_as_pdf,
      FileType.image => Icons.image,
      FileType.unsupported => Icons.question_mark,
    };
  }
}
