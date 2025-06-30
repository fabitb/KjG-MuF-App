import 'package:dio/dio.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    final userData = SharedPreferencesService.instance.userData;

    _checkLogin();

    return userData != null
        ? AuthState.loggedIn(userData: userData)
        : const AuthState.loggedOut();
  }

  Future<void> _checkLogin() async {
    final userName = SharedPreferencesService.instance.userData?.username;
    final password = SharedPreferencesService.instance.password;
    if (userName == null || password == null) return;

    final userData = await MidaService().checkLogin(userName, password);

    if (userData == null) {
      // login incorrect -> logout
      await logout();
    } else {
      // login correct -> use new UserData
      state = AuthState.loggedIn(userData: userData);
    }
  }

  Future<void> login(String userName, String password) async {
    state = const AuthState.loading();

    try {
      final userData = await MidaService().checkLogin(userName, password);

      if (userData != null) {
        SharedPreferencesService.instance.userData = userData;
        SharedPreferencesService.instance.password = password;
        SharedPreferencesService.instance.passwordHash = password.hashMD5;
        state = AuthState.loggedIn(userData: userData);
      } else {
        // backend returns 200 with error if wrong login
        state = AuthState.loggedOut(error: AuthStateError.wrongData);
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout) {
        state = AuthState.loggedOut(error: AuthStateError.noInternet);
      } else {
        state = AuthState.loggedOut(error: AuthStateError.unknown);
      }
    }
  }

  Future<void> logout() async {
    state = const AuthState.loading();

    SharedPreferencesService.instance.userData = null;
    SharedPreferencesService.instance.password = null;
    SharedPreferencesService.instance.passwordHash = null;

    state = const AuthState.loggedOut();
  }
}
