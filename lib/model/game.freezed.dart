// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get actionScore => throw _privateConstructorUsedError;
  int get cognitiveScore => throw _privateConstructorUsedError;
  String get numberOfPlayer => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String? get ageLimitations => throw _privateConstructorUsedError;
  String get spaceLimitations => throw _privateConstructorUsedError;
  String get materials => throw _privateConstructorUsedError;
  String get goalOfGame => throw _privateConstructorUsedError;
  String get preparationsInstructions => throw _privateConstructorUsedError;
  String get gameplayInstructions => throw _privateConstructorUsedError;
  String get endingInstructions => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  bool get reviewed => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
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
      String author});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actionScore: null == actionScore
          ? _value.actionScore
          : actionScore // ignore: cast_nullable_to_non_nullable
              as int,
      cognitiveScore: null == cognitiveScore
          ? _value.cognitiveScore
          : cognitiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPlayer: null == numberOfPlayer
          ? _value.numberOfPlayer
          : numberOfPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimitations: freezed == ageLimitations
          ? _value.ageLimitations
          : ageLimitations // ignore: cast_nullable_to_non_nullable
              as String?,
      spaceLimitations: null == spaceLimitations
          ? _value.spaceLimitations
          : spaceLimitations // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as String,
      goalOfGame: null == goalOfGame
          ? _value.goalOfGame
          : goalOfGame // ignore: cast_nullable_to_non_nullable
              as String,
      preparationsInstructions: null == preparationsInstructions
          ? _value.preparationsInstructions
          : preparationsInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      gameplayInstructions: null == gameplayInstructions
          ? _value.gameplayInstructions
          : gameplayInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      endingInstructions: null == endingInstructions
          ? _value.endingInstructions
          : endingInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewed: null == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
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
      String author});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actionScore: null == actionScore
          ? _value.actionScore
          : actionScore // ignore: cast_nullable_to_non_nullable
              as int,
      cognitiveScore: null == cognitiveScore
          ? _value.cognitiveScore
          : cognitiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPlayer: null == numberOfPlayer
          ? _value.numberOfPlayer
          : numberOfPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimitations: freezed == ageLimitations
          ? _value.ageLimitations
          : ageLimitations // ignore: cast_nullable_to_non_nullable
              as String?,
      spaceLimitations: null == spaceLimitations
          ? _value.spaceLimitations
          : spaceLimitations // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as String,
      goalOfGame: null == goalOfGame
          ? _value.goalOfGame
          : goalOfGame // ignore: cast_nullable_to_non_nullable
              as String,
      preparationsInstructions: null == preparationsInstructions
          ? _value.preparationsInstructions
          : preparationsInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      gameplayInstructions: null == gameplayInstructions
          ? _value.gameplayInstructions
          : gameplayInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      endingInstructions: null == endingInstructions
          ? _value.endingInstructions
          : endingInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewed: null == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
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
      required this.author})
      : _categories = categories;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

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
  String toString() {
    return 'Game(id: $id, title: $title, actionScore: $actionScore, cognitiveScore: $cognitiveScore, numberOfPlayer: $numberOfPlayer, duration: $duration, ageLimitations: $ageLimitations, spaceLimitations: $spaceLimitations, materials: $materials, goalOfGame: $goalOfGame, preparationsInstructions: $preparationsInstructions, gameplayInstructions: $gameplayInstructions, endingInstructions: $endingInstructions, categories: $categories, reviewed: $reviewed, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
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
            (identical(other.author, author) || other.author == author));
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
      author);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final int actionScore,
      required final int cognitiveScore,
      required final String numberOfPlayer,
      required final String duration,
      required final String? ageLimitations,
      required final String spaceLimitations,
      required final String materials,
      required final String goalOfGame,
      required final String preparationsInstructions,
      required final String gameplayInstructions,
      required final String endingInstructions,
      required final List<String> categories,
      required final bool reviewed,
      required final String author}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  int get actionScore;
  @override
  int get cognitiveScore;
  @override
  String get numberOfPlayer;
  @override
  String get duration;
  @override
  String? get ageLimitations;
  @override
  String get spaceLimitations;
  @override
  String get materials;
  @override
  String get goalOfGame;
  @override
  String get preparationsInstructions;
  @override
  String get gameplayInstructions;
  @override
  String get endingInstructions;
  @override
  List<String> get categories;
  @override
  bool get reviewed;
  @override
  String get author;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
