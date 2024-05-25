import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/wordpress_service.dart';
import 'package:kjg_muf_app/model/news.dart';

class DashboardViewModel extends ChangeNotifier {
  List<News>? _news;
  List<News>? get news => _news;
  PostLoadingState get newsLoadingState => _setLoadingState(news);

  List<News>? _activities;
  List<News>? get activities => _activities;
  PostLoadingState get activitiesLoadingState => _setLoadingState(activities);

  DashboardViewModel() {
    loadPosts();
  }

  Future<void> loadPosts() async {
    _news = await WordpressService().getNews();
    _activities = await WordpressService().getActivities();
    notifyListeners();
  }

  PostLoadingState _setLoadingState<T>(List<T>? list) {
    if (list == null) {
      return PostLoadingState.loading;
    } else if (list.isEmpty) {
      return PostLoadingState.noPostAvailable;
    } else if (list.isNotEmpty) {
      return PostLoadingState.postsLoaded;
    } else {
      return PostLoadingState.error;
    }
  }
}

enum PostLoadingState { loading, noPostAvailable, postsLoaded, error }
