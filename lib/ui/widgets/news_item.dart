import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/news.dart';

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
              ? Image.network(
                  news.imageURL,
                  fit: BoxFit.cover,
                )
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
}
