import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:url_launcher/url_launcher.dart';

class MainViewModel extends ChangeNotifier {
  LoginStatus _loginStatus = LoginStatus.normal;

  LoginStatus get loginStatus => _loginStatus;

  bool get isLoggedIn => nameCache != null;

  String? _nameCache;

  String? get nameCache => _nameCache;

  String? _userNameCache;

  String? get userNameCache => _userNameCache;

  String? _memberId;
  String? _ueberEbene;
  String? _ebene;

  String? get memberId => _memberId;

  String? get ueberEbene => _ueberEbene;

  String? get ebene => _ebene;

  String? get firstName => _nameCache?.split(',').last.trim();

  bool _initiated = false;

  bool get initiated => _initiated;

  bool _offline = false;

  bool get offline => _offline;

  MainViewModel() {
    init();
  }

  setLoginStatus(LoginStatus newStatus) async {
    _loginStatus = newStatus;
    notifyListeners();
  }

  Future<void> init() async {
    loadUserData();
    String? password = await SharedPref().getPassword();

    if (userNameCache != null && password == null) {
      // users of older version of the app need to log in again
      logoutUser();
    } else if (_userNameCache != null && password != null) {
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

  Future<void> loadUserData() async {
    _nameCache = await SharedPref().getName();
    _userNameCache = await SharedPref().getUserName();
    _memberId = await SharedPref().getMitgliedsNummer();
    _ueberEbene = await SharedPref().getUeberEbene();
    _ebene = await SharedPref().getEbene();
    notifyListeners();
  }

  void logoutUser() {
    _nameCache = null;
    _userNameCache = null;
    _memberId = null;
    _ueberEbene = null;
    _ebene = null;
    SharedPref().logoutUser();
    notifyListeners();
  }

  login(String userName, String password) async {
    setLoginStatus(LoginStatus.loading);
    try {
      var validLogin =
          await MidaService().verifyLoginForUserName(userName, password);

      if (validLogin) {
        setLoginStatus(LoginStatus.loadingUserData);
        // these requests can run in parallel
        await Future.wait([
          MidaService().verifyLoginForUserID(userName, password),
          MidaService().getEbene(),
        ]);
        // needs to wait for getEbene
        await MidaService().getMember();
      }
    } catch (e) {}

    await loadUserData();
    notifyListeners();
    setLoginStatus(LoginStatus.normal);
  }

  Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}

enum LoginStatus { normal, loading, loadingUserData }