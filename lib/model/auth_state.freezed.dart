// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) loggedIn,
    required TResult Function() loading,
    required TResult Function(AuthStateError? error) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(AuthStateError? error)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? loggedIn,
    TResult Function()? loading,
    TResult Function(AuthStateError? error)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoggedIn value)? loggedIn,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthStateLoggedInImplCopyWith<$Res> {
  factory _$$AuthStateLoggedInImplCopyWith(_$AuthStateLoggedInImpl value,
          $Res Function(_$AuthStateLoggedInImpl) then) =
      __$$AuthStateLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$AuthStateLoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoggedInImpl>
    implements _$$AuthStateLoggedInImplCopyWith<$Res> {
  __$$AuthStateLoggedInImplCopyWithImpl(_$AuthStateLoggedInImpl _value,
      $Res Function(_$AuthStateLoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$AuthStateLoggedInImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$AuthStateLoggedInImpl implements AuthStateLoggedIn {
  const _$AuthStateLoggedInImpl({required this.userData});

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthState.loggedIn(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoggedInImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoggedInImplCopyWith<_$AuthStateLoggedInImpl> get copyWith =>
      __$$AuthStateLoggedInImplCopyWithImpl<_$AuthStateLoggedInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) loggedIn,
    required TResult Function() loading,
    required TResult Function(AuthStateError? error) loggedOut,
  }) {
    return loggedIn(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(AuthStateError? error)? loggedOut,
  }) {
    return loggedIn?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? loggedIn,
    TResult Function()? loading,
    TResult Function(AuthStateError? error)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoggedIn value)? loggedIn,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoggedIn implements AuthState {
  const factory AuthStateLoggedIn({required final UserData userData}) =
      _$AuthStateLoggedInImpl;

  UserData get userData;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateLoggedInImplCopyWith<_$AuthStateLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) loggedIn,
    required TResult Function() loading,
    required TResult Function(AuthStateError? error) loggedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(AuthStateError? error)? loggedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? loggedIn,
    TResult Function()? loading,
    TResult Function(AuthStateError? error)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoggedIn value)? loggedIn,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateLoggedOutImplCopyWith<$Res> {
  factory _$$AuthStateLoggedOutImplCopyWith(_$AuthStateLoggedOutImpl value,
          $Res Function(_$AuthStateLoggedOutImpl) then) =
      __$$AuthStateLoggedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateError? error});
}

/// @nodoc
class __$$AuthStateLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoggedOutImpl>
    implements _$$AuthStateLoggedOutImplCopyWith<$Res> {
  __$$AuthStateLoggedOutImplCopyWithImpl(_$AuthStateLoggedOutImpl _value,
      $Res Function(_$AuthStateLoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthStateLoggedOutImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthStateError?,
    ));
  }
}

/// @nodoc

class _$AuthStateLoggedOutImpl implements AuthStateLoggedOut {
  const _$AuthStateLoggedOutImpl({this.error});

  @override
  final AuthStateError? error;

  @override
  String toString() {
    return 'AuthState.loggedOut(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoggedOutImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoggedOutImplCopyWith<_$AuthStateLoggedOutImpl> get copyWith =>
      __$$AuthStateLoggedOutImplCopyWithImpl<_$AuthStateLoggedOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) loggedIn,
    required TResult Function() loading,
    required TResult Function(AuthStateError? error) loggedOut,
  }) {
    return loggedOut(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function()? loading,
    TResult? Function(AuthStateError? error)? loggedOut,
  }) {
    return loggedOut?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? loggedIn,
    TResult Function()? loading,
    TResult Function(AuthStateError? error)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoggedIn value)? loggedIn,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoggedOut implements AuthState {
  const factory AuthStateLoggedOut({final AuthStateError? error}) =
      _$AuthStateLoggedOutImpl;

  AuthStateError? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateLoggedOutImplCopyWith<_$AuthStateLoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
