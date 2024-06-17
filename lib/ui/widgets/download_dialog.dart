import 'package:flutter/material.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

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
      title: Text(context.localizations.download),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.localizations.downloadDescription),
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
              Text(context.localizations.dontAskAgain),
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
          child: Text(context.localizations.download),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.localizations.cancel),
        ),
      ],
    );
  }
}
