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

  bool _initiated = false;

  bool get initiated => _initiated;

  bool _offline = false;

  bool get offline => _offline;

  MainViewModel() {
    init();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  Future<void> init() async {
    _nameCache = await SharedPref().getName();
    _userNameCache = await SharedPref().getUserName();
    String? password = await SharedPref().getPassword();

    if (_userNameCache != null && password != null) {
      bool loggedIn;
      try {
        loggedIn = await MidaService()
            .verifyLoginForUserName(_userNameCache!, password);
        _offline = false;
      } catch (e) {
        loggedIn = _nameCache != null;
        _offline = true;
      }
      _initiated = true;
      if (!loggedIn) {
        logoutUser();
      } else {
        notifyListeners();
      }
    } else {
      _initiated = true;
      notifyListeners();
    }
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
    await MidaService().verifyLoginForUserName(userName, password);
    await MidaService().verifyLoginForUserID(userName, password);
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
