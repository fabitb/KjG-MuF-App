import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/model/registration.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';

const String midaBaseURL = "https://mida.kjg.de/DVMuenchenundFreising";

class MidaService {
  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();

  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

  Future<bool> verifyLoginForUserName(String username, String password) async {
    final passwordHash = _generateMd5(password);
    final response = await _post(
        "$midaBaseURL/?api=VerifyLogin&token=A/$username/$passwordHash&user=$username&password=$password");

    if (response.statusCode == 200) {
      try {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse['error'] != null) {
          print(jsonResponse['error']);
          return false;
        }
      } catch (error) {
        List jsonResponse = json.decode(response.body);
        if (jsonResponse.isNotEmpty) {
          await SharedPref().saveName(jsonResponse.first);
          await SharedPref().saveUserName(username);
          await SharedPref().savePasswordHash(passwordHash);
          return true;
        }
      }
    }
    return false;
  }

  Future<bool> verifyLoginForUserID(String username, String password) async {
    final passwordHash = _generateMd5(password);
    final response = await _post(
        "$midaBaseURL/?api=VerifyLogin&token=A/$username/$passwordHash&user=$username&password=$password&result=id");

    if (response.statusCode == 200) {
      try {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse['error'] != null) {
          print(jsonResponse['error']);
          return false;
        }
      } catch (error) {
        List jsonResponse = json.decode(response.body);
        if (jsonResponse.isNotEmpty) {
          await SharedPref().saveUserID(int.parse(jsonResponse.first));
          return true;
        }
      }
    }
    return false;
  }

  Future<List<Event>> getEvents() async {
    final response = await _get(
        "$midaBaseURL/?api=GetEvents&jahr=zukunft&restriction=mandant=503||866||867||868||869||870||871||872||873||874||875||876||877||878||879||880||881");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Event.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<List<Registration>> getRegistrationsForEvent(String eventID) async {
    final response = await _get(
        "$midaBaseURL/?api=GetRegistrations&token=${await SharedPref().getToken()}&id=$eventID");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Registration.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<http.Response> _get(String url) {
    return http
        .get(Uri.parse(url), headers: headers)
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

  Future<http.Response> _post(String url, {body, encoding}) {
    return http
        .post(Uri.parse(url),
            body: _encoder.convert(body), headers: headers, encoding: encoding)
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

  String _generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
