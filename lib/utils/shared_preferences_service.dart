import 'dart:convert';

import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const keyName = "key.full.name";
  static const keyUserName = "key.user.name";
  static const keyPasswordHash = "key.password.hash";
  static const keyPassword = "key.password";
  static const keyUserID = "key.user.id";
  static const keyFilterSettings = "key.filtersettings";
  static const keyDownloadDialog = "key.download";

  static final instance = SharedPreferencesService._();

  late SharedPreferencesWithCache _prefs;

  SharedPreferencesService._();

  Future<void> init() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
  }

  set name(String? value) =>
      value == null ? _prefs.remove(keyName) : _prefs.setString(keyName, value);

  String? get name => _prefs.getString(keyName);

  set userName(String? value) => value == null
      ? _prefs.remove(keyUserName)
      : _prefs.setString(keyUserName, value);

  String? get userName => _prefs.getString(keyUserName);

  set password(String? value) => value == null
      ? _prefs.remove(keyPassword)
      : _prefs.setString(keyPassword, value);

  String? get password => _prefs.getString(keyPassword);

  set passwordHash(String? value) => value == null
      ? _prefs.remove(keyPasswordHash)
      : _prefs.setString(keyPasswordHash, value);

  String? get passwordHash => _prefs.getString(keyPasswordHash);

  set userId(int? value) => value == null
      ? _prefs.remove(keyUserID)
      : _prefs.setInt(keyUserID, value);

  int? get userId => _prefs.getInt(keyUserID);

  set downloadDialogShown(bool value) => _prefs.setBool(keyDownloadDialog, value);

  bool get downloadDialogShown => _prefs.getBool(keyDownloadDialog) ?? false;

  String? get token => userName != null && passwordHash != null
      ? "A/$userName/$passwordHash"
      : null;

  set filterSettings(FilterSettings? value) => value == null
      ? _prefs.remove(keyFilterSettings)
      : _prefs.setString(keyFilterSettings, jsonEncode(value.toJson()));

  FilterSettings? get filterSettings {
    final jsonString = _prefs.getString(keyFilterSettings);
    if (jsonString == null) return null;
    try {
      return FilterSettings.fromJson(jsonDecode(jsonString));
    } on Exception {
      return null;
    }
  }
}
