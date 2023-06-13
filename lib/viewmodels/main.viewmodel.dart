import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:url_launcher/url_launcher.dart';

class MainViewModel extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  bool get isLoggedIn => nameCache != null;

  String? _nameCache;
  String? get nameCache => _nameCache;

  String? _userNameCache;
  String? get userNameCache => _userNameCache;

  MainViewModel() {
    loadUserName();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  Future<void> loadUserName() async {
    _nameCache = await SharedPref().getName();
    _userNameCache = await SharedPref().getUserName();
    notifyListeners();
  }

  void logoutUser() {
    _nameCache = null;
    _userNameCache = null;
    SharedPref().logoutUser();
    notifyListeners();
  }

  login(String userName, String password) async {
    setLoading(true);
    await MidaService().verifyLogin(userName, password);
    await loadUserName();
    notifyListeners();
    setLoading(false);
  }

  Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
