// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      username: json['userlogin'] as String,
      userId: json['id'] as String,
      firstName: json['vorname'] as String,
      lastName: json['nachname'] as String,
      me: json['key_me'] as String,
      og: json['key_og'] as String,
      memberNumber: json['mitgliedsnummer'] as String,
    );

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
      'userlogin': instance.username,
      'id': instance.userId,
      'vorname': instance.firstName,
      'nachname': instance.lastName,
      'key_me': instance.me,
      'key_og': instance.og,
      'mitgliedsnummer': instance.memberNumber,
    };
