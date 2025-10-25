// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Game _$GameFromJson(Map<String, dynamic> json) => _Game(
      id: json['_id'] as String,
      title: json['title'] as String,
      actionScore: (json['actionScore'] as num).toInt(),
      cognitiveScore: (json['cognitiveScore'] as num).toInt(),
      numberOfPlayer: json['numberOfPlayer'] as String,
      duration: json['duration'] as String,
      ageLimitations: json['ageLimitations'] as String?,
      spaceLimitations: json['spaceLimitations'] as String,
      materials: json['materials'] as String,
      goalOfGame: json['goalOfGame'] as String,
      preparationsInstructions: json['preparationsInstructions'] as String,
      gameplayInstructions: json['gameplayInstructions'] as String,
      endingInstructions: json['endingInstructions'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      reviewed: json['reviewed'] as bool,
      author: json['author'] as String,
      alreadyPlayed: json['alreadyPlayed'] as bool? ?? false,
    );

Map<String, dynamic> _$GameToJson(_Game instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'actionScore': instance.actionScore,
      'cognitiveScore': instance.cognitiveScore,
      'numberOfPlayer': instance.numberOfPlayer,
      'duration': instance.duration,
      'ageLimitations': instance.ageLimitations,
      'spaceLimitations': instance.spaceLimitations,
      'materials': instance.materials,
      'goalOfGame': instance.goalOfGame,
      'preparationsInstructions': instance.preparationsInstructions,
      'gameplayInstructions': instance.gameplayInstructions,
      'endingInstructions': instance.endingInstructions,
      'categories': instance.categories,
      'reviewed': instance.reviewed,
      'author': instance.author,
      'alreadyPlayed': instance.alreadyPlayed,
    };
