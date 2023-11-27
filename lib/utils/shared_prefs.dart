import 'package:flutter_inappwebview/flutter_inappwebview.dart';
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
  static const keyUserID = "key.user.id";
  static const keyDatabaseVersion = "key.database.version";

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
    CookieManager cookieManager = CookieManager.instance();
    await cookieManager.deleteAllCookies();
  }

  Future<void> setDatabaseVersion(int dataVersion) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt(keyDatabaseVersion, dataVersion);
  }

  Future<int?> getDatabaseVersion() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getInt(keyDatabaseVersion);
  }
}
