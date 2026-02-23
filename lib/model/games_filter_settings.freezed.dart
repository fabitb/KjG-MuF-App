// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_filter_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GamesFilterSettings {
  bool get showReviewed;
  bool get showOnlyUnplayed;
  RangeValues? get actionRange;
  RangeValues? get thinkingRange;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GamesFilterSettingsCopyWith<GamesFilterSettings> get copyWith =>
      _$GamesFilterSettingsCopyWithImpl<GamesFilterSettings>(
          this as GamesFilterSettings, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GamesFilterSettings &&
            (identical(other.showReviewed, showReviewed) ||
                other.showReviewed == showReviewed) &&
            (identical(other.showOnlyUnplayed, showOnlyUnplayed) ||
                other.showOnlyUnplayed == showOnlyUnplayed) &&
            (identical(other.actionRange, actionRange) ||
                other.actionRange == actionRange) &&
            (identical(other.thinkingRange, thinkingRange) ||
                other.thinkingRange == thinkingRange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showReviewed, showOnlyUnplayed, actionRange, thinkingRange);

  @override
  String toString() {
    return 'GamesFilterSettings(showReviewed: $showReviewed, showOnlyUnplayed: $showOnlyUnplayed, actionRange: $actionRange, thinkingRange: $thinkingRange)';
  }
}

/// @nodoc
abstract mixin class $GamesFilterSettingsCopyWith<$Res> {
  factory $GamesFilterSettingsCopyWith(
          GamesFilterSettings value, $Res Function(GamesFilterSettings) _then) =
      _$GamesFilterSettingsCopyWithImpl;
  @useResult
  $Res call(
      {bool showReviewed,
      bool showOnlyUnplayed,
      RangeValues? actionRange,
      RangeValues? thinkingRange});
}

/// @nodoc
class _$GamesFilterSettingsCopyWithImpl<$Res>
    implements $GamesFilterSettingsCopyWith<$Res> {
  _$GamesFilterSettingsCopyWithImpl(this._self, this._then);

  final GamesFilterSettings _self;
  final $Res Function(GamesFilterSettings) _then;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReviewed = null,
    Object? showOnlyUnplayed = null,
    Object? actionRange = freezed,
    Object? thinkingRange = freezed,
  }) {
    return _then(_self.copyWith(
      showReviewed: null == showReviewed
          ? _self.showReviewed
          : showReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnlyUnplayed: null == showOnlyUnplayed
          ? _self.showOnlyUnplayed
          : showOnlyUnplayed // ignore: cast_nullable_to_non_nullable
              as bool,
      actionRange: freezed == actionRange
          ? _self.actionRange
          : actionRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
      thinkingRange: freezed == thinkingRange
          ? _self.thinkingRange
          : thinkingRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GamesFilterSettings].
extension GamesFilterSettingsPatterns on GamesFilterSettings {
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
    TResult Function(_GamesFilterSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings() when $default != null:
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
    TResult Function(_GamesFilterSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings():
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
    TResult? Function(_GamesFilterSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings() when $default != null:
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
    TResult Function(bool showReviewed, bool showOnlyUnplayed,
            RangeValues? actionRange, RangeValues? thinkingRange)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings() when $default != null:
        return $default(_that.showReviewed, _that.showOnlyUnplayed,
            _that.actionRange, _that.thinkingRange);
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
    TResult Function(bool showReviewed, bool showOnlyUnplayed,
            RangeValues? actionRange, RangeValues? thinkingRange)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings():
        return $default(_that.showReviewed, _that.showOnlyUnplayed,
            _that.actionRange, _that.thinkingRange);
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
    TResult? Function(bool showReviewed, bool showOnlyUnplayed,
            RangeValues? actionRange, RangeValues? thinkingRange)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GamesFilterSettings() when $default != null:
        return $default(_that.showReviewed, _that.showOnlyUnplayed,
            _that.actionRange, _that.thinkingRange);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GamesFilterSettings extends GamesFilterSettings {
  const _GamesFilterSettings(
      {this.showReviewed = true,
      this.showOnlyUnplayed = false,
      this.actionRange,
      this.thinkingRange})
      : super._();

  @override
  @JsonKey()
  final bool showReviewed;
  @override
  @JsonKey()
  final bool showOnlyUnplayed;
  @override
  final RangeValues? actionRange;
  @override
  final RangeValues? thinkingRange;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GamesFilterSettingsCopyWith<_GamesFilterSettings> get copyWith =>
      __$GamesFilterSettingsCopyWithImpl<_GamesFilterSettings>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamesFilterSettings &&
            (identical(other.showReviewed, showReviewed) ||
                other.showReviewed == showReviewed) &&
            (identical(other.showOnlyUnplayed, showOnlyUnplayed) ||
                other.showOnlyUnplayed == showOnlyUnplayed) &&
            (identical(other.actionRange, actionRange) ||
                other.actionRange == actionRange) &&
            (identical(other.thinkingRange, thinkingRange) ||
                other.thinkingRange == thinkingRange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showReviewed, showOnlyUnplayed, actionRange, thinkingRange);

  @override
  String toString() {
    return 'GamesFilterSettings(showReviewed: $showReviewed, showOnlyUnplayed: $showOnlyUnplayed, actionRange: $actionRange, thinkingRange: $thinkingRange)';
  }
}

/// @nodoc
abstract mixin class _$GamesFilterSettingsCopyWith<$Res>
    implements $GamesFilterSettingsCopyWith<$Res> {
  factory _$GamesFilterSettingsCopyWith(_GamesFilterSettings value,
          $Res Function(_GamesFilterSettings) _then) =
      __$GamesFilterSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool showReviewed,
      bool showOnlyUnplayed,
      RangeValues? actionRange,
      RangeValues? thinkingRange});
}

/// @nodoc
class __$GamesFilterSettingsCopyWithImpl<$Res>
    implements _$GamesFilterSettingsCopyWith<$Res> {
  __$GamesFilterSettingsCopyWithImpl(this._self, this._then);

  final _GamesFilterSettings _self;
  final $Res Function(_GamesFilterSettings) _then;

  /// Create a copy of GamesFilterSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showReviewed = null,
    Object? showOnlyUnplayed = null,
    Object? actionRange = freezed,
    Object? thinkingRange = freezed,
  }) {
    return _then(_GamesFilterSettings(
      showReviewed: null == showReviewed
          ? _self.showReviewed
          : showReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnlyUnplayed: null == showOnlyUnplayed
          ? _self.showOnlyUnplayed
          : showOnlyUnplayed // ignore: cast_nullable_to_non_nullable
              as bool,
      actionRange: freezed == actionRange
          ? _self.actionRange
          : actionRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
      thinkingRange: freezed == thinkingRange
          ? _self.thinkingRange
          : thinkingRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
    ));
  }
}

// dart format on
