import 'package:flutter/material.dart';

class FiveTapsRecognizer extends StatefulWidget {
  final Widget child;
  final VoidCallback onFiveTaps;

  const FiveTapsRecognizer({
    super.key,
    required this.child,
    required this.onFiveTaps,
  });

  @override
  State<FiveTapsRecognizer> createState() => _FiveTapsRecognizerState();
}

class _FiveTapsRecognizerState extends State<FiveTapsRecognizer> {
  int _tapCount = 0;
  DateTime? _lastTapTime;

  void _handleTap() {
    final now = DateTime.now();

    if (_lastTapTime == null ||
        now.difference(_lastTapTime!) > Duration(seconds: 1)) {
      // Reset counter if taps are too far apart
      _tapCount = 0;
    }

    _lastTapTime = now;
    _tapCount++;

    if (_tapCount == 5) {
      widget.onFiveTaps(); // Trigger the callback
      _tapCount = 0; // Reset the counter
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: widget.child,
    );
  }
}
