import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/model/user_data.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loggedIn({
    required UserData userData,
  }) = AuthStateLoggedIn;

  const factory AuthState.loading() = AuthStateLoading;

  const factory AuthState.loggedOut({AuthStateError? error}) =
      AuthStateLoggedOut;
}

enum AuthStateError {
  unknown,
  noInternet,
  wrongData;

  String localizedString(AppLocalizations localizations) {
    return switch (this) {
      AuthStateError.unknown => localizations.unknownError,
      AuthStateError.noInternet => localizations.noInternet,
      AuthStateError.wrongData => localizations.loginError,
    };
  }
}
