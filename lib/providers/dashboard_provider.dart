import 'package:kjg_muf_app/backend/wordpress_service.dart';
import 'package:kjg_muf_app/database/app_database.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';
import 'package:kjg_muf_app/model/news.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@riverpod
Stream<List<News>?> news(Ref ref) async* {
  final List<News> cachedNews = (await AppDatabase().getCachedNews())
      .map((newsModel) => News.fromNewsModel(newsModel))
      .toList();
  yield cachedNews.isNotEmpty ? cachedNews : null;

  try {
    final List<News> networkData = await WordpressService().getNews();
    await AppDatabase().cacheNews(
      networkData
          .map(
            (news) => NewsModel()
              ..title = news.title
              ..content = news.content
              ..imageURL = news.imageURL
              ..websiteURL = news.websiteURL
              ..orderNumber = news.orderNumber,
          )
          .toList(),
    );
    yield networkData;
  } on Exception {
    // ignore, just show cache
  }
}

@riverpod
Stream<List<News>?> activities(Ref ref) async* {
  final List<News> cachedActivities =
      (await AppDatabase().getCachedActivities())
          .map((activitiesModel) => News.fromActivitiesModel(activitiesModel))
          .toList();
  yield cachedActivities.isNotEmpty ? cachedActivities : null;

  try {
    final List<News> networkData = await WordpressService().getActivities();
    await AppDatabase().cacheActivities(
      networkData
          .map(
            (news) => ActivitiesModel()
              ..title = news.title
              ..content = news.content
              ..imageURL = news.imageURL
              ..websiteURL = news.websiteURL
              ..orderNumber = news.orderNumber,
          )
          .toList(),
    );
    yield networkData;
  } on Exception {
    // ignore, just show cache
  }
}
