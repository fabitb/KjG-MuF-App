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

  factory EventModel.fromJson(Map<String, dynamic> json) {
    String eventID = json['id'];
    String? timeInput = json['zeit'];
    String startTime = "00:00";
    bool hasEndTime = false;
    String endTime = "00:00";
    if (timeInput != null && regexStartTime.hasMatch(timeInput)) {
      startTime = timeInput;
    } else if (timeInput != null && regexStartAndEndTime.hasMatch(timeInput)) {
      startTime = timeInput
          .split('-')
          .first;
      hasEndTime = true;
      endTime = timeInput.split('-')[1];
    }

    String? eventUrl;
    String? imageUrl;
    if (json.containsKey('url')) {
      final url = json['url'] as String?;
      if (url.isNotNullAndNotEmpty) {
        final link = json['link'] as String?;
        eventUrl = link.isNotNullAndNotEmpty
            ? "$url$link"
            : "${Strings.midaBaseURL}/?veranstaltung=$eventID&dialog=1";

        final bild = json['bild'] as String?;
        if(bild.isNotNullAndNotEmpty) {
          imageUrl = "$url/?download=$bild";
        }
      }
    }



    List<String>? attachments = json['attachments'] != null
        ? (json['attachments'] as String)
        .split("\n")
        .where((element) => element.isNotEmpty)
        .toList()
        : null;

    return EventModel(
      eventID: eventID,
      title: json['titel'],
      startDateAndTime:
      DateTime.parse('${json['datum'].toString()} $startTime'),
      endTime: hasEndTime
          ? DateTime.parse('${json['datum'].toString()} $endTime')
          : null,
      location: json['ort'],
      description: json['beschreibung'],
      contactName: json['kontakt'],
      contactEmail: json['kontaktemail'],
      eventUrl: eventUrl,
      durationDays: int.parse(json['anzahltage'] ?? "0"),
      attachments: attachments,
      imageUrl: imageUrl,
      organizer: json['verein'],
      type: json['typ'],
    );
  }

  static List<EventModel> createFakeData() {
    return List.generate(
      4,
          (index) =>
          EventModel(
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