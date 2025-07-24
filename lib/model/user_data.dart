import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "userlogin") required String username,
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "vorname") required String firstName,
    @JsonKey(name: "nachname") required String lastName,
    @JsonKey(name: "key_me") required String me,
    @JsonKey(name: "key_og") required String og,
    @JsonKey(name: "mitgliedsnummer") required String memberNumber,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

extension UserDataExtension on UserData {
  String get name => "$lastName, $firstName";

  String? get region => me != "Ortsgruppenmitglied ohne ME" ? me : null;
  String? get subregion => og != "keine Ortsgruppe" ? og : null;
}
