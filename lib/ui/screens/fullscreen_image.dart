import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:photo_view/photo_view.dart';

class FullscreenImage extends StatelessWidget {
  final String url;

  const FullscreenImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<File>(
        future: KjGCacheManager.instance.getSingleFile(url),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 2,
              imageProvider: FileImage(snapshot.data!.absolute),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
