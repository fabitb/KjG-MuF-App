import 'package:dio/dio.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/model/user_data.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    final username = SharedPreferencesService.instance.userName;
    final userId = SharedPreferencesService.instance.userId;
    final name = SharedPreferencesService.instance.name;

    _checkLogin();

    return username != null && name != null && userId != null
        ? AuthState.loggedIn(
            userData: UserData(userName: username, userId: userId, name: name),
          )
        : const AuthState.loggedOut();
  }

  Future<void> _checkLogin() async {
    final userName = SharedPreferencesService.instance.userName;
    final password = SharedPreferencesService.instance.password;
    if (userName == null || password == null) return;

    final userIdAndName =
        await MidaService().getUserIdAndName(userName, password);

    if (userIdAndName == null) {
      state = AuthState.loggedOut();
    }
  }

  Future<void> login(String userName, String password) async {
    state = const AuthState.loading();

    try {
      final userIdAndName =
          await MidaService().getUserIdAndName(userName, password);

      if (userIdAndName != null) {
        SharedPreferencesService.instance.userName = userName;
        SharedPreferencesService.instance.userId = userIdAndName.$1;
        SharedPreferencesService.instance.name = userIdAndName.$2;
        SharedPreferencesService.instance.password = password;
        SharedPreferencesService.instance.passwordHash = password.hashMD5;
        SharedPreferencesService.instance.name = userIdAndName.$2;
        state = AuthState.loggedIn(
          userData: UserData(
            userName: userName,
            userId: userIdAndName.$1,
            name: userIdAndName.$2,
          ),
        );
      } else {
        state = const AuthState.loggedOut(error: AuthStateError.unknown);
      }
    } on DioException catch (e) {
      if (e.response case Response<dynamic> r when r.statusCode == 403) {
        state = const AuthState.loggedOut(error: AuthStateError.wrongData);
      } else if (e.type == DioExceptionType.connectionError) {
        state = const AuthState.loggedOut(error: AuthStateError.noInternet);
      } else {
        state = const AuthState.loggedOut(error: AuthStateError.unknown);
      }
    }
  }

  Future<void> logout() async {
    state = const AuthState.loading();

    SharedPreferencesService.instance.userName = null;
    SharedPreferencesService.instance.userId = null;
    SharedPreferencesService.instance.name = null;
    SharedPreferencesService.instance.password = null;
    SharedPreferencesService.instance.passwordHash = null;
    SharedPreferencesService.instance.name = null;

    state = const AuthState.loggedOut();
  }
}
