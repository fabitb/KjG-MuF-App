import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:kjg_muf_app/model/game.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';

//const String backendBaseURL = "https://app.kjg-muenchen.de/api";
const String backendBaseURL = "http://192.168.177.153:3000/api";

class BackendService {
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> cookies = {};

  final _dio = Dio(
    BaseOptions(
      baseUrl: backendBaseURL,
    ),
  );

  BackendService() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        // Logging interceptor für Debug-Ausgaben
        onRequest: (options, handler) {
          debugPrint("Request: ${options.method} ${options.uri}");
          debugPrint("Headers: ${options.headers}");
          debugPrint("Body: ${options.data}");
          handler.next(options); // Weiter mit der Anfrage
        },
        onResponse: (response, handler) {
          debugPrint(
            "Response: ${response.statusCode} ${response.statusMessage}",
          );
          debugPrint("Response Body: ${response.data}");
          handler.next(response); // Weiter mit der Antwort
        },
        onError: (DioException e, handler) {
          debugPrint("Error: ${e.response?.statusCode} ${e.message}");
          handler.next(e); // Fehler weitergeben
        },
      ),
    );
  }

  Future<bool> getBackendStatus() async {
    http.Response response;
    try {
      response = await _get("$backendBaseURL/status");
    } on Exception catch (_) {
      return false;
    }
    return response.statusCode >= 200 && response.statusCode <= 300;
  }

  Future<List<Game>> getGames({bool showReviewedGames = true}) async {
    String url = "$backendBaseURL/games";

    if (!showReviewedGames &&
        SharedPreferencesService.instance.gamesApiKey != null) {
      url +=
          "?reviewed=false&apiToken=${SharedPreferencesService.instance.gamesApiKey}";
    }

    final response = await _get(url);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => Game.fromJson(e)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<Game> createGame(Game game) async {
    http.Response response;
    try {
      response = await _post("$backendBaseURL/game", body: game.toJson());
    } on Exception catch (e) {
      throw Exception(e);
    }
    return Game.fromJson(json.decode(response.body));
  }

  Future<Game> updateGame(Game game) async {
    http.Response response;
    try {
      response = await _put(
        "$backendBaseURL/game/${game.id}?apiToken=${SharedPreferencesService.instance.gamesApiKey}",
        body: game.toJson(),
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
    return Game.fromJson(json.decode(response.body));
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

  Future<http.Response> _get(String url) {
    return http
        .get(Uri.parse(url), headers: headers)
        .then((http.Response response) {
      final int statusCode = response.statusCode;

      _updateCookie(response);

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }
      return response;
    });
  }

  Future<http.Response> _post(String url, {body, encoding}) {
    return http
        .post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: headers,
      encoding: encoding,
    )
        .then((http.Response response) {
      final int statusCode = response.statusCode;

      _updateCookie(response);

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }
      return response;
    });
  }

  Future<http.Response> _put(String url, {body, encoding}) {
    return http
        .put(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: headers,
      encoding: encoding,
    )
        .then((http.Response response) {
      final int statusCode = response.statusCode;
      _updateCookie(response);

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }
      return response;
    });
  }

  void _updateCookie(http.Response response) {
    String? allSetCookie = response.headers['set-cookie'];

    if (allSetCookie != null) {
      var setCookies = allSetCookie.split(',');

      for (var setCookie in setCookies) {
        var cookies = setCookie.split(';');

        for (var cookie in cookies) {
          _setCookie(cookie);
        }
      }

      headers['cookie'] = _generateCookieHeader();
    }
  }

  void _setCookie(String rawCookie) {
    if (rawCookie.isNotEmpty) {
      var keyValue = rawCookie.split('=');
      if (keyValue.length == 2) {
        var key = keyValue[0].trim();
        var value = keyValue[1];

        // ignore keys that aren't cookies
        if (key == 'path' || key == 'expires') {
          return;
        }

        cookies[key] = value;
      }
    }
  }

  String _generateCookieHeader() {
    String cookie = "";

    for (var key in cookies.keys) {
      if (cookie.isNotEmpty) {
        cookie += ";";
      }
      cookie += "$key=${cookies[key]}";
    }

    return cookie;
  }
}
