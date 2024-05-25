import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/news.dart';
import 'package:kjg_muf_app/ui/widgets/news_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewsCarouselWidget extends StatefulWidget {
  final String title;
  final List<News>? newsList;
  final Function(News)? onNewsClicked;

  const NewsCarouselWidget({
    super.key,
    required this.title,
    required this.newsList,
    required this.onNewsClicked,
  });

  @override
  State<StatefulWidget> createState() => _NewsCarouselState();
}

class _NewsCarouselState extends State<NewsCarouselWidget> {
  int position = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final news = widget.newsList ?? News.createFakeData();

    return Skeletonizer(
      effect: const ShimmerEffect(),
      enabled: widget.newsList == null,
      child: Column(
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: KjGColors.kjgLightBlue,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: PageView.builder(
              controller: pageController,
              itemCount: news.length,
              itemBuilder: (context, pagePosition) {
                return GestureDetector(
                  onTap: () => widget.onNewsClicked?.call(news[pagePosition]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: NewsItem(news: news[pagePosition]),
                  ),
                );
              },
              onPageChanged: (page) {
                setState(() {
                  position = page;
                });
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          if (widget.newsList != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(news.length, (index) {
                return Row(
                  children: [
                    positionCircle(index),
                    const SizedBox(
                      width: 4.0,
                    ),
                  ],
                );
              }),
            ),
        ],
      ),
    );
  }

  Widget positionCircle(int p) {
    return GestureDetector(
      onTap: () => setState(() {
        pageController.animateToPage(
          p,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: position == p ? KjGColors.kjgDarkBlue : Colors.grey.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }
}
