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

  Future<String?> getToken() async {
    var prefs = await SharedPreferences.getInstance();
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
  }
}
