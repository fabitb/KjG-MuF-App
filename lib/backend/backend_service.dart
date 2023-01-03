import 'dart:async';
import 'dart:convert';
import 'package:kjg_muf_app/model/event.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';

class BackendService {
    
  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();

  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

  Future<bool> getBackendStatus() async {
    http.Response response;
    try {
      response = await _get("http://kjg.thomas-barein.de/api/status");
    } on Exception catch (_) {
      return false;
    }
    return response.statusCode >= 200 && response.statusCode <= 300;
  }

  Future<http.Response> _get(String url) {
    return http.get(Uri.parse(url), headers: headers).then((http.Response response) {

      final String res = response.body;
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
        .post(Uri.parse(url), body: _encoder.convert(body), headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
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
