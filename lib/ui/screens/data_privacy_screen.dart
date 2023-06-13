import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:kjg_muf_app/constants/strings.dart';

class DataPrivacyScreen extends StatelessWidget {
  DataPrivacyScreen({super.key});

  final InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datenschutz"),
      ),
      body: InAppWebView(
          initialOptions: options,
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            if (navigationAction.request.url.toString() ==
                Strings.dataPrivacyLink) {
              return NavigationActionPolicy.ALLOW;
            }
            return NavigationActionPolicy.CANCEL;
          },
          initialUrlRequest:
              URLRequest(url: Uri.parse(Strings.dataPrivacyLink))),
    );
  }
}
