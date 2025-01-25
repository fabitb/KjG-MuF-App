import 'package:isar/isar.dart';

part 'news_model.g.dart';

@collection
class NewsModel {
  late Id id = Isar.autoIncrement;
  late String title;
  late String content;
  late String imageURL;
  late String websiteURL;
  late int orderNumber;
}
