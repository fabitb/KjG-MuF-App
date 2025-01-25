import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/wordpress_service.dart';
import 'package:kjg_muf_app/model/news.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@riverpod
Future<List<News>> news(Ref ref) async {
  return await WordpressService().getNews();
}

@riverpod
Future<List<News>> activities(Ref ref) async {
  return await WordpressService().getActivities();
}
