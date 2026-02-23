import 'package:flutter/material.dart';

class WebViewPop extends StatefulWidget {
  final Widget child;

  /// Constructs a widget that hides the child when the screen is popped.
  ///
  /// This is useful for the WebView, which stays behind otherwise.
  const WebViewPop({super.key, required this.child});

  @override
  State<WebViewPop> createState() => _WebViewPopState();
}

class _WebViewPopState extends State<WebViewPop> {
  bool _popped = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        setState(() {
          _popped = true;
        });
      },
      child: _popped ? Container() : widget.child,
    );
  }
}
