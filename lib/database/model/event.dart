import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
sealed class BackendMidaEvent with _$BackendMidaEvent {
  const factory BackendMidaEvent({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'mandant') String? clientId,
    @JsonKey(name: 'datum') String? date,
    @JsonKey(name: 'titel') String? title,
    @JsonKey(name: 'beschreibung') String? description,
    @JsonKey(name: 'ort') String? location,
    @JsonKey(name: 'akid') String? groupId,
    @JsonKey(name: 'zeit') String? time,
    @JsonKey(name: 'anzahltage') String? numberOfDays,
    @JsonKey(name: 'ueberlappend') String? overlapping,
    @JsonKey(name: 'userid') String? userId,
    @JsonKey(name: 'kontakt') String? contactName,
    @JsonKey(name: 'kontaktemail') String? contactEmail,
    @JsonKey(name: 'kontakttelefon') String? contactPhone,
    @JsonKey(name: 'kontaktstrasse') String? contactStreet,
    @JsonKey(name: 'kontaktort') String? contactCity,
    @JsonKey(name: 'kontaktfax') String? contactFax,
    @JsonKey(name: 'maxpersonen') String? maxParticipants,
    @JsonKey(name: 'bild') String? image,
    @JsonKey(name: 'attachments') String? attachments,
    @JsonKey(name: 'remindertagezuvor') String? reminderDaysBefore,
    @JsonKey(name: 'remindertarget') String? reminderTarget,
    @JsonKey(name: 'kostenmitglied') String? costMember,
    @JsonKey(name: 'kostenfremd') String? costGuest,
    @JsonKey(name: 'kostenbegleitung') String? costCompanion,
    @JsonKey(name: 'kosten') String? cost,
    @JsonKey(name: 'oeffentlich') String? publicType,
    @JsonKey(name: 'sichtbarab') String? visibleFrom,
    @JsonKey(name: 'remindersent') String? reminderSent,
    @JsonKey(name: 'anmeldemail') String? registrationEmail,
    @JsonKey(name: 'anmeldemailcontent') String? registrationEmailContent,
    @JsonKey(name: 'anmeldunguserpublic') String? registrationUserPublic,
    @JsonKey(name: 'typ') String? type,
    @JsonKey(name: 'anmeldebeginn') String? registrationStart,
    @JsonKey(name: 'anmeldeschluss') String? registrationDeadline,
    @JsonKey(name: 'vfarbe') String? colorPrimary,
    @JsonKey(name: 'hfarbe') String? colorSecondary,
    @JsonKey(name: 'datumspezial') String? specialDate,
    @JsonKey(name: 'sichtbar') String? visibilityType,
    @JsonKey(name: 'abmeldeschluss') String? deregistrationDeadline,
    @JsonKey(name: 'maxbegleiter') String? maxCompanions,
    @JsonKey(name: 'workflowstatus') String? workflowStatus,
    @JsonKey(name: 'workflowuserid') String? workflowUserId,
    @JsonKey(name: 'akid2') String? groupId2,
    @JsonKey(name: 'nachlese') String? followUp,
    @JsonKey(name: 'remindertagezuvor2') String? reminderDaysBefore2,
    @JsonKey(name: 'remindertarget2') String? reminderTarget2,
    @JsonKey(name: 'warteliste') String? waitlist,
    @JsonKey(name: 'zahlungsweise') String? paymentMethod,
    @JsonKey(name: 'acl') String? accessControlList,
    @JsonKey(name: 'anmeldebestaetigungsmail')
    String? registrationConfirmationEmail,
    @JsonKey(name: 'serienveranstaltungid') String? seriesEventId,
    @JsonKey(name: 'bilder') String? imageCount, // not image count?
    @JsonKey(name: 'bemerkung') String? notes,
    @JsonKey(name: 'modified') String? modified,
    @JsonKey(name: 'kvp') String? kvp,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'sichtbarverband') String? visibilityAssociation,
    @JsonKey(name: 'kurs') String? course,
    @JsonKey(name: 'versammlung') String? assembly,
    @JsonKey(name: 'rv') String? rv,
    @JsonKey(name: 'kuerzel') String? abbreviation,
    @JsonKey(name: 'verein') String? organization,
    @JsonKey(name: 'anmeldungen') String? registrationCount,
    @JsonKey(name: 'beschreibungteaser') String? descriptionTeaser,
    @JsonKey(name: 'freieplaetze') String? freeSlots,
    @JsonKey(name: 'wotagdatum') String? weekdayDate,
    @JsonKey(name: 'ampel') String? trafficLight,
    @JsonKey(name: 'rabattinfo') String? discountInfo,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'idmandant') String? clientEventId,
  }) = _BackendMidaEvent;

  factory BackendMidaEvent.fromJson(Map<String, dynamic> json) =>
      _$BackendMidaEventFromJson(json);
}

@freezed
abstract class MidaEvent with _$MidaEvent {
  const MidaEvent._();

  const factory MidaEvent({
    required int id,
    int? clientId,
    required DateTime startDateAndTime,
    required DateTime endDateAndTime,
    required String title,
    String? description,
    String? location,
    int? groupId,
    String? time,
    int? numberOfDays,
    String? contactName,
    String? contactEmail,
    int? maxParticipants,
    String? image,
    List<String>? attachments,
    double? costMember,
    double? costGuest,
    double? costCompanion,
    String? cost,
    int? publicType,
    int? type,
    DateTime? registrationStart,
    DateTime? registrationDeadline,
    int? visibilityType,
    DateTime? deregistrationDeadline,
    int? maxCompanions,
    int? seriesEventId,
    int? visibilityAssociation,
    bool? rv,
    String? abbreviation,
    String? organization,
    int? registrationCount,
    String? freeSlots,
    String? link,
    required String baseUrl,
    String? clientEventId,
  }) = _MidaEvent;

  factory MidaEvent.fromJson(Map<String, dynamic> json) =>
      _$MidaEventFromJson(json);

  static RegExp regexTime = RegExp(r'\d{2}:\d{2}');

  static MidaEvent? fromBackendMidaEvent(BackendMidaEvent e) {
    String? nullIfEmpty(String? v) =>
        (v == null || v.trim().isEmpty) ? null : v;
    DateTime? tryParseDate(String? v) =>
        nullIfEmpty(v) == null || v == '0000-00-00'
            ? null
            : DateTime.tryParse(v!);
    int? tryParseInt(String? v) => int.tryParse(nullIfEmpty(v) ?? '');
    double? tryParseDouble(String? v) => double.tryParse(nullIfEmpty(v) ?? '');
    bool? parseBool(String? v) => nullIfEmpty(v) == '1';

    final id = tryParseInt(e.id);
    final title = nullIfEmpty(e.title);
    final parsedDate = tryParseDate(e.date);
    final url = nullIfEmpty(e.url);
    if (id == null || title == null || parsedDate == null || url == null) {
      return null;
    }

    Duration toDuration(String input) {
      final parts = input.split(":");
      return Duration(hours: int.parse(parts[0]), minutes: int.parse(parts[1]));
    }

    final matches = regexTime
        .allMatches(e.time ?? "")
        .map((m) => m.group(0))
        .nonNulls
        .map((s) => toDuration(s))
        .toList();

    final firstTime = matches.firstOrNull ?? Duration();
    final start = parsedDate.add(firstTime);
    final end = matches.length > 1
        ? parsedDate.add(matches[1])
        : start.add(Duration(days: (tryParseInt(e.numberOfDays) ?? 1) - 1));

    final attachments =
        e.attachments?.split("\n").where((e) => e.isNotEmpty).toList();

    return MidaEvent(
      id: id,
      clientId: tryParseInt(e.clientId),
      startDateAndTime: start,
      endDateAndTime: end,
      title: title,
      description: nullIfEmpty(e.description),
      location: nullIfEmpty(e.location),
      groupId: tryParseInt(e.groupId),
      time: nullIfEmpty(e.time),
      numberOfDays: tryParseInt(e.numberOfDays),
      contactName: nullIfEmpty(e.contactName),
      contactEmail: nullIfEmpty(e.contactEmail),
      maxParticipants: tryParseInt(e.maxParticipants),
      image: nullIfEmpty(e.image),
      attachments: attachments,
      costMember: tryParseDouble(e.costMember),
      costGuest: tryParseDouble(e.costGuest),
      costCompanion: tryParseDouble(e.costCompanion),
      cost: nullIfEmpty(e.cost),
      publicType: tryParseInt(e.publicType),
      type: tryParseInt(e.type),
      registrationStart: tryParseDate(e.registrationStart),
      registrationDeadline: tryParseDate(e.registrationDeadline),
      visibilityType: tryParseInt(e.visibilityType),
      deregistrationDeadline: tryParseDate(e.deregistrationDeadline),
      maxCompanions: tryParseInt(e.maxCompanions),
      seriesEventId: tryParseInt(e.seriesEventId),
      visibilityAssociation: tryParseInt(e.visibilityAssociation),
      rv: parseBool(e.rv),
      abbreviation: nullIfEmpty(e.abbreviation),
      organization: nullIfEmpty(e.organization),
      registrationCount: tryParseInt(e.registrationCount),
      freeSlots: nullIfEmpty(e.freeSlots),
      link: nullIfEmpty(e.link),
      baseUrl: url,
      clientEventId: nullIfEmpty(e.clientEventId),
    );
  }

  static List<MidaEvent> createFakeData() {
    return List.generate(
        4,
        (index) => MidaEvent(
            id: index,
            baseUrl: "",
            startDateAndTime: DateTime.now(),
            endDateAndTime: DateTime.now(),
            title: "title"));
  }
}

extension MidaEventExtension on MidaEvent {
  String get eventUrl => "${Strings.midaBaseURL}?veranstaltung=$id&dialog=1";

  EventAttachment? get imageAttachment => image != null
      ? EventAttachment(
          eventId: id, name: image!, url: "$baseUrl/?download=$image")
      : null;

  String attachmentDownloadLink(String attachment) =>
      "$baseUrl/?download=$attachment";

  String? get locationName {
    if (location != null) {
      final parts = location!.split(":");
      return parts[0];
    }
    return null;
  }

  String? get locationForMap {
    if (location != null) {
      final parts = location!.split(":");
      if (parts.length > 1) {
        return parts[1].trim();
      }
    }
    return null;
  }

  List<EventAttachment>? get eventAttachments {
    final attachments = this.attachments;
    if (attachments == null || attachments.isEmpty) return null;

    return attachments
        .map((a) => EventAttachment(
            eventId: id, url: attachmentDownloadLink(a), name: a))
        .toList();
  }
}
