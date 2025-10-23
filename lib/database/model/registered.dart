import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered.freezed.dart';
part 'registered.g.dart';

@freezed
abstract class Registered with _$Registered {
  const Registered._();

  const factory Registered({required int eventId}) = _Registered;

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);
}
