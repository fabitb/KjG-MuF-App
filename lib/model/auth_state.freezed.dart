// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthStateLoading() when loading != null:
        return loading(_that);
      case AuthStateLoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn():
        return loggedIn(_that);
      case AuthStateLoading():
        return loading(_that);
      case AuthStateLoggedOut():
        return loggedOut(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoggedIn value)? loggedIn,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthStateLoading() when loading != null:
        return loading(_that);
      case AuthStateLoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? loggedIn,
    TResult Function()? loading,
    TResult Function(AuthStateError? error)? loggedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn() when loggedIn != null:
        return loggedIn(_that.userData);
      case AuthStateLoading() when loading != null:
        return loading();
      case AuthStateLoggedOut() when loggedOut != null:
        return loggedOut(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) loggedIn,
    required TResult Function() loading,
    required TResult Function(AuthStateError? error) loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn():
        return loggedIn(_that.userData);
      case AuthStateLoading():
        return loading();
      case AuthStateLoggedOut():
        return loggedOut(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(AuthStateError? error)? loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateLoggedIn() when loggedIn != null:
        return loggedIn(_that.userData);
      case AuthStateLoading() when loading != null:
        return loading();
      case AuthStateLoggedOut() when loggedOut != null:
        return loggedOut(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthStateLoggedIn implements AuthState {
  const AuthStateLoggedIn({required this.userData});

  final UserData userData;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateLoggedInCopyWith<AuthStateLoggedIn> get copyWith =>
      _$AuthStateLoggedInCopyWithImpl<AuthStateLoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateLoggedIn &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @override
  String toString() {
    return 'AuthState.loggedIn(userData: $userData)';
  }
}

/// @nodoc
abstract mixin class $AuthStateLoggedInCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthStateLoggedInCopyWith(
          AuthStateLoggedIn value, $Res Function(AuthStateLoggedIn) _then) =
      _$AuthStateLoggedInCopyWithImpl;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$AuthStateLoggedInCopyWithImpl<$Res>
    implements $AuthStateLoggedInCopyWith<$Res> {
  _$AuthStateLoggedInCopyWithImpl(this._self, this._then);

  final AuthStateLoggedIn _self;
  final $Res Function(AuthStateLoggedIn) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userData = null,
  }) {
    return _then(AuthStateLoggedIn(
      userData: null == userData
          ? _self.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_self.userData, (value) {
      return _then(_self.copyWith(userData: value));
    });
  }
}

/// @nodoc

class AuthStateLoading implements AuthState {
  const AuthStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loading()';
  }
}

/// @nodoc

class AuthStateLoggedOut implements AuthState {
  const AuthStateLoggedOut({this.error});

  final AuthStateError? error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateLoggedOutCopyWith<AuthStateLoggedOut> get copyWith =>
      _$AuthStateLoggedOutCopyWithImpl<AuthStateLoggedOut>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateLoggedOut &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthState.loggedOut(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AuthStateLoggedOutCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthStateLoggedOutCopyWith(
          AuthStateLoggedOut value, $Res Function(AuthStateLoggedOut) _then) =
      _$AuthStateLoggedOutCopyWithImpl;
  @useResult
  $Res call({AuthStateError? error});
}

/// @nodoc
class _$AuthStateLoggedOutCopyWithImpl<$Res>
    implements $AuthStateLoggedOutCopyWith<$Res> {
  _$AuthStateLoggedOutCopyWithImpl(this._self, this._then);

  final AuthStateLoggedOut _self;
  final $Res Function(AuthStateLoggedOut) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthStateLoggedOut(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthStateError?,
    ));
  }
}

// dart format on
