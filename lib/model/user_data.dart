import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.g.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String userName,
    required int userId,
    required String name,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

extension UserDataExtension on UserData {
  String get firstName => name.split(",").last.trim();
}