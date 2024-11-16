import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:kjg_muf_app/constants/strings.dart';

class DataPrivacyScreen extends StatelessWidget {
  const DataPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datenschutz"),
      ),
      body: InAppWebView(
        initialSettings: InAppWebViewSettings(
          useShouldOverrideUrlLoading: true,
        ),
        onPageCommitVisible: (controller, url) {
          controller.addUserScript(
            userScript: UserScript(
              source: """
                    var header = document.querySelector('div.container.main-container');
                    var menuButton = document.querySelector('.rmp_menu_trigger');
                    var crumbs = document.querySelector('.breadcrumbs');
                    var bottomMenu = document.querySelector('#colophon');
                    var body = document.querySelector('body');
                    body.classList.remove("has-no-thumb");
                    header.remove();
                    menuButton.remove();
                    crumbs.remove();
                    bottomMenu.remove();
                    """,
              injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END,
            ),
          );
        },
        shouldOverrideUrlLoading: (controller, navigationAction) async {
          if (navigationAction.request.url.toString() ==
              Strings.dataPrivacyLink) {
            return NavigationActionPolicy.ALLOW;
          }
          return NavigationActionPolicy.CANCEL;
        },
        initialUrlRequest:
            URLRequest(url: WebUri.uri(Uri.parse(Strings.dataPrivacyLink))),
      ),
    );
  }
}
