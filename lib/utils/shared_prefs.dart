import 'dart:convert';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static final SharedPref _sharedPref = SharedPref._internal();

  factory SharedPref() {
    return _sharedPref;
  }

  SharedPref._internal();

  static const keyName = "key.full.name";
  static const keyUserName = "key.user.name";
  static const keyPasswordHash = "key.password.hash";
  static const keyPassword = "key.password";
  static const keyUserID = "key.user.id";
  static const keyFilterSettings = "key.filtersettings";

  Future<void> saveName(String fullName) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyName, fullName);
  }

  Future<String?> getName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyName);
  }

  Future<void> saveUserName(String userName) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyUserName, userName);
  }

  Future<String?> getUserName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserName);
  }

  Future<void> savePasswordHash(String passwordHash) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyPasswordHash, passwordHash);
  }

  Future<String?> getPasswordHash() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPasswordHash);
  }

  Future<void> savePassword(String password) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyPassword, password);
  }

  Future<String?> getPassword() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPassword);
  }

  Future<void> saveUserID(int userID) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt(keyUserID, userID);
  }

  Future<int?> getUserID() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getInt(keyUserID);
  }

  Future<String?> getToken() async {
    String? userName = await getUserName();
    String? passwordHash = await getPasswordHash();
    if (userName != null && passwordHash != null) {
      return "A/$userName/$passwordHash";
    } else {
      return null;
    }
  }

  Future<void> logoutUser() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyName);
    await prefs.remove(keyUserName);
    await prefs.remove(keyPasswordHash);
    await prefs.remove(keyUserID);
    await prefs.remove(keyPassword);
    CookieManager cookieManager = CookieManager.instance();
    MidaService().deleteAllCookies();
    await cookieManager.deleteAllCookies();
  }

  Future<void> saveFilterSettings(FilterSettings filterSettings) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        keyFilterSettings, jsonEncode(filterSettings.toJson()));
  }

  Future<FilterSettings?> getFilterSettings() async {
    var prefs = await SharedPreferences.getInstance();
    var f = prefs.getString(keyFilterSettings);
    return f == null ? null : FilterSettings.fromJson(jsonDecode(f));
  }
}
