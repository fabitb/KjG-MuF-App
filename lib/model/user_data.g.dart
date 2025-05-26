// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      username: json['userlogin'] as String,
      userId: json['id'] as String,
      firstName: json['vorname'] as String,
      lastName: json['nachname'] as String,
      me: json['key_me'] as String,
      og: json['key_og'] as String,
      memberNumber: json['mitgliedsnummer'] as String,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userlogin': instance.username,
      'id': instance.userId,
      'vorname': instance.firstName,
      'nachname': instance.lastName,
      'key_me': instance.me,
      'key_og': instance.og,
      'mitgliedsnummer': instance.memberNumber,
    };
