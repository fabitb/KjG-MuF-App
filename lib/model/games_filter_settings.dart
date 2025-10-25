import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'games_filter_settings.freezed.dart';

@freezed
sealed class GamesFilterSettings with _$GamesFilterSettings {
  const factory GamesFilterSettings({
    @Default(true) bool showReviewed,
    @Default(false) bool showOnlyUnplayed,
    RangeValues? actionRange,
    RangeValues? thinkingRange,
  }) = _GamesFilterSettings;

  const GamesFilterSettings._();

  bool get isActive =>
      showReviewed ||
      showOnlyUnplayed ||
      actionRange != null ||
      thinkingRange != null;
}
