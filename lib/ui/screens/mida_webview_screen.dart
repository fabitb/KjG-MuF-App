import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MidaWebViewScreen extends StatelessWidget {
  MidaWebViewScreen({super.key, required this.url, required this.token});

  final String url;
  final String? token;

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:
            MediaQuery.of(context).size.height - AppBar().preferredSize.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const CloseButton(),
          Expanded(
              child: InAppWebView(
                  onCloseWindow: (controller) {
                    Navigator.of(context).pop();
                  },
                  onJsAlert: (controller, jsAlertRequest) {
                    if (jsAlertRequest.message ==
                        "Skripte können keine Fenster schließen, die nicht von ihnen geöffnet wurden.") {
                      Navigator.of(context).pop();
                      return Future.value(
                          JsAlertResponse(handledByClient: true));
                    }
                    return Future.value(null);
                  },
                  gestureRecognizers: gestureRecognizers,
                  initialUrlRequest: URLRequest(
                      url: Uri.parse(
                          "$url${token != null ? "&token=$token" : ""}"))))
        ]));
  }
}
