// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_filter_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamesFilterSettings {
  bool get showReviewed => throw _privateConstructorUsedError;
  bool get showOnlyUnplayed => throw _privateConstructorUsedError;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamesFilterSettingsCopyWith<GamesFilterSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesFilterSettingsCopyWith<$Res> {
  factory $GamesFilterSettingsCopyWith(
          GamesFilterSettings value, $Res Function(GamesFilterSettings) then) =
      _$GamesFilterSettingsCopyWithImpl<$Res, GamesFilterSettings>;
  @useResult
  $Res call({bool showReviewed, bool showOnlyUnplayed});
}

/// @nodoc
class _$GamesFilterSettingsCopyWithImpl<$Res, $Val extends GamesFilterSettings>
    implements $GamesFilterSettingsCopyWith<$Res> {
  _$GamesFilterSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReviewed = null,
    Object? showOnlyUnplayed = null,
  }) {
    return _then(_value.copyWith(
      showReviewed: null == showReviewed
          ? _value.showReviewed
          : showReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnlyUnplayed: null == showOnlyUnplayed
          ? _value.showOnlyUnplayed
          : showOnlyUnplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesFilterSettingsImplCopyWith<$Res>
    implements $GamesFilterSettingsCopyWith<$Res> {
  factory _$$GamesFilterSettingsImplCopyWith(_$GamesFilterSettingsImpl value,
          $Res Function(_$GamesFilterSettingsImpl) then) =
      __$$GamesFilterSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showReviewed, bool showOnlyUnplayed});
}

/// @nodoc
class __$$GamesFilterSettingsImplCopyWithImpl<$Res>
    extends _$GamesFilterSettingsCopyWithImpl<$Res, _$GamesFilterSettingsImpl>
    implements _$$GamesFilterSettingsImplCopyWith<$Res> {
  __$$GamesFilterSettingsImplCopyWithImpl(_$GamesFilterSettingsImpl _value,
      $Res Function(_$GamesFilterSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReviewed = null,
    Object? showOnlyUnplayed = null,
  }) {
    return _then(_$GamesFilterSettingsImpl(
      showReviewed: null == showReviewed
          ? _value.showReviewed
          : showReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnlyUnplayed: null == showOnlyUnplayed
          ? _value.showOnlyUnplayed
          : showOnlyUnplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GamesFilterSettingsImpl extends _GamesFilterSettings {
  const _$GamesFilterSettingsImpl(
      {this.showReviewed = true, this.showOnlyUnplayed = false})
      : super._();

  @override
  @JsonKey()
  final bool showReviewed;
  @override
  @JsonKey()
  final bool showOnlyUnplayed;

  @override
  String toString() {
    return 'GamesFilterSettings(showReviewed: $showReviewed, showOnlyUnplayed: $showOnlyUnplayed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesFilterSettingsImpl &&
            (identical(other.showReviewed, showReviewed) ||
                other.showReviewed == showReviewed) &&
            (identical(other.showOnlyUnplayed, showOnlyUnplayed) ||
                other.showOnlyUnplayed == showOnlyUnplayed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showReviewed, showOnlyUnplayed);

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesFilterSettingsImplCopyWith<_$GamesFilterSettingsImpl> get copyWith =>
      __$$GamesFilterSettingsImplCopyWithImpl<_$GamesFilterSettingsImpl>(
          this, _$identity);
}

abstract class _GamesFilterSettings extends GamesFilterSettings {
  const factory _GamesFilterSettings(
      {final bool showReviewed,
      final bool showOnlyUnplayed}) = _$GamesFilterSettingsImpl;
  const _GamesFilterSettings._() : super._();

  @override
  bool get showReviewed;
  @override
  bool get showOnlyUnplayed;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamesFilterSettingsImplCopyWith<_$GamesFilterSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
