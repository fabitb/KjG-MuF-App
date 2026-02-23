// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventAttachment {
  int get eventId;
  String get name;
  String get url;
  CacheObject? get cacheObject;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventAttachmentCopyWith<EventAttachment> get copyWith =>
      _$EventAttachmentCopyWithImpl<EventAttachment>(
          this as EventAttachment, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventAttachment &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.cacheObject, cacheObject) ||
                other.cacheObject == cacheObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, name, url, cacheObject);

  @override
  String toString() {
    return 'EventAttachment(eventId: $eventId, name: $name, url: $url, cacheObject: $cacheObject)';
  }
}

/// @nodoc
abstract mixin class $EventAttachmentCopyWith<$Res> {
  factory $EventAttachmentCopyWith(
          EventAttachment value, $Res Function(EventAttachment) _then) =
      _$EventAttachmentCopyWithImpl;
  @useResult
  $Res call({int eventId, String name, String url, CacheObject? cacheObject});
}

/// @nodoc
class _$EventAttachmentCopyWithImpl<$Res>
    implements $EventAttachmentCopyWith<$Res> {
  _$EventAttachmentCopyWithImpl(this._self, this._then);

  final EventAttachment _self;
  final $Res Function(EventAttachment) _then;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? name = null,
    Object? url = null,
    Object? cacheObject = freezed,
  }) {
    return _then(_self.copyWith(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cacheObject: freezed == cacheObject
          ? _self.cacheObject
          : cacheObject // ignore: cast_nullable_to_non_nullable
              as CacheObject?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EventAttachment].
extension EventAttachmentPatterns on EventAttachment {
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
    TResult Function(_EventAttachment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventAttachment() when $default != null:
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
    TResult Function(_EventAttachment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventAttachment():
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
    TResult? Function(_EventAttachment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventAttachment() when $default != null:
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
            int eventId, String name, String url, CacheObject? cacheObject)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventAttachment() when $default != null:
        return $default(
            _that.eventId, _that.name, _that.url, _that.cacheObject);
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
            int eventId, String name, String url, CacheObject? cacheObject)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventAttachment():
        return $default(
            _that.eventId, _that.name, _that.url, _that.cacheObject);
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
            int eventId, String name, String url, CacheObject? cacheObject)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventAttachment() when $default != null:
        return $default(
            _that.eventId, _that.name, _that.url, _that.cacheObject);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EventAttachment implements EventAttachment {
  const _EventAttachment(
      {required this.eventId,
      required this.name,
      required this.url,
      this.cacheObject});

  @override
  final int eventId;
  @override
  final String name;
  @override
  final String url;
  @override
  final CacheObject? cacheObject;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventAttachmentCopyWith<_EventAttachment> get copyWith =>
      __$EventAttachmentCopyWithImpl<_EventAttachment>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventAttachment &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.cacheObject, cacheObject) ||
                other.cacheObject == cacheObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, name, url, cacheObject);

  @override
  String toString() {
    return 'EventAttachment(eventId: $eventId, name: $name, url: $url, cacheObject: $cacheObject)';
  }
}

/// @nodoc
abstract mixin class _$EventAttachmentCopyWith<$Res>
    implements $EventAttachmentCopyWith<$Res> {
  factory _$EventAttachmentCopyWith(
          _EventAttachment value, $Res Function(_EventAttachment) _then) =
      __$EventAttachmentCopyWithImpl;
  @override
  @useResult
  $Res call({int eventId, String name, String url, CacheObject? cacheObject});
}

/// @nodoc
class __$EventAttachmentCopyWithImpl<$Res>
    implements _$EventAttachmentCopyWith<$Res> {
  __$EventAttachmentCopyWithImpl(this._self, this._then);

  final _EventAttachment _self;
  final $Res Function(_EventAttachment) _then;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eventId = null,
    Object? name = null,
    Object? url = null,
    Object? cacheObject = freezed,
  }) {
    return _then(_EventAttachment(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cacheObject: freezed == cacheObject
          ? _self.cacheObject
          : cacheObject // ignore: cast_nullable_to_non_nullable
              as CacheObject?,
    ));
  }
}

// dart format on
