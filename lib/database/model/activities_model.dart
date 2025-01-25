import 'package:isar/isar.dart';

part 'activities_model.g.dart';

@collection
class ActivitiesModel {
  late Id id = Isar.autoIncrement;
  late String title;
  late String content;
  late String imageURL;
  late String websiteURL;
  late int orderNumber;
}
