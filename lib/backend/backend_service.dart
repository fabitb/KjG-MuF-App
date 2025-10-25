import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';

const String backendBaseURL = "https://app.kjg-muenchen.de/api";

class BackendService {
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> cookies = {};

  final _dio = Dio(
    BaseOptions(
      baseUrl: backendBaseURL,
    ),
  );

  BackendService() {
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(),
      );
    }
  }

  Future<List<Game>> getGames({bool showReviewedGames = true}) async {
    final responseNew = await _dio.get(
      "$backendBaseURL/games",
      queryParameters: {
        "reviewed": showReviewedGames,
        "apiToken": SharedPreferencesService.instance.gamesApiKey,
      },
    );

    if (responseNew.data case {"error": String error} when error.isNotEmpty) {
      throw Exception;
    }

    if (responseNew.data case List<dynamic> list) {
      final results = list.map((e) => Game.fromJson(e));
      return results.nonNulls.toList();
    }

    throw Exception();
  }

  Future<Game> createGame(Game game) async {
    final response = await _dio.post(
      "$backendBaseURL/game",
      data: game.toJson(),
    );

    return Game.fromJson(response.data);
  }

  Future<Game> updateGame(Game game) async {
    final response = await _dio.put(
      "$backendBaseURL/game/${game.id}",
      queryParameters: {
        "apiToken": SharedPreferencesService.instance.gamesApiKey,
      },
      data: game.toJson(),
    );

    return Game.fromJson(response.data);
  }

  Future<bool> isAuthorized(String apiToken) async {
    final response = await _dio
        .post("/games/isAuthorized", queryParameters: {"apiToken": apiToken});
    return response.data["success"] as bool;
  }

  Future<Game> setReviewStatus(String id, bool isReviewed) async {
    final response = await _dio.post(
      "/game/$id/reviewed",
      queryParameters: {
        "apiToken": SharedPreferencesService.instance.gamesApiKey,
        "reviewed": isReviewed,
      },
    );
    return Game.fromJson(response.data);
  }

  Future<void> deleteGame(String id) async {
    await _dio.delete(
      "/game/$id?apiToken=${SharedPreferencesService.instance.gamesApiKey}",
    );
    return;
  }
}
