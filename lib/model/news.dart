import 'package:kjg_muf_app/constants/constants.dart';

class News {
  final String title;
  final String content;
  final String imageURL;
  final String websiteURL;
  final int orderNumber;

  const News({
    required this.title,
    required this.content,
    required this.imageURL,
    required this.websiteURL,
    required this.orderNumber,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> yoastContent = json["yoast_head_json"];
    String title = json["title"]["rendered"];
    String content = yoastContent["og_description"];
    String imageURL = yoastContent["og_image"][0]["url"];
    String websiteURL = yoastContent["og_url"];
    int orderNumber = json["menu_order"] ?? Constants.maxInt;

    return News(
      title: title,
      content: content,
      imageURL: imageURL,
      websiteURL: websiteURL,
      orderNumber: orderNumber,
    );
  }

  static List<News> createFakeData() {
    return List.generate(
      2,
      (index) => const News(
        title: "NewsTitle",
        content: "NewsContent",
        imageURL: "",
        websiteURL: "NewsWebsiteURL",
        orderNumber: 0,
      ),
    );
  }
}
