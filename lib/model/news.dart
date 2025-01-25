import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';

class News {
  final String title;
  final String content;
  final String imageURL;
  final String websiteURL;

  const News({
    required this.title,
    required this.content,
    required this.imageURL,
    required this.websiteURL,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> yoastContent = json["yoast_head_json"];
    String title = json["title"]["rendered"];
    String content = yoastContent["og_description"];
    String imageURL = yoastContent["og_image"][0]["url"];
    String websiteURL = yoastContent["og_url"];

    return News(
      title: title,
      content: content,
      imageURL: imageURL,
      websiteURL: websiteURL,
    );
  }

  factory News.fromNewsModel(NewsModel newsModel) {
    return News(
      title: newsModel.title,
      content: newsModel.content,
      imageURL: newsModel.imageURL,
      websiteURL: newsModel.websiteURL,
    );
  }

  factory News.fromActivitiesModel(ActivitiesModel activitiesModel) {
    return News(
      title: activitiesModel.title,
      content: activitiesModel.content,
      imageURL: activitiesModel.imageURL,
      websiteURL: activitiesModel.websiteURL,
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
      ),
    );
  }
}
