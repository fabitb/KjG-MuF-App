import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kjg_muf_app/model/news.dart';

const String wordpressBaseURL = "https://muenchen.kjg.de/wp-json/wp/v2";

class WordpressService {
  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

  Future<List<News>> getNews() async {
    final response = await _get("$wordpressBaseURL/posts?news-kategorie=149");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => News.fromJson(e)).toList();
    } else {
      throw Exception("Unexpected");
    }
  }

  Future<List<News>> getActivities() async {
    final response = await _get("$wordpressBaseURL/aktion?news-kategorie=149");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => News.fromJson(e)).toList();
    } else {
      throw Exception("Unexpected");
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
