import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MidaWebViewScreen extends StatelessWidget {
  MidaWebViewScreen(
      {super.key, required this.url, required this.token, this.addToCalendar});

  final String url;
  final String? token;
  final Function? addToCalendar;

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
                // inject custom handlers (callback to flutter in JS)
                // add to calendar handler
                controller.addJavaScriptHandler(
                  handlerName: "addToCalendar",
                  callback: (args) {
                    addToCalendar?.call();
                  },
                );

                // close popup handler
                controller.addJavaScriptHandler(
                  handlerName: "closePopup",
                  callback: (args) {
                    Navigator.of(context).pop();
                  },
                );
              },
              onLoadStop: (controller, url) {
                // Remove link from all calendar buttons and call handler instead
                controller.evaluateJavascript(
                  source: """
                      function flutterAddToCalendar() {
                        window.flutter_inappwebview.callHandler("addToCalendar");
                      }
                      
                      // find all buttons that use mida calendar export action
                      let buttons = document.querySelectorAll("a[href^='./?action=events_exportoutlook']");
                      
                      buttons.forEach((btn) => {
                        btn.removeAttribute("href");
                        btn.onclick = flutterAddToCalendar;
                      });                
                    """,
                );

                // override mida CancelPopup function
                controller.evaluateJavascript(
                  source: """
                      CancelPopup = () => {
                        window.flutter_inappwebview.callHandler("closePopup");
                      }
                    """,
                );
              },
              gestureRecognizers: gestureRecognizers,
              initialUrlRequest: URLRequest(
                  url:
                      Uri.parse("$url${token != null ? "&token=$token" : ""}")),
            ),
          ),
        ],
      ),
    );
  }
}
