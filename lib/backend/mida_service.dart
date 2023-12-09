import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/model/registration.dart';
import 'package:kjg_muf_app/utils/csv_helper.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';

class MidaService {
  static final MidaService _midaService = MidaService._internal();

  factory MidaService() {
    return _midaService;
  }

  MidaService._internal();

  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();

  Map<String, String> headers = {"content-type": "text/json"};
  Map<String, String> cookies = {};

  void deleteAllCookies() {
    headers = {"content-type": "text/json"};
    cookies = {};
  }

  Future<bool> verifyLoginForUserName(String username, String password) async {
    final passwordHash = _generateMd5(password);
    final response = await _post(
        "${Strings.midaBaseURL}/?api=VerifyLogin&token=A/$username/$passwordHash&user=$username&password=$password");

    if (response.statusCode == 200) {
      try {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse['error'] != null) {
          debugPrint(jsonResponse['error']);
          return false;
        }
      } catch (error) {
        List jsonResponse = json.decode(response.body);
        if (jsonResponse.isNotEmpty) {
          await SharedPref().saveName(jsonResponse.first);
          await SharedPref().saveUserName(username);
          await SharedPref().savePasswordHash(passwordHash);
          await SharedPref().savePassword(password);
          return true;
        }
      }
    }
    return false;
  }

  Future<bool> verifyLoginForUserID(String username, String password) async {
    final passwordHash = _generateMd5(password);
    final response = await _post(
        "${Strings.midaBaseURL}/?api=VerifyLogin&token=A/$username/$passwordHash&user=$username&password=$password&result=id");

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

  Future<List<CSVEvent>> getFutureEventsPersonal() async {
    // get future events as csv [Datum, Bild, Veranstaltung, Verein, , , Ort, Status, Link]
    final response = await _get(
        "${Strings.midaBaseURL}/?action=events_kalender&print=csv&art=ListeZ&filtermandant=K");

    if (response.statusCode != 200) {
      throw Exception('Unexpected error occurred!');
    }

    final List<int> bytes = response.bodyBytes;
    // response header says utf8, but it isn't
    final String csvString = latin1.decode(bytes);

    List<CSVEvent> csvEvents = CSVHelper.csvToEvents(csvString);

    if (response.statusCode == 200) {
      return csvEvents;
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<List<CSVEvent>> getWeekEventsPersonal(DateTime dateTime) async {
    // get week of events starting at event date
    final response = await _get(
        "${Strings.midaBaseURL}/?action=events_kalender&print=csv&art=ListeWoche&start=${DateFormat('yyyy-MM-dd').format(dateTime)}&filtermandant=K");

    if (response.statusCode != 200) {
      throw Exception('Unexpected error occurred!');
    }

    final List<int> bytes = response.bodyBytes;
    // response header says utf8, but it isn't
    final String csvString = latin1.decode(bytes);

    List<CSVEvent> csvEvents = CSVHelper.csvToEvents(csvString);

    if (response.statusCode == 200) {
      return csvEvents;
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<List<Event>> getEvents() async {
    final response = await _get(
        "${Strings.midaBaseURL}/?api=GetEvents&jahr=zukunft&restriction=mandant=503||866||867||868||869||870||871||872||873||874||875||876||877||878||879||880||881");

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Event.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<Event> getEvent(String id) async {
    final response = await _get("${Strings.midaBaseURL}/?api=GetEvent&id=$id");

    if (response.statusCode == 200) {
      dynamic jsonResponse = json.decode(response.body);
      return Event.fromJson(jsonResponse);
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }

  Future<List<Registration>> getRegistrationsForEvent(String eventID) async {
    final response = await _get(
        "${Strings.midaBaseURL}/?api=GetRegistrations&token=${await SharedPref().getToken()}&id=$eventID");

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
