import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kjg_muf_app/model/game.dart';

const String backendBaseURL = "https://app.kjg-muenchen.de/api";

class BackendService {
  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();

  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

  Future<bool> getBackendStatus() async {
    http.Response response;
    try {
      response = await _get("$backendBaseURL/status");
    } on Exception catch (_) {
      return false;
    }
    return response.statusCode >= 200 && response.statusCode <= 300;
  }

  Future<List<Game>> getGames() async {
    final response = await _get("$backendBaseURL/games");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => Game.fromJson(e)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
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
      body: _encoder.convert(body),
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
