import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullscreenImage extends StatelessWidget {
  final String url;

  const FullscreenImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoView(
        backgroundDecoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        minScale: PhotoViewComputedScale.contained,
        maxScale: PhotoViewComputedScale.covered * 2,
        imageProvider: NetworkImage(url),
      ),
    );
  }
}
