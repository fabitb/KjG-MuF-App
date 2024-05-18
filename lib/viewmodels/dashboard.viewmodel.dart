import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/wordpress_service.dart';

import '../model/news.dart';

class DashboardViewModel extends ChangeNotifier {
  List<News>? _news;
  List<News>? get news => _news;

  DashboardViewModel() {
    loadPosts();
  }

  Future<void> loadPosts() async {
    _news = await WordpressService().getNews();
    notifyListeners();
  }
}
