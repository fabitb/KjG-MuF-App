import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/news.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';

class NewsItem extends StatelessWidget {
  final News news;

  const NewsItem({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          news.imageURL.isNotEmpty
              ? _getImageCached(context, news.imageURL)
              : Container(
                  color: KjGColors.kjgLightBlue,
                ),
          Image.asset(
            "assets/elements/bottom_element.png",
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                news.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImageCached(BuildContext context, String imageUrl) {
    return FutureBuilder(
      future: KjGCacheManager.instance.getSingleFile(imageUrl),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Image(
            image: FileImage(snapshot.data!.absolute),
            fit: BoxFit.cover,
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
