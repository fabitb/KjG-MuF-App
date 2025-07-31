import 'dart:convert';

import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/model/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const keyPasswordHash = "key.password.hash";
  static const keyPassword = "key.password";
  static const keyUserData = "key.user.data";
  static const keyFilterSettings = "key.filtersettings";
  static const keyDownloadDialog = "key.download";
  static const keyGamesApiKey = "key.api.games";
  static const keySharedPrefVersion = "key.sharedpref.version";
  static const keyGameTutorialShown = "key.game.tutorial.shown";

  static final instance = SharedPreferencesService._();

  late SharedPreferencesWithCache _prefs;

  SharedPreferencesService._();

  Future<void> init() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );

    await _migrateSharedPreferencesIfNeeded();
  }

  Future<void> _migrateSharedPreferencesIfNeeded() async {
    if (_version < 1) {
      // migrate only user from old shared prefs if not already logged in again
      final oldPrefs = await SharedPreferences.getInstance();
      if (userData == null) {
        final oldUserName = oldPrefs.getString("key.user.name");
        final oldUserId = oldPrefs.getInt("key.user.id");
        final oldPassword = oldPrefs.getString(keyPassword);
        final oldPasswordHash = oldPrefs.getString(keyPasswordHash);

        if (oldUserName != null &&
            oldUserId != null &&
            oldPassword != null &&
            oldPasswordHash != null) {
          // temporary UserData, instantly gets replaced if internet connected
          userData = UserData(
            username: oldUserName,
            userId: oldUserId.toString(),
            firstName: "geladen",
            lastName: "Nicht",
            me: "",
            og: "",
            memberNumber: "",
          );
          password = oldPassword;
          passwordHash = oldPasswordHash;
        }
      }
      // clear all old preferences
      if (await oldPrefs.clear()) {
        _version = 1;
      }
    }
  }

  set userData(UserData? value) => value == null
      ? _prefs.remove(keyUserData)
      : _prefs.setJson(keyUserData, value);

  UserData? get userData => _prefs.getJson(keyUserData, UserData.fromJson);

  set password(String? value) => value == null
      ? _prefs.remove(keyPassword)
      : _prefs.setString(keyPassword, value);

  String? get password => _prefs.getString(keyPassword);

  set passwordHash(String? value) => value == null
      ? _prefs.remove(keyPasswordHash)
      : _prefs.setString(keyPasswordHash, value);

  String? get passwordHash => _prefs.getString(keyPasswordHash);

  set downloadDialogShown(bool value) =>
      _prefs.setBool(keyDownloadDialog, value);

  bool get downloadDialogShown => _prefs.getBool(keyDownloadDialog) ?? false;

  String? get token => userData != null && passwordHash != null
      ? "A/${userData!.username}/$passwordHash"
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

  String? get gamesApiKey => _prefs.getString(keyGamesApiKey);

  set gamesApiKey(String? apiKey) => apiKey == null
      ? _prefs.remove(keyGamesApiKey)
      : _prefs.setString(keyGamesApiKey, apiKey);

  int get _version => _prefs.getInt(keySharedPrefVersion) ?? 0;

  set _version(int newValue) => _prefs.setInt(keySharedPrefVersion, newValue);

  bool get gameTutorialShown => _prefs.getBool(keyGameTutorialShown) ?? false;

  set gameTutorialShown(bool gameTutorialShown) =>
      _prefs.setBool(keyGameTutorialShown, gameTutorialShown);
}

extension SharedPrefJson on SharedPreferencesWithCache {
  E? getJson<E>(
    String key,
    E Function(Map<String, dynamic>) fromJson,
  ) {
    final stringValue = getString(key);
    if (stringValue == null) return null;
    try {
      return fromJson(jsonDecode(stringValue));
    } on Exception {
      return null;
    }
  }

  Future<void> setJson<E extends dynamic>(
    String key,
    E value,
  ) async {
    return setString(key, jsonEncode(value.toJson()));
  }

  List<E>? getJsonList<E>(
    String key,
    E Function(Map<String, dynamic>) fromJson,
  ) {
    final stringValue = getStringList(key);
    if (stringValue == null) return null;
    try {
      return stringValue.map((e) => fromJson(jsonDecode(e))).toList();
    } on Exception {
      return null;
    }
  }

  Future<void> setJsonList<E extends dynamic>(
    String key,
    List<E> value,
  ) async {
    final list = value.map((e) => jsonEncode(e.toJson())).toList();
    return setStringList(key, list);
  }
}
