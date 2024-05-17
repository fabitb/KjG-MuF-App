import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/utils/extensions.dart';

part 'event_model.g.dart';

@collection
class EventModel {
  late Id id;
  late String eventID;
  late String title;
  late DateTime? startDateAndTime;
  late DateTime? endTime;
  late String? location;
  late String? description;
  late String? contactName;
  late String? contactEmail;
  late String? eventUrl;
  late int? durationDays;
  late List<String>? attachments;
  late String? imageUrl;
  late String? organizer;
  late String? type;
  late bool registered;

  DateTime? get endDate =>
      startDateAndTime?.add(Duration(days: durationDays ?? 1 - 1));

  String? get locationName {
    if (location.isNotNullAndNotEmpty) {
      final parts = location!.split(":");
      return parts[0];
    }
    return null;
  }

  String? get locationForMap {
    if (location.isNotNullAndNotEmpty) {
      final parts = location!.split(":");
      if (parts.length > 1) {
        return parts[1].trim();
      }
    }
    return null;
  }

  static RegExp regexStartTime = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
  static RegExp regexStartAndEndTime = RegExp(r'^\d{2}:\d{2}-\d{2}:\d{2}$');

  EventModel({
    required this.eventID,
    required this.title,
    this.startDateAndTime,
    this.endTime,
    this.location,
    this.description,
    this.contactName,
    this.contactEmail,
    this.eventUrl,
    this.durationDays,
    this.attachments,
    this.imageUrl,
    this.organizer,
    this.type,
    this.registered = false,
  }) : id = int.parse(eventID);

  static EventModel? fromJson(Map<String, dynamic> json) {
    // match necessary json values
    if (json
        case {
          'id': String eventID,
          'zeit': String timeInput,
          'titel': String titel,
          'datum': String datum,
        }) {
      String startTime = "00:00";
      bool hasEndTime = false;
      String endTime = "00:00";
      if (regexStartTime.hasMatch(timeInput)) {
        startTime = timeInput;
      } else if (regexStartAndEndTime.hasMatch(timeInput)) {
        startTime = timeInput.split('-').first;
        hasEndTime = true;
        endTime = timeInput.split('-')[1];
      }

      String? eventUrl;
      String? imageUrl;
      if (json.getStringNonEmpty('url') case String url) {
        if (json.getStringNonEmpty('link') case String link) {
          eventUrl = "$url$link";
        }

        if (json.getStringNonEmpty('bild') case String bild) imageUrl = "$url/?download=$bild";
      }

      eventUrl ??= "${Strings.midaBaseURL}/?veranstaltung=$eventID&dialog=1";

      String? location;
      if (json.getStringNonEmpty('ort') case String ort) location = ort;

      List<String>? attachments;
      if (json.getStringNonEmpty('attachments') case String attachmentsString) {
        attachmentsString
            .split("\n")
            .where((element) => element.isNotEmpty)
            .toList();
      }

      int durationDays = 0;
      if (json['anzahltage'] case String anzahltage) durationDays = int.tryParse(anzahltage) ?? 0;

      return EventModel(
        eventID: eventID,
        title: titel,
        startDateAndTime: DateTime.parse('$datum $startTime'),
        endTime: hasEndTime ? DateTime.parse('$datum $endTime') : null,
        location: location,
        description: json.getStringNonEmpty('beschreibung'),
        contactName: json.getStringNonEmpty('kontakt'),
        contactEmail: json.getStringNonEmpty('kontaktemail'),
        eventUrl: eventUrl,
        durationDays: durationDays,
        attachments: attachments,
        imageUrl: imageUrl,
        organizer: json.getStringNonEmpty('verein'),
        type: json.getStringNonEmpty('typ'),
      );
    }

    return null;
  }

  static List<EventModel> createFakeData() {
    return List.generate(
      4,
      (index) => EventModel(
        eventID: index.toString(),
        title: "TestEvent",
        startDateAndTime: DateTime.now(),
        location: "",
        description: "",
        contactName: "",
        contactEmail: "",
        eventUrl: "",
        durationDays: 1,
        attachments: [],
        imageUrl: "",
        organizer: "",
      ),
    );
  }
}
