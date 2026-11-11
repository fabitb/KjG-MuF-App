import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kjg_muf_app/utils/url_helper.dart';

/// Displays [text] and turns any contained https links into tappable spans
/// that open the link.
class LinkifiedText extends StatefulWidget {
  final String text;
  final TextStyle? style;

  const LinkifiedText(this.text, {super.key, this.style});

  @override
  State<LinkifiedText> createState() => _LinkifiedTextState();
}

class _LinkifiedTextState extends State<LinkifiedText> {
  static final _urlRegex = RegExp(r'https://[^\s<>"]+', caseSensitive: false);

  // Punctuation that usually ends a sentence rather than belonging to the link.
  static final _trailingPunctuation = RegExp(r'[.,;:!?)\]}]+$');

  final List<TapGestureRecognizer> _recognizers = [];

  @override
  void dispose() {
    _disposeRecognizers();
    super.dispose();
  }

  void _disposeRecognizers() {
    for (final recognizer in _recognizers) {
      recognizer.dispose();
    }
    _recognizers.clear();
  }

  List<InlineSpan> _buildSpans(BuildContext context) {
    _disposeRecognizers();

    final linkStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      decoration: TextDecoration.underline,
    );
    final spans = <InlineSpan>[];
    var currentIndex = 0;

    for (final match in _urlRegex.allMatches(widget.text)) {
      var url = match.group(0)!;
      final trailing = _trailingPunctuation.firstMatch(url)?.group(0) ?? "";
      url = url.substring(0, url.length - trailing.length);
      if (url.isEmpty) continue;

      if (match.start > currentIndex) {
        spans.add(
          TextSpan(text: widget.text.substring(currentIndex, match.start)),
        );
      }

      final recognizer = TapGestureRecognizer()
        ..onTap = () => URLHelper.openUrl(context, url);
      _recognizers.add(recognizer);
      spans.add(TextSpan(text: url, style: linkStyle, recognizer: recognizer));

      currentIndex = match.start + url.length;
    }

    if (currentIndex < widget.text.length) {
      spans.add(TextSpan(text: widget.text.substring(currentIndex)));
    }
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(style: widget.style, children: _buildSpans(context)),
    );
  }
}
