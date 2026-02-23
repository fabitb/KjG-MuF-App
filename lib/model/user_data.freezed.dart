// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserData {
  @JsonKey(name: "userlogin")
  String get username;
  @JsonKey(name: "vorname")
  String? get firstName;
  @JsonKey(name: "nachname")
  String? get lastName;
  @JsonKey(name: "key_me")
  String? get me;
  @JsonKey(name: "key_og")
  String? get og;
  @JsonKey(name: "mitgliedsnummer")
  String? get memberNumber;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserData &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.og, og) || other.og == og) &&
            (identical(other.memberNumber, memberNumber) ||
                other.memberNumber == memberNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, firstName, lastName, me, og, memberNumber);

  @override
  String toString() {
    return 'UserData(username: $username, firstName: $firstName, lastName: $lastName, me: $me, og: $og, memberNumber: $memberNumber)';
  }
}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) =
      _$UserDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "userlogin") String username,
      @JsonKey(name: "vorname") String? firstName,
      @JsonKey(name: "nachname") String? lastName,
      @JsonKey(name: "key_me") String? me,
      @JsonKey(name: "key_og") String? og,
      @JsonKey(name: "mitgliedsnummer") String? memberNumber});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? me = freezed,
    Object? og = freezed,
    Object? memberNumber = freezed,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      me: freezed == me
          ? _self.me
          : me // ignore: cast_nullable_to_non_nullable
              as String?,
      og: freezed == og
          ? _self.og
          : og // ignore: cast_nullable_to_non_nullable
              as String?,
      memberNumber: freezed == memberNumber
          ? _self.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UserData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "userlogin") String username,
            @JsonKey(name: "vorname") String? firstName,
            @JsonKey(name: "nachname") String? lastName,
            @JsonKey(name: "key_me") String? me,
            @JsonKey(name: "key_og") String? og,
            @JsonKey(name: "mitgliedsnummer") String? memberNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that.username, _that.firstName, _that.lastName,
            _that.me, _that.og, _that.memberNumber);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "userlogin") String username,
            @JsonKey(name: "vorname") String? firstName,
            @JsonKey(name: "nachname") String? lastName,
            @JsonKey(name: "key_me") String? me,
            @JsonKey(name: "key_og") String? og,
            @JsonKey(name: "mitgliedsnummer") String? memberNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData():
        return $default(_that.username, _that.firstName, _that.lastName,
            _that.me, _that.og, _that.memberNumber);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: "userlogin") String username,
            @JsonKey(name: "vorname") String? firstName,
            @JsonKey(name: "nachname") String? lastName,
            @JsonKey(name: "key_me") String? me,
            @JsonKey(name: "key_og") String? og,
            @JsonKey(name: "mitgliedsnummer") String? memberNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that.username, _that.firstName, _that.lastName,
            _that.me, _that.og, _that.memberNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserData implements UserData {
  const _UserData(
      {@JsonKey(name: "userlogin") required this.username,
      @JsonKey(name: "vorname") this.firstName,
      @JsonKey(name: "nachname") this.lastName,
      @JsonKey(name: "key_me") this.me,
      @JsonKey(name: "key_og") this.og,
      @JsonKey(name: "mitgliedsnummer") this.memberNumber});
  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  @override
  @JsonKey(name: "userlogin")
  final String username;
  @override
  @JsonKey(name: "vorname")
  final String? firstName;
  @override
  @JsonKey(name: "nachname")
  final String? lastName;
  @override
  @JsonKey(name: "key_me")
  final String? me;
  @override
  @JsonKey(name: "key_og")
  final String? og;
  @override
  @JsonKey(name: "mitgliedsnummer")
  final String? memberNumber;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserData &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.og, og) || other.og == og) &&
            (identical(other.memberNumber, memberNumber) ||
                other.memberNumber == memberNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, firstName, lastName, me, og, memberNumber);

  @override
  String toString() {
    return 'UserData(username: $username, firstName: $firstName, lastName: $lastName, me: $me, og: $og, memberNumber: $memberNumber)';
  }
}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) =
      __$UserDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userlogin") String username,
      @JsonKey(name: "vorname") String? firstName,
      @JsonKey(name: "nachname") String? lastName,
      @JsonKey(name: "key_me") String? me,
      @JsonKey(name: "key_og") String? og,
      @JsonKey(name: "mitgliedsnummer") String? memberNumber});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? me = freezed,
    Object? og = freezed,
    Object? memberNumber = freezed,
  }) {
    return _then(_UserData(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      me: freezed == me
          ? _self.me
          : me // ignore: cast_nullable_to_non_nullable
              as String?,
      og: freezed == og
          ? _self.og
          : og // ignore: cast_nullable_to_non_nullable
              as String?,
      memberNumber: freezed == memberNumber
          ? _self.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
