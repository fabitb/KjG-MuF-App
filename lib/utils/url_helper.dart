import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:kjg_muf_app/ui/screens/dashboard_webview_screen.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class URLHelper {
  static bool isInternalUrl(String url) {
    return url.startsWith("https://mida.kjg.de") ||
        url.startsWith("https://muenchen.kjg.de");
  }

  /*
  _openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
   */

  static Future<void> openUrl(BuildContext context, String url) async {
    if (isInternalUrl(url)) {
      // open internal WebView
      await showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        builder: (BuildContext context) {
          return DashboardWebViewScreen(
            url: url,
          );
        },
      );
    } else {
      final uri = Uri.parse(url);
      await launchUrl(uri);
    }
  }

  static Future<NavigationActionPolicy?> shouldOverrideUrlLoading(
    InAppWebViewController controller,
    NavigationAction navigationAction,
  ) async {
    final rawUrl = navigationAction.request.url?.rawValue;
    if (rawUrl == null) return NavigationActionPolicy.CANCEL;

    if (URLHelper.isInternalUrl(rawUrl)) {
      return NavigationActionPolicy.ALLOW;
    }
    await launchUrl(Uri.parse(rawUrl));
    return NavigationActionPolicy.CANCEL;
  }

  static Future<void> sendEmail(String email) async {
    await launchUrl(Uri.parse("mailto:$email"));
  }
}
