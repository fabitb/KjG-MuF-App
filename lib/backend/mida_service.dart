import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/user_data.dart';
import 'package:kjg_muf_app/utils/csv_helper.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';

class MidaService {
  static final MidaService _midaService = MidaService._internal();

  String? get token => SharedPreferencesService.instance.token;

  factory MidaService() {
    return _midaService;
  }

  MidaService._internal();

  final Dio _dio = Dio();

  Future<UserData?> loginWorkaround(String username, String password) async {
    final baseMidaResponse = await _dio.post(
      "https://mida.kjg.de/",
      options: Options(
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
      ),
      data: {
        "newuser": username,
        "newpassword": password,
      },
    );
    final Document parsedBaseMidaResponse = parse(baseMidaResponse.data);
    final Element? loginForm = parsedBaseMidaResponse.querySelector('form#form1');
    if (loginForm == null) return null;

    final String? actionUrl = loginForm.attributes['action'];
    if (actionUrl == null) return null;
    final userEditResponse = await _dio.post(
      "https://mida.kjg.de$actionUrl?action=profile_edit",
      options: Options(
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
      ),
      data: {
        "newuser": username,
        "newpassword": password,
      },
    );

    // Think about switching to using this token instead of username/password for further requests and webviews
    // TODO: find out validity/duration of this token
    // final tokenCookie = userEditResponse.headers.map["set-cookie"]
    //     ?.where((cookie) => cookie.startsWith("token="))
    //     .firstOrNull
    //     ?.split(";")
    //     .first
    //     .replaceAll("token=", "");

    final Document parsedUserEditResponse = parse(userEditResponse.data);
    final me = getValueFromAccountField("key_me", parsedUserEditResponse);
    final og = getValueFromAccountField("key_og", parsedUserEditResponse);
    final memberNumber = getValueFromAccountField("mitgliedsnummer", parsedUserEditResponse);
    final firstName = getValueFromAccountField("vorname", parsedUserEditResponse);
    final lastName = getValueFromAccountField("nachname", parsedUserEditResponse);

    return UserData(
      username: username,
      firstName: firstName,
      lastName: lastName,
      me: me,
      og: og,
      memberNumber: memberNumber,
    );
  }

  String? getValueFromAccountField(String fieldName, Document document) {
    final element = document.querySelector(".fieldgroup.row$fieldName > .fieldcontrol > :first-child");
    if (element == null) return null;
    switch (element.localName) {
      case "input":
        return element.attributes["value"];
      case "div":
        return element.text;
      default:
        return null;
    }
  }

  /// Gets future events for the logged in user.
  Future<List<CSVEvent>> getFutureEventsPersonal() async {
    final response = await _dio.get(
      Strings.midaBaseURL,
      queryParameters: {
        "action": "events_kalender",
        "print": "csv",
        "art": "ListeZ",
        "token": token,
      },
    );

    final csvString = response.data as String;
    List<CSVEvent> csvEvents = CSVHelper.csvToEvents(csvString);

    return csvEvents;
  }

  Future<List<MidaEvent>> getEvents() async {
    // parameter "jahr: zukunft" only shows events that start in the future
    // -> use "abmonat" to also include currently running events
    // -> remove events that ended in the past
    final fromDate = DateTime.now().add(Duration(days: -31));
    final responseNew = await _dio.get(
      Strings.midaBaseURL,
      queryParameters: {
        "api": "GetEvents",
        "abmonat": DateFormat("yyyyMM").format(fromDate),
        "sichtbar": "alle",
        "token": SharedPreferencesService.instance.token,
      },
    );

    if (responseNew.data case {"error": String error} when error.isNotEmpty) {
      throw Exception;
    }

    if (responseNew.data case List<dynamic> list) {
      final results = list.map((e) => BackendMidaEvent.fromJson(e));
      final mapped = results.map((e) => MidaEvent.fromBackendMidaEvent(e)).nonNulls.toList();

      final startOfToday = DateTime.now().copyWith(
        hour: 0,
        minute: 0,
        second: 0,
        millisecond: 0,
        microsecond: 0,
      );
      return mapped.where((e) => !e.endDateAndTime.isBefore(startOfToday)).toList();
    }

    throw Exception();
  }
}
