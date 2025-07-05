import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/model/csv_event.dart';
import 'package:kjg_muf_app/model/user_data.dart';
import 'package:kjg_muf_app/utils/csv_helper.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';

class MidaService {
  static final MidaService _midaService = MidaService._internal();

  String? get token => SharedPreferencesService.instance.token;

  factory MidaService() {
    return _midaService;
  }

  MidaService._internal();

  final Dio _dio = Dio();

  Future<UserData?> checkLogin(String username, String password) async {
    final response = await _dio.get(
      Strings.midaBaseURL,
      queryParameters: {
        "api": "CheckLogin",
        "user": username,
        "password": password,
        "felder": "key_me,key_og,mitgliedsnummer,userlogin",
        "token": Strings.midaToken(username, password.hashMD5),
      },
    );

    if (response.data case {"error": String error} when error.isNotEmpty) {
      return null;
    }

    return UserData.fromJson(response.data);
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
      final mapped = results
          .map((e) => MidaEvent.fromBackendMidaEvent(e))
          .nonNulls
          .toList();

      final startOfToday = DateTime.now().copyWith(
        hour: 0,
        minute: 0,
        second: 0,
        millisecond: 0,
        microsecond: 0,
      );
      return mapped
          .where((e) => !e.endDateAndTime.isBefore(startOfToday))
          .toList();
    }

    throw Exception();
  }
}
