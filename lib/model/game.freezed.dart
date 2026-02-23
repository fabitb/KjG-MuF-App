// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Game {
  @JsonKey(name: '_id')
  String get id;
  String get title;
  int get actionScore;
  int get cognitiveScore;
  String get numberOfPlayer;
  String get duration;
  String? get ageLimitations;
  String get spaceLimitations;
  String get materials;
  String get goalOfGame;
  String get preparationsInstructions;
  String get gameplayInstructions;
  String get endingInstructions;
  List<String> get categories;
  bool get reviewed;
  String get author;
  bool get alreadyPlayed;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameCopyWith<Game> get copyWith =>
      _$GameCopyWithImpl<Game>(this as Game, _$identity);

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Game &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionScore, actionScore) ||
                other.actionScore == actionScore) &&
            (identical(other.cognitiveScore, cognitiveScore) ||
                other.cognitiveScore == cognitiveScore) &&
            (identical(other.numberOfPlayer, numberOfPlayer) ||
                other.numberOfPlayer == numberOfPlayer) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.ageLimitations, ageLimitations) ||
                other.ageLimitations == ageLimitations) &&
            (identical(other.spaceLimitations, spaceLimitations) ||
                other.spaceLimitations == spaceLimitations) &&
            (identical(other.materials, materials) ||
                other.materials == materials) &&
            (identical(other.goalOfGame, goalOfGame) ||
                other.goalOfGame == goalOfGame) &&
            (identical(
                    other.preparationsInstructions, preparationsInstructions) ||
                other.preparationsInstructions == preparationsInstructions) &&
            (identical(other.gameplayInstructions, gameplayInstructions) ||
                other.gameplayInstructions == gameplayInstructions) &&
            (identical(other.endingInstructions, endingInstructions) ||
                other.endingInstructions == endingInstructions) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.reviewed, reviewed) ||
                other.reviewed == reviewed) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.alreadyPlayed, alreadyPlayed) ||
                other.alreadyPlayed == alreadyPlayed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      actionScore,
      cognitiveScore,
      numberOfPlayer,
      duration,
      ageLimitations,
      spaceLimitations,
      materials,
      goalOfGame,
      preparationsInstructions,
      gameplayInstructions,
      endingInstructions,
      const DeepCollectionEquality().hash(categories),
      reviewed,
      author,
      alreadyPlayed);

  @override
  String toString() {
    return 'Game(id: $id, title: $title, actionScore: $actionScore, cognitiveScore: $cognitiveScore, numberOfPlayer: $numberOfPlayer, duration: $duration, ageLimitations: $ageLimitations, spaceLimitations: $spaceLimitations, materials: $materials, goalOfGame: $goalOfGame, preparationsInstructions: $preparationsInstructions, gameplayInstructions: $gameplayInstructions, endingInstructions: $endingInstructions, categories: $categories, reviewed: $reviewed, author: $author, alreadyPlayed: $alreadyPlayed)';
  }
}

/// @nodoc
abstract mixin class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) =
      _$GameCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      int actionScore,
      int cognitiveScore,
      String numberOfPlayer,
      String duration,
      String? ageLimitations,
      String spaceLimitations,
      String materials,
      String goalOfGame,
      String preparationsInstructions,
      String gameplayInstructions,
      String endingInstructions,
      List<String> categories,
      bool reviewed,
      String author,
      bool alreadyPlayed});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? actionScore = null,
    Object? cognitiveScore = null,
    Object? numberOfPlayer = null,
    Object? duration = null,
    Object? ageLimitations = freezed,
    Object? spaceLimitations = null,
    Object? materials = null,
    Object? goalOfGame = null,
    Object? preparationsInstructions = null,
    Object? gameplayInstructions = null,
    Object? endingInstructions = null,
    Object? categories = null,
    Object? reviewed = null,
    Object? author = null,
    Object? alreadyPlayed = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actionScore: null == actionScore
          ? _self.actionScore
          : actionScore // ignore: cast_nullable_to_non_nullable
              as int,
      cognitiveScore: null == cognitiveScore
          ? _self.cognitiveScore
          : cognitiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPlayer: null == numberOfPlayer
          ? _self.numberOfPlayer
          : numberOfPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimitations: freezed == ageLimitations
          ? _self.ageLimitations
          : ageLimitations // ignore: cast_nullable_to_non_nullable
              as String?,
      spaceLimitations: null == spaceLimitations
          ? _self.spaceLimitations
          : spaceLimitations // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as String,
      goalOfGame: null == goalOfGame
          ? _self.goalOfGame
          : goalOfGame // ignore: cast_nullable_to_non_nullable
              as String,
      preparationsInstructions: null == preparationsInstructions
          ? _self.preparationsInstructions
          : preparationsInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      gameplayInstructions: null == gameplayInstructions
          ? _self.gameplayInstructions
          : gameplayInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      endingInstructions: null == endingInstructions
          ? _self.endingInstructions
          : endingInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewed: null == reviewed
          ? _self.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      alreadyPlayed: null == alreadyPlayed
          ? _self.alreadyPlayed
          : alreadyPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Game].
extension GamePatterns on Game {
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
    TResult Function(_Game value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Game() when $default != null:
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
    TResult Function(_Game value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Game():
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
    TResult? Function(_Game value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Game() when $default != null:
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
            @JsonKey(name: '_id') String id,
            String title,
            int actionScore,
            int cognitiveScore,
            String numberOfPlayer,
            String duration,
            String? ageLimitations,
            String spaceLimitations,
            String materials,
            String goalOfGame,
            String preparationsInstructions,
            String gameplayInstructions,
            String endingInstructions,
            List<String> categories,
            bool reviewed,
            String author,
            bool alreadyPlayed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Game() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.actionScore,
            _that.cognitiveScore,
            _that.numberOfPlayer,
            _that.duration,
            _that.ageLimitations,
            _that.spaceLimitations,
            _that.materials,
            _that.goalOfGame,
            _that.preparationsInstructions,
            _that.gameplayInstructions,
            _that.endingInstructions,
            _that.categories,
            _that.reviewed,
            _that.author,
            _that.alreadyPlayed);
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
            @JsonKey(name: '_id') String id,
            String title,
            int actionScore,
            int cognitiveScore,
            String numberOfPlayer,
            String duration,
            String? ageLimitations,
            String spaceLimitations,
            String materials,
            String goalOfGame,
            String preparationsInstructions,
            String gameplayInstructions,
            String endingInstructions,
            List<String> categories,
            bool reviewed,
            String author,
            bool alreadyPlayed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Game():
        return $default(
            _that.id,
            _that.title,
            _that.actionScore,
            _that.cognitiveScore,
            _that.numberOfPlayer,
            _that.duration,
            _that.ageLimitations,
            _that.spaceLimitations,
            _that.materials,
            _that.goalOfGame,
            _that.preparationsInstructions,
            _that.gameplayInstructions,
            _that.endingInstructions,
            _that.categories,
            _that.reviewed,
            _that.author,
            _that.alreadyPlayed);
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
            @JsonKey(name: '_id') String id,
            String title,
            int actionScore,
            int cognitiveScore,
            String numberOfPlayer,
            String duration,
            String? ageLimitations,
            String spaceLimitations,
            String materials,
            String goalOfGame,
            String preparationsInstructions,
            String gameplayInstructions,
            String endingInstructions,
            List<String> categories,
            bool reviewed,
            String author,
            bool alreadyPlayed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Game() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.actionScore,
            _that.cognitiveScore,
            _that.numberOfPlayer,
            _that.duration,
            _that.ageLimitations,
            _that.spaceLimitations,
            _that.materials,
            _that.goalOfGame,
            _that.preparationsInstructions,
            _that.gameplayInstructions,
            _that.endingInstructions,
            _that.categories,
            _that.reviewed,
            _that.author,
            _that.alreadyPlayed);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Game implements Game {
  const _Game(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.actionScore,
      required this.cognitiveScore,
      required this.numberOfPlayer,
      required this.duration,
      required this.ageLimitations,
      required this.spaceLimitations,
      required this.materials,
      required this.goalOfGame,
      required this.preparationsInstructions,
      required this.gameplayInstructions,
      required this.endingInstructions,
      required final List<String> categories,
      required this.reviewed,
      required this.author,
      this.alreadyPlayed = false})
      : _categories = categories;
  factory _Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final int actionScore;
  @override
  final int cognitiveScore;
  @override
  final String numberOfPlayer;
  @override
  final String duration;
  @override
  final String? ageLimitations;
  @override
  final String spaceLimitations;
  @override
  final String materials;
  @override
  final String goalOfGame;
  @override
  final String preparationsInstructions;
  @override
  final String gameplayInstructions;
  @override
  final String endingInstructions;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final bool reviewed;
  @override
  final String author;
  @override
  @JsonKey()
  final bool alreadyPlayed;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionScore, actionScore) ||
                other.actionScore == actionScore) &&
            (identical(other.cognitiveScore, cognitiveScore) ||
                other.cognitiveScore == cognitiveScore) &&
            (identical(other.numberOfPlayer, numberOfPlayer) ||
                other.numberOfPlayer == numberOfPlayer) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.ageLimitations, ageLimitations) ||
                other.ageLimitations == ageLimitations) &&
            (identical(other.spaceLimitations, spaceLimitations) ||
                other.spaceLimitations == spaceLimitations) &&
            (identical(other.materials, materials) ||
                other.materials == materials) &&
            (identical(other.goalOfGame, goalOfGame) ||
                other.goalOfGame == goalOfGame) &&
            (identical(
                    other.preparationsInstructions, preparationsInstructions) ||
                other.preparationsInstructions == preparationsInstructions) &&
            (identical(other.gameplayInstructions, gameplayInstructions) ||
                other.gameplayInstructions == gameplayInstructions) &&
            (identical(other.endingInstructions, endingInstructions) ||
                other.endingInstructions == endingInstructions) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.reviewed, reviewed) ||
                other.reviewed == reviewed) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.alreadyPlayed, alreadyPlayed) ||
                other.alreadyPlayed == alreadyPlayed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      actionScore,
      cognitiveScore,
      numberOfPlayer,
      duration,
      ageLimitations,
      spaceLimitations,
      materials,
      goalOfGame,
      preparationsInstructions,
      gameplayInstructions,
      endingInstructions,
      const DeepCollectionEquality().hash(_categories),
      reviewed,
      author,
      alreadyPlayed);

  @override
  String toString() {
    return 'Game(id: $id, title: $title, actionScore: $actionScore, cognitiveScore: $cognitiveScore, numberOfPlayer: $numberOfPlayer, duration: $duration, ageLimitations: $ageLimitations, spaceLimitations: $spaceLimitations, materials: $materials, goalOfGame: $goalOfGame, preparationsInstructions: $preparationsInstructions, gameplayInstructions: $gameplayInstructions, endingInstructions: $endingInstructions, categories: $categories, reviewed: $reviewed, author: $author, alreadyPlayed: $alreadyPlayed)';
  }
}

/// @nodoc
abstract mixin class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) _then) =
      __$GameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      int actionScore,
      int cognitiveScore,
      String numberOfPlayer,
      String duration,
      String? ageLimitations,
      String spaceLimitations,
      String materials,
      String goalOfGame,
      String preparationsInstructions,
      String gameplayInstructions,
      String endingInstructions,
      List<String> categories,
      bool reviewed,
      String author,
      bool alreadyPlayed});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(this._self, this._then);

  final _Game _self;
  final $Res Function(_Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? actionScore = null,
    Object? cognitiveScore = null,
    Object? numberOfPlayer = null,
    Object? duration = null,
    Object? ageLimitations = freezed,
    Object? spaceLimitations = null,
    Object? materials = null,
    Object? goalOfGame = null,
    Object? preparationsInstructions = null,
    Object? gameplayInstructions = null,
    Object? endingInstructions = null,
    Object? categories = null,
    Object? reviewed = null,
    Object? author = null,
    Object? alreadyPlayed = null,
  }) {
    return _then(_Game(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actionScore: null == actionScore
          ? _self.actionScore
          : actionScore // ignore: cast_nullable_to_non_nullable
              as int,
      cognitiveScore: null == cognitiveScore
          ? _self.cognitiveScore
          : cognitiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPlayer: null == numberOfPlayer
          ? _self.numberOfPlayer
          : numberOfPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimitations: freezed == ageLimitations
          ? _self.ageLimitations
          : ageLimitations // ignore: cast_nullable_to_non_nullable
              as String?,
      spaceLimitations: null == spaceLimitations
          ? _self.spaceLimitations
          : spaceLimitations // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as String,
      goalOfGame: null == goalOfGame
          ? _self.goalOfGame
          : goalOfGame // ignore: cast_nullable_to_non_nullable
              as String,
      preparationsInstructions: null == preparationsInstructions
          ? _self.preparationsInstructions
          : preparationsInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      gameplayInstructions: null == gameplayInstructions
          ? _self.gameplayInstructions
          : gameplayInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      endingInstructions: null == endingInstructions
          ? _self.endingInstructions
          : endingInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewed: null == reviewed
          ? _self.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      alreadyPlayed: null == alreadyPlayed
          ? _self.alreadyPlayed
          : alreadyPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
