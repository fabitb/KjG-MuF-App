// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: "userlogin")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "vorname")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "nachname")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_me")
  String get me => throw _privateConstructorUsedError;
  @JsonKey(name: "key_og")
  String get og => throw _privateConstructorUsedError;
  @JsonKey(name: "mitgliedsnummer")
  String get memberNumber => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: "userlogin") String username,
      @JsonKey(name: "id") String userId,
      @JsonKey(name: "vorname") String firstName,
      @JsonKey(name: "nachname") String lastName,
      @JsonKey(name: "key_me") String me,
      @JsonKey(name: "key_og") String og,
      @JsonKey(name: "mitgliedsnummer") String memberNumber});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? me = null,
    Object? og = null,
    Object? memberNumber = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as String,
      og: null == og
          ? _value.og
          : og // ignore: cast_nullable_to_non_nullable
              as String,
      memberNumber: null == memberNumber
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userlogin") String username,
      @JsonKey(name: "id") String userId,
      @JsonKey(name: "vorname") String firstName,
      @JsonKey(name: "nachname") String lastName,
      @JsonKey(name: "key_me") String me,
      @JsonKey(name: "key_og") String og,
      @JsonKey(name: "mitgliedsnummer") String memberNumber});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? me = null,
    Object? og = null,
    Object? memberNumber = null,
  }) {
    return _then(_$UserDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as String,
      og: null == og
          ? _value.og
          : og // ignore: cast_nullable_to_non_nullable
              as String,
      memberNumber: null == memberNumber
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {@JsonKey(name: "userlogin") required this.username,
      @JsonKey(name: "id") required this.userId,
      @JsonKey(name: "vorname") required this.firstName,
      @JsonKey(name: "nachname") required this.lastName,
      @JsonKey(name: "key_me") required this.me,
      @JsonKey(name: "key_og") required this.og,
      @JsonKey(name: "mitgliedsnummer") required this.memberNumber});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: "userlogin")
  final String username;
  @override
  @JsonKey(name: "id")
  final String userId;
  @override
  @JsonKey(name: "vorname")
  final String firstName;
  @override
  @JsonKey(name: "nachname")
  final String lastName;
  @override
  @JsonKey(name: "key_me")
  final String me;
  @override
  @JsonKey(name: "key_og")
  final String og;
  @override
  @JsonKey(name: "mitgliedsnummer")
  final String memberNumber;

  @override
  String toString() {
    return 'UserData(username: $username, userId: $userId, firstName: $firstName, lastName: $lastName, me: $me, og: $og, memberNumber: $memberNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      runtimeType, username, userId, firstName, lastName, me, og, memberNumber);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@JsonKey(name: "userlogin") required final String username,
      @JsonKey(name: "id") required final String userId,
      @JsonKey(name: "vorname") required final String firstName,
      @JsonKey(name: "nachname") required final String lastName,
      @JsonKey(name: "key_me") required final String me,
      @JsonKey(name: "key_og") required final String og,
      @JsonKey(name: "mitgliedsnummer")
      required final String memberNumber}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: "userlogin")
  String get username;
  @override
  @JsonKey(name: "id")
  String get userId;
  @override
  @JsonKey(name: "vorname")
  String get firstName;
  @override
  @JsonKey(name: "nachname")
  String get lastName;
  @override
  @JsonKey(name: "key_me")
  String get me;
  @override
  @JsonKey(name: "key_og")
  String get og;
  @override
  @JsonKey(name: "mitgliedsnummer")
  String get memberNumber;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
