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

  String? _memberId;
  String? _ebene;
  String? _unterEbene;

  String? get memberId => _memberId;

  String? get ebene => _ebene;

  String? get unterEbene => _unterEbene;

  String? get firstName => _nameCache?.split(',').last.trim();

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
    _ebene = await SharedPref().getEbene();
    _unterEbene = await SharedPref().getUnterebene();
    notifyListeners();
  }

  void logoutUser() {
    _nameCache = null;
    _userNameCache = null;
    _memberId = null;
    _ebene = null;
    _unterEbene = null;
    SharedPref().logoutUser();
    notifyListeners();
  }

  login(String userName, String password) async {
    setLoading(true);
    try {
      // these three requests can run in parallel
      await Future.wait([
        MidaService().verifyLoginForUserName(userName, password),
        MidaService().verifyLoginForUserID(userName, password),
        MidaService().getEbene(userName, password),
      ]);
      // needs to wait for getEbene
      await MidaService().getMember();
    } catch (e) {}

    await loadUserData();
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
