import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DashboardWebViewScreen extends StatelessWidget {
  final String url;

  DashboardWebViewScreen({
    super.key,
    required this.url,
  });

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer()),
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CloseButton(),
          Expanded(
            child: InAppWebView(
              onWebViewCreated: (controller) {
                // close popup handler
                controller.addJavaScriptHandler(
                  handlerName: "closePopup",
                  callback: (args) {
                    Navigator.of(context).pop();
                  },
                );
              },
              gestureRecognizers: gestureRecognizers,
              initialUrlRequest: URLRequest(
                url: Uri.parse(url),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
