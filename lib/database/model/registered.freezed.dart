// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registered.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Registered {
  int get eventId;

  /// Create a copy of Registered
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisteredCopyWith<Registered> get copyWith =>
      _$RegisteredCopyWithImpl<Registered>(this as Registered, _$identity);

  /// Serializes this Registered to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Registered &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @override
  String toString() {
    return 'Registered(eventId: $eventId)';
  }
}

/// @nodoc
abstract mixin class $RegisteredCopyWith<$Res> {
  factory $RegisteredCopyWith(
          Registered value, $Res Function(Registered) _then) =
      _$RegisteredCopyWithImpl;
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class _$RegisteredCopyWithImpl<$Res> implements $RegisteredCopyWith<$Res> {
  _$RegisteredCopyWithImpl(this._self, this._then);

  final Registered _self;
  final $Res Function(Registered) _then;

  /// Create a copy of Registered
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_self.copyWith(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Registered].
extension RegisteredPatterns on Registered {
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
    TResult Function(_Registered value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Registered() when $default != null:
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
    TResult Function(_Registered value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Registered():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_Registered value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Registered() when $default != null:
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
    TResult Function(int eventId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Registered() when $default != null:
        return $default(_that.eventId);
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
    TResult Function(int eventId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Registered():
        return $default(_that.eventId);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(int eventId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Registered() when $default != null:
        return $default(_that.eventId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Registered extends Registered {
  const _Registered({required this.eventId}) : super._();
  factory _Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);

  @override
  final int eventId;

  /// Create a copy of Registered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisteredCopyWith<_Registered> get copyWith =>
      __$RegisteredCopyWithImpl<_Registered>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisteredToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Registered &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @override
  String toString() {
    return 'Registered(eventId: $eventId)';
  }
}

/// @nodoc
abstract mixin class _$RegisteredCopyWith<$Res>
    implements $RegisteredCopyWith<$Res> {
  factory _$RegisteredCopyWith(
          _Registered value, $Res Function(_Registered) _then) =
      __$RegisteredCopyWithImpl;
  @override
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class __$RegisteredCopyWithImpl<$Res> implements _$RegisteredCopyWith<$Res> {
  __$RegisteredCopyWithImpl(this._self, this._then);

  final _Registered _self;
  final $Res Function(_Registered) _then;

  /// Create a copy of Registered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_Registered(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
