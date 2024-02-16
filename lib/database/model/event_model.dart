import 'package:isar/isar.dart';
import 'package:kjg_muf_app/model/event.dart';

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
  late String imageUrl;
  late String organizer;
  late bool registered;

  EventModel(
      this.id,
      this.eventID,
      this.title,
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
      this.registered);

  factory EventModel.fromEvent(Event event, bool registered) {
    return EventModel(
        int.parse(event.eventID),
        event.eventID,
        event.title,
        event.startDateAndTime,
        event.endTime,
        event.location,
        event.description,
        event.contactName,
        event.contactEmail,
        event.eventUrl,
        event.durationDays,
        event.attachments,
        event.imageUrl,
        event.organizer,
        registered);
  }

  Event toEvent() {
    return Event(
        eventID: eventID,
        title: title,
        startDateAndTime: startDateAndTime,
        location: location,
        description: description,
        contactName: contactName,
        contactEmail: contactEmail,
        eventUrl: eventUrl,
        durationDays: durationDays,
        attachments: attachments,
        imageUrl: imageUrl,
        organizer: organizer);
  }
}
