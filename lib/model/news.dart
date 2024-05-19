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
}
