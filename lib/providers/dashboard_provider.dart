import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/wordpress_service.dart';
import 'package:kjg_muf_app/database/db_service.dart';
import 'package:kjg_muf_app/database/model/activities_model.dart';
import 'package:kjg_muf_app/database/model/news_model.dart';
import 'package:kjg_muf_app/model/news.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@riverpod
Stream<List<News>?> news(Ref ref) async* {
  final List<News> cachedNews = (await DBService().getCachedNews()).map((newsModel) => News.fromNewsModel(newsModel)).toList();
  yield cachedNews.isNotEmpty ? cachedNews : null;

  final List<News> networkData = await WordpressService().getNews();
  await DBService().cacheNews(
    networkData
        .map((news) => NewsModel()
          ..title = news.title
          ..content = news.content
          ..imageURL = news.imageURL
          ..websiteURL = news.websiteURL)
        .toList(),
  );
  yield networkData;
}

@riverpod
Stream<List<News>?> activities(Ref ref) async* {
  final List<News> cachedActivities = (await DBService().getCachedActivities()).map((activitiesModel) => News.fromActivitiesModel(activitiesModel)).toList();
  yield cachedActivities.isNotEmpty ? cachedActivities : null;

  final List<News> networkData = await WordpressService().getActivities();
  await DBService().cacheActivities(
    networkData
        .map((news) => ActivitiesModel()
          ..title = news.title
          ..content = news.content
          ..imageURL = news.imageURL
          ..websiteURL = news.websiteURL)
        .toList(),
  );
  yield networkData;
}
