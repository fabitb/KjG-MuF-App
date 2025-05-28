import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'registered.freezed.dart';

part 'registered.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Registered
    with _$Registered {
  const Registered._();

  Id get isarId => eventId;

  const factory Registered({
    required int eventId,
  }) = _Registered;

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);
}