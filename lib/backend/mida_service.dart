import 'dart:convert';

import 'package:http/http.dart' as http;

class MidaService {

  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();

  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

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

  Future<http.Response> get(String url) {
    return http.get(Uri.parse(url), headers: headers).then((http.Response response) {

      final String res = response.body;
      final int statusCode = response.statusCode;

      _updateCookie(response);

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }
      return response;//_decoder.convert(res);
    });
  }

  Future<http.Response> post(String url, {body, encoding}) {
    return http
        .post(Uri.parse(url), body: _encoder.convert(body), headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      _updateCookie(response);

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }
      return response;//_decoder.convert(res);
    });
  }

  Future<http.Response> verifyLogin(String email, String password) {
    return post("https://mida.kjg.de/DVMuenchenundFreising/?api=VerifyLogin&token=A/fabian.thomas-barein/70c1941a720039395c705ae93f858a3d&user=fabian.thomas-barein&password=Abschluss.15");
    print("https://mida.kjg.de/DVMuenchenundFreising/?api=VerifyLogin&user=$email&password=$password");
    print(Uri.parse("https://mida.kjg.de/DVMuenchenundFreising/?api=VerifyLogin&user=fabian.thomas-barein&password=Abschluss.15"));
    return http.post(
      Uri.parse("https://mida.kjg.de/DVMuenchenundFreising/?api=VerifyLogin&user=$email&password=$password"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  Future<http.Response> getGroups() {
    return get("https://mida.kjg.de/DVMuenchenundFreising/?api=GetGroups&token=A/fabian.thomas-barein/70c1941a720039395c705ae93f858a3d");
  }

}
