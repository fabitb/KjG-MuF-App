// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackendMidaEvent {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'mandant')
  String? get clientId;
  @JsonKey(name: 'datum')
  String? get date;
  @JsonKey(name: 'titel')
  String? get title;
  @JsonKey(name: 'beschreibung')
  String? get description;
  @JsonKey(name: 'ort')
  String? get location;
  @JsonKey(name: 'akid')
  String? get groupId;
  @JsonKey(name: 'zeit')
  String? get time;
  @JsonKey(name: 'anzahltage')
  String? get numberOfDays;
  @JsonKey(name: 'ueberlappend')
  String? get overlapping;
  @JsonKey(name: 'userid')
  String? get userId;
  @JsonKey(name: 'kontakt')
  String? get contactName;
  @JsonKey(name: 'kontaktemail')
  String? get contactEmail;
  @JsonKey(name: 'kontakttelefon')
  String? get contactPhone;
  @JsonKey(name: 'kontaktstrasse')
  String? get contactStreet;
  @JsonKey(name: 'kontaktort')
  String? get contactCity;
  @JsonKey(name: 'kontaktfax')
  String? get contactFax;
  @JsonKey(name: 'maxpersonen')
  String? get maxParticipants;
  @JsonKey(name: 'bild')
  String? get image;
  @JsonKey(name: 'attachments')
  String? get attachments;
  @JsonKey(name: 'remindertagezuvor')
  String? get reminderDaysBefore;
  @JsonKey(name: 'remindertarget')
  String? get reminderTarget;
  @JsonKey(name: 'kostenmitglied')
  String? get costMember;
  @JsonKey(name: 'kostenfremd')
  String? get costGuest;
  @JsonKey(name: 'kostenbegleitung')
  String? get costCompanion;
  @JsonKey(name: 'kosten')
  String? get cost;
  @JsonKey(name: 'oeffentlich')
  String? get publicType;
  @JsonKey(name: 'sichtbarab')
  String? get visibleFrom;
  @JsonKey(name: 'remindersent')
  String? get reminderSent;
  @JsonKey(name: 'anmeldemail')
  String? get registrationEmail;
  @JsonKey(name: 'anmeldemailcontent')
  String? get registrationEmailContent;
  @JsonKey(name: 'anmeldunguserpublic')
  String? get registrationUserPublic;
  @JsonKey(name: 'typ')
  String? get type;
  @JsonKey(name: 'anmeldebeginn')
  String? get registrationStart;
  @JsonKey(name: 'anmeldeschluss')
  String? get registrationDeadline;
  @JsonKey(name: 'vfarbe')
  String? get colorPrimary;
  @JsonKey(name: 'hfarbe')
  String? get colorSecondary;
  @JsonKey(name: 'datumspezial')
  String? get specialDate;
  @JsonKey(name: 'sichtbar')
  String? get visibilityType;
  @JsonKey(name: 'abmeldeschluss')
  String? get deregistrationDeadline;
  @JsonKey(name: 'maxbegleiter')
  String? get maxCompanions;
  @JsonKey(name: 'workflowstatus')
  String? get workflowStatus;
  @JsonKey(name: 'workflowuserid')
  String? get workflowUserId;
  @JsonKey(name: 'akid2')
  String? get groupId2;
  @JsonKey(name: 'nachlese')
  String? get followUp;
  @JsonKey(name: 'remindertagezuvor2')
  String? get reminderDaysBefore2;
  @JsonKey(name: 'remindertarget2')
  String? get reminderTarget2;
  @JsonKey(name: 'warteliste')
  String? get waitlist;
  @JsonKey(name: 'zahlungsweise')
  String? get paymentMethod;
  @JsonKey(name: 'acl')
  String? get accessControlList;
  @JsonKey(name: 'anmeldebestaetigungsmail')
  String? get registrationConfirmationEmail;
  @JsonKey(name: 'serienveranstaltungid')
  String? get seriesEventId;
  @JsonKey(name: 'bilder')
  String? get imageCount; // not image count?
  @JsonKey(name: 'bemerkung')
  String? get notes;
  @JsonKey(name: 'modified')
  String? get modified;
  @JsonKey(name: 'kvp')
  String? get kvp;
  @JsonKey(name: 'currency')
  String? get currency;
  @JsonKey(name: 'sichtbarverband')
  String? get visibilityAssociation;
  @JsonKey(name: 'kurs')
  String? get course;
  @JsonKey(name: 'versammlung')
  String? get assembly;
  @JsonKey(name: 'rv')
  String? get rv;
  @JsonKey(name: 'kuerzel')
  String? get abbreviation;
  @JsonKey(name: 'verein')
  String? get organization;
  @JsonKey(name: 'anmeldungen')
  String? get registrationCount;
  @JsonKey(name: 'beschreibungteaser')
  String? get descriptionTeaser;
  @JsonKey(name: 'freieplaetze')
  String? get freeSlots;
  @JsonKey(name: 'wotagdatum')
  String? get weekdayDate;
  @JsonKey(name: 'ampel')
  String? get trafficLight;
  @JsonKey(name: 'rabattinfo')
  String? get discountInfo;
  @JsonKey(name: 'link')
  String? get link;
  @JsonKey(name: 'url')
  String? get url;
  @JsonKey(name: 'idmandant')
  String? get clientEventId;

  /// Create a copy of BackendMidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackendMidaEventCopyWith<BackendMidaEvent> get copyWith =>
      _$BackendMidaEventCopyWithImpl<BackendMidaEvent>(
          this as BackendMidaEvent, _$identity);

  /// Serializes this BackendMidaEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackendMidaEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.overlapping, overlapping) ||
                other.overlapping == overlapping) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.contactStreet, contactStreet) ||
                other.contactStreet == contactStreet) &&
            (identical(other.contactCity, contactCity) ||
                other.contactCity == contactCity) &&
            (identical(other.contactFax, contactFax) ||
                other.contactFax == contactFax) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.attachments, attachments) ||
                other.attachments == attachments) &&
            (identical(other.reminderDaysBefore, reminderDaysBefore) ||
                other.reminderDaysBefore == reminderDaysBefore) &&
            (identical(other.reminderTarget, reminderTarget) ||
                other.reminderTarget == reminderTarget) &&
            (identical(other.costMember, costMember) ||
                other.costMember == costMember) &&
            (identical(other.costGuest, costGuest) ||
                other.costGuest == costGuest) &&
            (identical(other.costCompanion, costCompanion) ||
                other.costCompanion == costCompanion) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.publicType, publicType) ||
                other.publicType == publicType) &&
            (identical(other.visibleFrom, visibleFrom) ||
                other.visibleFrom == visibleFrom) &&
            (identical(other.reminderSent, reminderSent) ||
                other.reminderSent == reminderSent) &&
            (identical(other.registrationEmail, registrationEmail) ||
                other.registrationEmail == registrationEmail) &&
            (identical(other.registrationEmailContent, registrationEmailContent) ||
                other.registrationEmailContent == registrationEmailContent) &&
            (identical(other.registrationUserPublic, registrationUserPublic) ||
                other.registrationUserPublic == registrationUserPublic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.registrationStart, registrationStart) ||
                other.registrationStart == registrationStart) &&
            (identical(other.registrationDeadline, registrationDeadline) ||
                other.registrationDeadline == registrationDeadline) &&
            (identical(other.colorPrimary, colorPrimary) ||
                other.colorPrimary == colorPrimary) &&
            (identical(other.colorSecondary, colorSecondary) ||
                other.colorSecondary == colorSecondary) &&
            (identical(other.specialDate, specialDate) ||
                other.specialDate == specialDate) &&
            (identical(other.visibilityType, visibilityType) ||
                other.visibilityType == visibilityType) &&
            (identical(other.deregistrationDeadline, deregistrationDeadline) ||
                other.deregistrationDeadline == deregistrationDeadline) &&
            (identical(other.maxCompanions, maxCompanions) ||
                other.maxCompanions == maxCompanions) &&
            (identical(other.workflowStatus, workflowStatus) ||
                other.workflowStatus == workflowStatus) &&
            (identical(other.workflowUserId, workflowUserId) ||
                other.workflowUserId == workflowUserId) &&
            (identical(other.groupId2, groupId2) ||
                other.groupId2 == groupId2) &&
            (identical(other.followUp, followUp) ||
                other.followUp == followUp) &&
            (identical(other.reminderDaysBefore2, reminderDaysBefore2) ||
                other.reminderDaysBefore2 == reminderDaysBefore2) &&
            (identical(other.reminderTarget2, reminderTarget2) ||
                other.reminderTarget2 == reminderTarget2) &&
            (identical(other.waitlist, waitlist) ||
                other.waitlist == waitlist) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accessControlList, accessControlList) || other.accessControlList == accessControlList) &&
            (identical(other.registrationConfirmationEmail, registrationConfirmationEmail) || other.registrationConfirmationEmail == registrationConfirmationEmail) &&
            (identical(other.seriesEventId, seriesEventId) || other.seriesEventId == seriesEventId) &&
            (identical(other.imageCount, imageCount) || other.imageCount == imageCount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.modified, modified) || other.modified == modified) &&
            (identical(other.kvp, kvp) || other.kvp == kvp) &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.visibilityAssociation, visibilityAssociation) || other.visibilityAssociation == visibilityAssociation) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.assembly, assembly) || other.assembly == assembly) &&
            (identical(other.rv, rv) || other.rv == rv) &&
            (identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation) &&
            (identical(other.organization, organization) || other.organization == organization) &&
            (identical(other.registrationCount, registrationCount) || other.registrationCount == registrationCount) &&
            (identical(other.descriptionTeaser, descriptionTeaser) || other.descriptionTeaser == descriptionTeaser) &&
            (identical(other.freeSlots, freeSlots) || other.freeSlots == freeSlots) &&
            (identical(other.weekdayDate, weekdayDate) || other.weekdayDate == weekdayDate) &&
            (identical(other.trafficLight, trafficLight) || other.trafficLight == trafficLight) &&
            (identical(other.discountInfo, discountInfo) || other.discountInfo == discountInfo) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.clientEventId, clientEventId) || other.clientEventId == clientEventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clientId,
        date,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        overlapping,
        userId,
        contactName,
        contactEmail,
        contactPhone,
        contactStreet,
        contactCity,
        contactFax,
        maxParticipants,
        image,
        attachments,
        reminderDaysBefore,
        reminderTarget,
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        visibleFrom,
        reminderSent,
        registrationEmail,
        registrationEmailContent,
        registrationUserPublic,
        type,
        registrationStart,
        registrationDeadline,
        colorPrimary,
        colorSecondary,
        specialDate,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        workflowStatus,
        workflowUserId,
        groupId2,
        followUp,
        reminderDaysBefore2,
        reminderTarget2,
        waitlist,
        paymentMethod,
        accessControlList,
        registrationConfirmationEmail,
        seriesEventId,
        imageCount,
        notes,
        modified,
        kvp,
        currency,
        visibilityAssociation,
        course,
        assembly,
        rv,
        abbreviation,
        organization,
        registrationCount,
        descriptionTeaser,
        freeSlots,
        weekdayDate,
        trafficLight,
        discountInfo,
        link,
        url,
        clientEventId
      ]);

  @override
  String toString() {
    return 'BackendMidaEvent(id: $id, clientId: $clientId, date: $date, title: $title, description: $description, location: $location, groupId: $groupId, time: $time, numberOfDays: $numberOfDays, overlapping: $overlapping, userId: $userId, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, contactStreet: $contactStreet, contactCity: $contactCity, contactFax: $contactFax, maxParticipants: $maxParticipants, image: $image, attachments: $attachments, reminderDaysBefore: $reminderDaysBefore, reminderTarget: $reminderTarget, costMember: $costMember, costGuest: $costGuest, costCompanion: $costCompanion, cost: $cost, publicType: $publicType, visibleFrom: $visibleFrom, reminderSent: $reminderSent, registrationEmail: $registrationEmail, registrationEmailContent: $registrationEmailContent, registrationUserPublic: $registrationUserPublic, type: $type, registrationStart: $registrationStart, registrationDeadline: $registrationDeadline, colorPrimary: $colorPrimary, colorSecondary: $colorSecondary, specialDate: $specialDate, visibilityType: $visibilityType, deregistrationDeadline: $deregistrationDeadline, maxCompanions: $maxCompanions, workflowStatus: $workflowStatus, workflowUserId: $workflowUserId, groupId2: $groupId2, followUp: $followUp, reminderDaysBefore2: $reminderDaysBefore2, reminderTarget2: $reminderTarget2, waitlist: $waitlist, paymentMethod: $paymentMethod, accessControlList: $accessControlList, registrationConfirmationEmail: $registrationConfirmationEmail, seriesEventId: $seriesEventId, imageCount: $imageCount, notes: $notes, modified: $modified, kvp: $kvp, currency: $currency, visibilityAssociation: $visibilityAssociation, course: $course, assembly: $assembly, rv: $rv, abbreviation: $abbreviation, organization: $organization, registrationCount: $registrationCount, descriptionTeaser: $descriptionTeaser, freeSlots: $freeSlots, weekdayDate: $weekdayDate, trafficLight: $trafficLight, discountInfo: $discountInfo, link: $link, url: $url, clientEventId: $clientEventId)';
  }
}

/// @nodoc
abstract mixin class $BackendMidaEventCopyWith<$Res> {
  factory $BackendMidaEventCopyWith(
          BackendMidaEvent value, $Res Function(BackendMidaEvent) _then) =
      _$BackendMidaEventCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'bilder') String? imageCount,
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
      @JsonKey(name: 'idmandant') String? clientEventId});
}

/// @nodoc
class _$BackendMidaEventCopyWithImpl<$Res>
    implements $BackendMidaEventCopyWith<$Res> {
  _$BackendMidaEventCopyWithImpl(this._self, this._then);

  final BackendMidaEvent _self;
  final $Res Function(BackendMidaEvent) _then;

  /// Create a copy of BackendMidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? groupId = freezed,
    Object? time = freezed,
    Object? numberOfDays = freezed,
    Object? overlapping = freezed,
    Object? userId = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? contactStreet = freezed,
    Object? contactCity = freezed,
    Object? contactFax = freezed,
    Object? maxParticipants = freezed,
    Object? image = freezed,
    Object? attachments = freezed,
    Object? reminderDaysBefore = freezed,
    Object? reminderTarget = freezed,
    Object? costMember = freezed,
    Object? costGuest = freezed,
    Object? costCompanion = freezed,
    Object? cost = freezed,
    Object? publicType = freezed,
    Object? visibleFrom = freezed,
    Object? reminderSent = freezed,
    Object? registrationEmail = freezed,
    Object? registrationEmailContent = freezed,
    Object? registrationUserPublic = freezed,
    Object? type = freezed,
    Object? registrationStart = freezed,
    Object? registrationDeadline = freezed,
    Object? colorPrimary = freezed,
    Object? colorSecondary = freezed,
    Object? specialDate = freezed,
    Object? visibilityType = freezed,
    Object? deregistrationDeadline = freezed,
    Object? maxCompanions = freezed,
    Object? workflowStatus = freezed,
    Object? workflowUserId = freezed,
    Object? groupId2 = freezed,
    Object? followUp = freezed,
    Object? reminderDaysBefore2 = freezed,
    Object? reminderTarget2 = freezed,
    Object? waitlist = freezed,
    Object? paymentMethod = freezed,
    Object? accessControlList = freezed,
    Object? registrationConfirmationEmail = freezed,
    Object? seriesEventId = freezed,
    Object? imageCount = freezed,
    Object? notes = freezed,
    Object? modified = freezed,
    Object? kvp = freezed,
    Object? currency = freezed,
    Object? visibilityAssociation = freezed,
    Object? course = freezed,
    Object? assembly = freezed,
    Object? rv = freezed,
    Object? abbreviation = freezed,
    Object? organization = freezed,
    Object? registrationCount = freezed,
    Object? descriptionTeaser = freezed,
    Object? freeSlots = freezed,
    Object? weekdayDate = freezed,
    Object? trafficLight = freezed,
    Object? discountInfo = freezed,
    Object? link = freezed,
    Object? url = freezed,
    Object? clientEventId = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _self.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as String?,
      overlapping: freezed == overlapping
          ? _self.overlapping
          : overlapping // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _self.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      contactStreet: freezed == contactStreet
          ? _self.contactStreet
          : contactStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      contactCity: freezed == contactCity
          ? _self.contactCity
          : contactCity // ignore: cast_nullable_to_non_nullable
              as String?,
      contactFax: freezed == contactFax
          ? _self.contactFax
          : contactFax // ignore: cast_nullable_to_non_nullable
              as String?,
      maxParticipants: freezed == maxParticipants
          ? _self.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDaysBefore: freezed == reminderDaysBefore
          ? _self.reminderDaysBefore
          : reminderDaysBefore // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTarget: freezed == reminderTarget
          ? _self.reminderTarget
          : reminderTarget // ignore: cast_nullable_to_non_nullable
              as String?,
      costMember: freezed == costMember
          ? _self.costMember
          : costMember // ignore: cast_nullable_to_non_nullable
              as String?,
      costGuest: freezed == costGuest
          ? _self.costGuest
          : costGuest // ignore: cast_nullable_to_non_nullable
              as String?,
      costCompanion: freezed == costCompanion
          ? _self.costCompanion
          : costCompanion // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      publicType: freezed == publicType
          ? _self.publicType
          : publicType // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleFrom: freezed == visibleFrom
          ? _self.visibleFrom
          : visibleFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderSent: freezed == reminderSent
          ? _self.reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationEmail: freezed == registrationEmail
          ? _self.registrationEmail
          : registrationEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationEmailContent: freezed == registrationEmailContent
          ? _self.registrationEmailContent
          : registrationEmailContent // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationUserPublic: freezed == registrationUserPublic
          ? _self.registrationUserPublic
          : registrationUserPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationStart: freezed == registrationStart
          ? _self.registrationStart
          : registrationStart // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDeadline: freezed == registrationDeadline
          ? _self.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      colorPrimary: freezed == colorPrimary
          ? _self.colorPrimary
          : colorPrimary // ignore: cast_nullable_to_non_nullable
              as String?,
      colorSecondary: freezed == colorSecondary
          ? _self.colorSecondary
          : colorSecondary // ignore: cast_nullable_to_non_nullable
              as String?,
      specialDate: freezed == specialDate
          ? _self.specialDate
          : specialDate // ignore: cast_nullable_to_non_nullable
              as String?,
      visibilityType: freezed == visibilityType
          ? _self.visibilityType
          : visibilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      deregistrationDeadline: freezed == deregistrationDeadline
          ? _self.deregistrationDeadline
          : deregistrationDeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCompanions: freezed == maxCompanions
          ? _self.maxCompanions
          : maxCompanions // ignore: cast_nullable_to_non_nullable
              as String?,
      workflowStatus: freezed == workflowStatus
          ? _self.workflowStatus
          : workflowStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      workflowUserId: freezed == workflowUserId
          ? _self.workflowUserId
          : workflowUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId2: freezed == groupId2
          ? _self.groupId2
          : groupId2 // ignore: cast_nullable_to_non_nullable
              as String?,
      followUp: freezed == followUp
          ? _self.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDaysBefore2: freezed == reminderDaysBefore2
          ? _self.reminderDaysBefore2
          : reminderDaysBefore2 // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTarget2: freezed == reminderTarget2
          ? _self.reminderTarget2
          : reminderTarget2 // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlist: freezed == waitlist
          ? _self.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accessControlList: freezed == accessControlList
          ? _self.accessControlList
          : accessControlList // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationConfirmationEmail: freezed == registrationConfirmationEmail
          ? _self.registrationConfirmationEmail
          : registrationConfirmationEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesEventId: freezed == seriesEventId
          ? _self.seriesEventId
          : seriesEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageCount: freezed == imageCount
          ? _self.imageCount
          : imageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _self.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      kvp: freezed == kvp
          ? _self.kvp
          : kvp // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      visibilityAssociation: freezed == visibilityAssociation
          ? _self.visibilityAssociation
          : visibilityAssociation // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _self.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly: freezed == assembly
          ? _self.assembly
          : assembly // ignore: cast_nullable_to_non_nullable
              as String?,
      rv: freezed == rv
          ? _self.rv
          : rv // ignore: cast_nullable_to_non_nullable
              as String?,
      abbreviation: freezed == abbreviation
          ? _self.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _self.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCount: freezed == registrationCount
          ? _self.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionTeaser: freezed == descriptionTeaser
          ? _self.descriptionTeaser
          : descriptionTeaser // ignore: cast_nullable_to_non_nullable
              as String?,
      freeSlots: freezed == freeSlots
          ? _self.freeSlots
          : freeSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      weekdayDate: freezed == weekdayDate
          ? _self.weekdayDate
          : weekdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      trafficLight: freezed == trafficLight
          ? _self.trafficLight
          : trafficLight // ignore: cast_nullable_to_non_nullable
              as String?,
      discountInfo: freezed == discountInfo
          ? _self.discountInfo
          : discountInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      clientEventId: freezed == clientEventId
          ? _self.clientEventId
          : clientEventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BackendMidaEvent].
extension BackendMidaEventPatterns on BackendMidaEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BackendMidaEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BackendMidaEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BackendMidaEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: 'anmeldemailcontent')
            String? registrationEmailContent,
            @JsonKey(name: 'anmeldunguserpublic')
            String? registrationUserPublic,
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
            @JsonKey(name: 'bilder') String? imageCount,
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
            @JsonKey(name: 'idmandant') String? clientEventId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent() when $default != null:
        return $default(
            _that.id,
            _that.clientId,
            _that.date,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.overlapping,
            _that.userId,
            _that.contactName,
            _that.contactEmail,
            _that.contactPhone,
            _that.contactStreet,
            _that.contactCity,
            _that.contactFax,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.reminderDaysBefore,
            _that.reminderTarget,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.visibleFrom,
            _that.reminderSent,
            _that.registrationEmail,
            _that.registrationEmailContent,
            _that.registrationUserPublic,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.colorPrimary,
            _that.colorSecondary,
            _that.specialDate,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.workflowStatus,
            _that.workflowUserId,
            _that.groupId2,
            _that.followUp,
            _that.reminderDaysBefore2,
            _that.reminderTarget2,
            _that.waitlist,
            _that.paymentMethod,
            _that.accessControlList,
            _that.registrationConfirmationEmail,
            _that.seriesEventId,
            _that.imageCount,
            _that.notes,
            _that.modified,
            _that.kvp,
            _that.currency,
            _that.visibilityAssociation,
            _that.course,
            _that.assembly,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.descriptionTeaser,
            _that.freeSlots,
            _that.weekdayDate,
            _that.trafficLight,
            _that.discountInfo,
            _that.link,
            _that.url,
            _that.clientEventId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: 'anmeldemailcontent')
            String? registrationEmailContent,
            @JsonKey(name: 'anmeldunguserpublic')
            String? registrationUserPublic,
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
            @JsonKey(name: 'bilder') String? imageCount,
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
            @JsonKey(name: 'idmandant') String? clientEventId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent():
        return $default(
            _that.id,
            _that.clientId,
            _that.date,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.overlapping,
            _that.userId,
            _that.contactName,
            _that.contactEmail,
            _that.contactPhone,
            _that.contactStreet,
            _that.contactCity,
            _that.contactFax,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.reminderDaysBefore,
            _that.reminderTarget,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.visibleFrom,
            _that.reminderSent,
            _that.registrationEmail,
            _that.registrationEmailContent,
            _that.registrationUserPublic,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.colorPrimary,
            _that.colorSecondary,
            _that.specialDate,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.workflowStatus,
            _that.workflowUserId,
            _that.groupId2,
            _that.followUp,
            _that.reminderDaysBefore2,
            _that.reminderTarget2,
            _that.waitlist,
            _that.paymentMethod,
            _that.accessControlList,
            _that.registrationConfirmationEmail,
            _that.seriesEventId,
            _that.imageCount,
            _that.notes,
            _that.modified,
            _that.kvp,
            _that.currency,
            _that.visibilityAssociation,
            _that.course,
            _that.assembly,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.descriptionTeaser,
            _that.freeSlots,
            _that.weekdayDate,
            _that.trafficLight,
            _that.discountInfo,
            _that.link,
            _that.url,
            _that.clientEventId);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
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
            @JsonKey(name: 'anmeldemailcontent')
            String? registrationEmailContent,
            @JsonKey(name: 'anmeldunguserpublic')
            String? registrationUserPublic,
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
            @JsonKey(name: 'bilder') String? imageCount,
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
            @JsonKey(name: 'idmandant') String? clientEventId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackendMidaEvent() when $default != null:
        return $default(
            _that.id,
            _that.clientId,
            _that.date,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.overlapping,
            _that.userId,
            _that.contactName,
            _that.contactEmail,
            _that.contactPhone,
            _that.contactStreet,
            _that.contactCity,
            _that.contactFax,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.reminderDaysBefore,
            _that.reminderTarget,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.visibleFrom,
            _that.reminderSent,
            _that.registrationEmail,
            _that.registrationEmailContent,
            _that.registrationUserPublic,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.colorPrimary,
            _that.colorSecondary,
            _that.specialDate,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.workflowStatus,
            _that.workflowUserId,
            _that.groupId2,
            _that.followUp,
            _that.reminderDaysBefore2,
            _that.reminderTarget2,
            _that.waitlist,
            _that.paymentMethod,
            _that.accessControlList,
            _that.registrationConfirmationEmail,
            _that.seriesEventId,
            _that.imageCount,
            _that.notes,
            _that.modified,
            _that.kvp,
            _that.currency,
            _that.visibilityAssociation,
            _that.course,
            _that.assembly,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.descriptionTeaser,
            _that.freeSlots,
            _that.weekdayDate,
            _that.trafficLight,
            _that.discountInfo,
            _that.link,
            _that.url,
            _that.clientEventId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BackendMidaEvent implements BackendMidaEvent {
  const _BackendMidaEvent(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'mandant') this.clientId,
      @JsonKey(name: 'datum') this.date,
      @JsonKey(name: 'titel') this.title,
      @JsonKey(name: 'beschreibung') this.description,
      @JsonKey(name: 'ort') this.location,
      @JsonKey(name: 'akid') this.groupId,
      @JsonKey(name: 'zeit') this.time,
      @JsonKey(name: 'anzahltage') this.numberOfDays,
      @JsonKey(name: 'ueberlappend') this.overlapping,
      @JsonKey(name: 'userid') this.userId,
      @JsonKey(name: 'kontakt') this.contactName,
      @JsonKey(name: 'kontaktemail') this.contactEmail,
      @JsonKey(name: 'kontakttelefon') this.contactPhone,
      @JsonKey(name: 'kontaktstrasse') this.contactStreet,
      @JsonKey(name: 'kontaktort') this.contactCity,
      @JsonKey(name: 'kontaktfax') this.contactFax,
      @JsonKey(name: 'maxpersonen') this.maxParticipants,
      @JsonKey(name: 'bild') this.image,
      @JsonKey(name: 'attachments') this.attachments,
      @JsonKey(name: 'remindertagezuvor') this.reminderDaysBefore,
      @JsonKey(name: 'remindertarget') this.reminderTarget,
      @JsonKey(name: 'kostenmitglied') this.costMember,
      @JsonKey(name: 'kostenfremd') this.costGuest,
      @JsonKey(name: 'kostenbegleitung') this.costCompanion,
      @JsonKey(name: 'kosten') this.cost,
      @JsonKey(name: 'oeffentlich') this.publicType,
      @JsonKey(name: 'sichtbarab') this.visibleFrom,
      @JsonKey(name: 'remindersent') this.reminderSent,
      @JsonKey(name: 'anmeldemail') this.registrationEmail,
      @JsonKey(name: 'anmeldemailcontent') this.registrationEmailContent,
      @JsonKey(name: 'anmeldunguserpublic') this.registrationUserPublic,
      @JsonKey(name: 'typ') this.type,
      @JsonKey(name: 'anmeldebeginn') this.registrationStart,
      @JsonKey(name: 'anmeldeschluss') this.registrationDeadline,
      @JsonKey(name: 'vfarbe') this.colorPrimary,
      @JsonKey(name: 'hfarbe') this.colorSecondary,
      @JsonKey(name: 'datumspezial') this.specialDate,
      @JsonKey(name: 'sichtbar') this.visibilityType,
      @JsonKey(name: 'abmeldeschluss') this.deregistrationDeadline,
      @JsonKey(name: 'maxbegleiter') this.maxCompanions,
      @JsonKey(name: 'workflowstatus') this.workflowStatus,
      @JsonKey(name: 'workflowuserid') this.workflowUserId,
      @JsonKey(name: 'akid2') this.groupId2,
      @JsonKey(name: 'nachlese') this.followUp,
      @JsonKey(name: 'remindertagezuvor2') this.reminderDaysBefore2,
      @JsonKey(name: 'remindertarget2') this.reminderTarget2,
      @JsonKey(name: 'warteliste') this.waitlist,
      @JsonKey(name: 'zahlungsweise') this.paymentMethod,
      @JsonKey(name: 'acl') this.accessControlList,
      @JsonKey(name: 'anmeldebestaetigungsmail')
      this.registrationConfirmationEmail,
      @JsonKey(name: 'serienveranstaltungid') this.seriesEventId,
      @JsonKey(name: 'bilder') this.imageCount,
      @JsonKey(name: 'bemerkung') this.notes,
      @JsonKey(name: 'modified') this.modified,
      @JsonKey(name: 'kvp') this.kvp,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'sichtbarverband') this.visibilityAssociation,
      @JsonKey(name: 'kurs') this.course,
      @JsonKey(name: 'versammlung') this.assembly,
      @JsonKey(name: 'rv') this.rv,
      @JsonKey(name: 'kuerzel') this.abbreviation,
      @JsonKey(name: 'verein') this.organization,
      @JsonKey(name: 'anmeldungen') this.registrationCount,
      @JsonKey(name: 'beschreibungteaser') this.descriptionTeaser,
      @JsonKey(name: 'freieplaetze') this.freeSlots,
      @JsonKey(name: 'wotagdatum') this.weekdayDate,
      @JsonKey(name: 'ampel') this.trafficLight,
      @JsonKey(name: 'rabattinfo') this.discountInfo,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'idmandant') this.clientEventId});
  factory _BackendMidaEvent.fromJson(Map<String, dynamic> json) =>
      _$BackendMidaEventFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'mandant')
  final String? clientId;
  @override
  @JsonKey(name: 'datum')
  final String? date;
  @override
  @JsonKey(name: 'titel')
  final String? title;
  @override
  @JsonKey(name: 'beschreibung')
  final String? description;
  @override
  @JsonKey(name: 'ort')
  final String? location;
  @override
  @JsonKey(name: 'akid')
  final String? groupId;
  @override
  @JsonKey(name: 'zeit')
  final String? time;
  @override
  @JsonKey(name: 'anzahltage')
  final String? numberOfDays;
  @override
  @JsonKey(name: 'ueberlappend')
  final String? overlapping;
  @override
  @JsonKey(name: 'userid')
  final String? userId;
  @override
  @JsonKey(name: 'kontakt')
  final String? contactName;
  @override
  @JsonKey(name: 'kontaktemail')
  final String? contactEmail;
  @override
  @JsonKey(name: 'kontakttelefon')
  final String? contactPhone;
  @override
  @JsonKey(name: 'kontaktstrasse')
  final String? contactStreet;
  @override
  @JsonKey(name: 'kontaktort')
  final String? contactCity;
  @override
  @JsonKey(name: 'kontaktfax')
  final String? contactFax;
  @override
  @JsonKey(name: 'maxpersonen')
  final String? maxParticipants;
  @override
  @JsonKey(name: 'bild')
  final String? image;
  @override
  @JsonKey(name: 'attachments')
  final String? attachments;
  @override
  @JsonKey(name: 'remindertagezuvor')
  final String? reminderDaysBefore;
  @override
  @JsonKey(name: 'remindertarget')
  final String? reminderTarget;
  @override
  @JsonKey(name: 'kostenmitglied')
  final String? costMember;
  @override
  @JsonKey(name: 'kostenfremd')
  final String? costGuest;
  @override
  @JsonKey(name: 'kostenbegleitung')
  final String? costCompanion;
  @override
  @JsonKey(name: 'kosten')
  final String? cost;
  @override
  @JsonKey(name: 'oeffentlich')
  final String? publicType;
  @override
  @JsonKey(name: 'sichtbarab')
  final String? visibleFrom;
  @override
  @JsonKey(name: 'remindersent')
  final String? reminderSent;
  @override
  @JsonKey(name: 'anmeldemail')
  final String? registrationEmail;
  @override
  @JsonKey(name: 'anmeldemailcontent')
  final String? registrationEmailContent;
  @override
  @JsonKey(name: 'anmeldunguserpublic')
  final String? registrationUserPublic;
  @override
  @JsonKey(name: 'typ')
  final String? type;
  @override
  @JsonKey(name: 'anmeldebeginn')
  final String? registrationStart;
  @override
  @JsonKey(name: 'anmeldeschluss')
  final String? registrationDeadline;
  @override
  @JsonKey(name: 'vfarbe')
  final String? colorPrimary;
  @override
  @JsonKey(name: 'hfarbe')
  final String? colorSecondary;
  @override
  @JsonKey(name: 'datumspezial')
  final String? specialDate;
  @override
  @JsonKey(name: 'sichtbar')
  final String? visibilityType;
  @override
  @JsonKey(name: 'abmeldeschluss')
  final String? deregistrationDeadline;
  @override
  @JsonKey(name: 'maxbegleiter')
  final String? maxCompanions;
  @override
  @JsonKey(name: 'workflowstatus')
  final String? workflowStatus;
  @override
  @JsonKey(name: 'workflowuserid')
  final String? workflowUserId;
  @override
  @JsonKey(name: 'akid2')
  final String? groupId2;
  @override
  @JsonKey(name: 'nachlese')
  final String? followUp;
  @override
  @JsonKey(name: 'remindertagezuvor2')
  final String? reminderDaysBefore2;
  @override
  @JsonKey(name: 'remindertarget2')
  final String? reminderTarget2;
  @override
  @JsonKey(name: 'warteliste')
  final String? waitlist;
  @override
  @JsonKey(name: 'zahlungsweise')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'acl')
  final String? accessControlList;
  @override
  @JsonKey(name: 'anmeldebestaetigungsmail')
  final String? registrationConfirmationEmail;
  @override
  @JsonKey(name: 'serienveranstaltungid')
  final String? seriesEventId;
  @override
  @JsonKey(name: 'bilder')
  final String? imageCount;
// not image count?
  @override
  @JsonKey(name: 'bemerkung')
  final String? notes;
  @override
  @JsonKey(name: 'modified')
  final String? modified;
  @override
  @JsonKey(name: 'kvp')
  final String? kvp;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'sichtbarverband')
  final String? visibilityAssociation;
  @override
  @JsonKey(name: 'kurs')
  final String? course;
  @override
  @JsonKey(name: 'versammlung')
  final String? assembly;
  @override
  @JsonKey(name: 'rv')
  final String? rv;
  @override
  @JsonKey(name: 'kuerzel')
  final String? abbreviation;
  @override
  @JsonKey(name: 'verein')
  final String? organization;
  @override
  @JsonKey(name: 'anmeldungen')
  final String? registrationCount;
  @override
  @JsonKey(name: 'beschreibungteaser')
  final String? descriptionTeaser;
  @override
  @JsonKey(name: 'freieplaetze')
  final String? freeSlots;
  @override
  @JsonKey(name: 'wotagdatum')
  final String? weekdayDate;
  @override
  @JsonKey(name: 'ampel')
  final String? trafficLight;
  @override
  @JsonKey(name: 'rabattinfo')
  final String? discountInfo;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'idmandant')
  final String? clientEventId;

  /// Create a copy of BackendMidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackendMidaEventCopyWith<_BackendMidaEvent> get copyWith =>
      __$BackendMidaEventCopyWithImpl<_BackendMidaEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BackendMidaEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackendMidaEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.overlapping, overlapping) ||
                other.overlapping == overlapping) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.contactStreet, contactStreet) ||
                other.contactStreet == contactStreet) &&
            (identical(other.contactCity, contactCity) ||
                other.contactCity == contactCity) &&
            (identical(other.contactFax, contactFax) ||
                other.contactFax == contactFax) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.attachments, attachments) ||
                other.attachments == attachments) &&
            (identical(other.reminderDaysBefore, reminderDaysBefore) ||
                other.reminderDaysBefore == reminderDaysBefore) &&
            (identical(other.reminderTarget, reminderTarget) ||
                other.reminderTarget == reminderTarget) &&
            (identical(other.costMember, costMember) ||
                other.costMember == costMember) &&
            (identical(other.costGuest, costGuest) ||
                other.costGuest == costGuest) &&
            (identical(other.costCompanion, costCompanion) ||
                other.costCompanion == costCompanion) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.publicType, publicType) ||
                other.publicType == publicType) &&
            (identical(other.visibleFrom, visibleFrom) ||
                other.visibleFrom == visibleFrom) &&
            (identical(other.reminderSent, reminderSent) ||
                other.reminderSent == reminderSent) &&
            (identical(other.registrationEmail, registrationEmail) ||
                other.registrationEmail == registrationEmail) &&
            (identical(other.registrationEmailContent, registrationEmailContent) ||
                other.registrationEmailContent == registrationEmailContent) &&
            (identical(other.registrationUserPublic, registrationUserPublic) ||
                other.registrationUserPublic == registrationUserPublic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.registrationStart, registrationStart) ||
                other.registrationStart == registrationStart) &&
            (identical(other.registrationDeadline, registrationDeadline) ||
                other.registrationDeadline == registrationDeadline) &&
            (identical(other.colorPrimary, colorPrimary) ||
                other.colorPrimary == colorPrimary) &&
            (identical(other.colorSecondary, colorSecondary) ||
                other.colorSecondary == colorSecondary) &&
            (identical(other.specialDate, specialDate) ||
                other.specialDate == specialDate) &&
            (identical(other.visibilityType, visibilityType) ||
                other.visibilityType == visibilityType) &&
            (identical(other.deregistrationDeadline, deregistrationDeadline) ||
                other.deregistrationDeadline == deregistrationDeadline) &&
            (identical(other.maxCompanions, maxCompanions) ||
                other.maxCompanions == maxCompanions) &&
            (identical(other.workflowStatus, workflowStatus) ||
                other.workflowStatus == workflowStatus) &&
            (identical(other.workflowUserId, workflowUserId) ||
                other.workflowUserId == workflowUserId) &&
            (identical(other.groupId2, groupId2) ||
                other.groupId2 == groupId2) &&
            (identical(other.followUp, followUp) ||
                other.followUp == followUp) &&
            (identical(other.reminderDaysBefore2, reminderDaysBefore2) ||
                other.reminderDaysBefore2 == reminderDaysBefore2) &&
            (identical(other.reminderTarget2, reminderTarget2) ||
                other.reminderTarget2 == reminderTarget2) &&
            (identical(other.waitlist, waitlist) ||
                other.waitlist == waitlist) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accessControlList, accessControlList) || other.accessControlList == accessControlList) &&
            (identical(other.registrationConfirmationEmail, registrationConfirmationEmail) || other.registrationConfirmationEmail == registrationConfirmationEmail) &&
            (identical(other.seriesEventId, seriesEventId) || other.seriesEventId == seriesEventId) &&
            (identical(other.imageCount, imageCount) || other.imageCount == imageCount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.modified, modified) || other.modified == modified) &&
            (identical(other.kvp, kvp) || other.kvp == kvp) &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.visibilityAssociation, visibilityAssociation) || other.visibilityAssociation == visibilityAssociation) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.assembly, assembly) || other.assembly == assembly) &&
            (identical(other.rv, rv) || other.rv == rv) &&
            (identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation) &&
            (identical(other.organization, organization) || other.organization == organization) &&
            (identical(other.registrationCount, registrationCount) || other.registrationCount == registrationCount) &&
            (identical(other.descriptionTeaser, descriptionTeaser) || other.descriptionTeaser == descriptionTeaser) &&
            (identical(other.freeSlots, freeSlots) || other.freeSlots == freeSlots) &&
            (identical(other.weekdayDate, weekdayDate) || other.weekdayDate == weekdayDate) &&
            (identical(other.trafficLight, trafficLight) || other.trafficLight == trafficLight) &&
            (identical(other.discountInfo, discountInfo) || other.discountInfo == discountInfo) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.clientEventId, clientEventId) || other.clientEventId == clientEventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clientId,
        date,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        overlapping,
        userId,
        contactName,
        contactEmail,
        contactPhone,
        contactStreet,
        contactCity,
        contactFax,
        maxParticipants,
        image,
        attachments,
        reminderDaysBefore,
        reminderTarget,
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        visibleFrom,
        reminderSent,
        registrationEmail,
        registrationEmailContent,
        registrationUserPublic,
        type,
        registrationStart,
        registrationDeadline,
        colorPrimary,
        colorSecondary,
        specialDate,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        workflowStatus,
        workflowUserId,
        groupId2,
        followUp,
        reminderDaysBefore2,
        reminderTarget2,
        waitlist,
        paymentMethod,
        accessControlList,
        registrationConfirmationEmail,
        seriesEventId,
        imageCount,
        notes,
        modified,
        kvp,
        currency,
        visibilityAssociation,
        course,
        assembly,
        rv,
        abbreviation,
        organization,
        registrationCount,
        descriptionTeaser,
        freeSlots,
        weekdayDate,
        trafficLight,
        discountInfo,
        link,
        url,
        clientEventId
      ]);

  @override
  String toString() {
    return 'BackendMidaEvent(id: $id, clientId: $clientId, date: $date, title: $title, description: $description, location: $location, groupId: $groupId, time: $time, numberOfDays: $numberOfDays, overlapping: $overlapping, userId: $userId, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, contactStreet: $contactStreet, contactCity: $contactCity, contactFax: $contactFax, maxParticipants: $maxParticipants, image: $image, attachments: $attachments, reminderDaysBefore: $reminderDaysBefore, reminderTarget: $reminderTarget, costMember: $costMember, costGuest: $costGuest, costCompanion: $costCompanion, cost: $cost, publicType: $publicType, visibleFrom: $visibleFrom, reminderSent: $reminderSent, registrationEmail: $registrationEmail, registrationEmailContent: $registrationEmailContent, registrationUserPublic: $registrationUserPublic, type: $type, registrationStart: $registrationStart, registrationDeadline: $registrationDeadline, colorPrimary: $colorPrimary, colorSecondary: $colorSecondary, specialDate: $specialDate, visibilityType: $visibilityType, deregistrationDeadline: $deregistrationDeadline, maxCompanions: $maxCompanions, workflowStatus: $workflowStatus, workflowUserId: $workflowUserId, groupId2: $groupId2, followUp: $followUp, reminderDaysBefore2: $reminderDaysBefore2, reminderTarget2: $reminderTarget2, waitlist: $waitlist, paymentMethod: $paymentMethod, accessControlList: $accessControlList, registrationConfirmationEmail: $registrationConfirmationEmail, seriesEventId: $seriesEventId, imageCount: $imageCount, notes: $notes, modified: $modified, kvp: $kvp, currency: $currency, visibilityAssociation: $visibilityAssociation, course: $course, assembly: $assembly, rv: $rv, abbreviation: $abbreviation, organization: $organization, registrationCount: $registrationCount, descriptionTeaser: $descriptionTeaser, freeSlots: $freeSlots, weekdayDate: $weekdayDate, trafficLight: $trafficLight, discountInfo: $discountInfo, link: $link, url: $url, clientEventId: $clientEventId)';
  }
}

/// @nodoc
abstract mixin class _$BackendMidaEventCopyWith<$Res>
    implements $BackendMidaEventCopyWith<$Res> {
  factory _$BackendMidaEventCopyWith(
          _BackendMidaEvent value, $Res Function(_BackendMidaEvent) _then) =
      __$BackendMidaEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'bilder') String? imageCount,
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
      @JsonKey(name: 'idmandant') String? clientEventId});
}

/// @nodoc
class __$BackendMidaEventCopyWithImpl<$Res>
    implements _$BackendMidaEventCopyWith<$Res> {
  __$BackendMidaEventCopyWithImpl(this._self, this._then);

  final _BackendMidaEvent _self;
  final $Res Function(_BackendMidaEvent) _then;

  /// Create a copy of BackendMidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? groupId = freezed,
    Object? time = freezed,
    Object? numberOfDays = freezed,
    Object? overlapping = freezed,
    Object? userId = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? contactStreet = freezed,
    Object? contactCity = freezed,
    Object? contactFax = freezed,
    Object? maxParticipants = freezed,
    Object? image = freezed,
    Object? attachments = freezed,
    Object? reminderDaysBefore = freezed,
    Object? reminderTarget = freezed,
    Object? costMember = freezed,
    Object? costGuest = freezed,
    Object? costCompanion = freezed,
    Object? cost = freezed,
    Object? publicType = freezed,
    Object? visibleFrom = freezed,
    Object? reminderSent = freezed,
    Object? registrationEmail = freezed,
    Object? registrationEmailContent = freezed,
    Object? registrationUserPublic = freezed,
    Object? type = freezed,
    Object? registrationStart = freezed,
    Object? registrationDeadline = freezed,
    Object? colorPrimary = freezed,
    Object? colorSecondary = freezed,
    Object? specialDate = freezed,
    Object? visibilityType = freezed,
    Object? deregistrationDeadline = freezed,
    Object? maxCompanions = freezed,
    Object? workflowStatus = freezed,
    Object? workflowUserId = freezed,
    Object? groupId2 = freezed,
    Object? followUp = freezed,
    Object? reminderDaysBefore2 = freezed,
    Object? reminderTarget2 = freezed,
    Object? waitlist = freezed,
    Object? paymentMethod = freezed,
    Object? accessControlList = freezed,
    Object? registrationConfirmationEmail = freezed,
    Object? seriesEventId = freezed,
    Object? imageCount = freezed,
    Object? notes = freezed,
    Object? modified = freezed,
    Object? kvp = freezed,
    Object? currency = freezed,
    Object? visibilityAssociation = freezed,
    Object? course = freezed,
    Object? assembly = freezed,
    Object? rv = freezed,
    Object? abbreviation = freezed,
    Object? organization = freezed,
    Object? registrationCount = freezed,
    Object? descriptionTeaser = freezed,
    Object? freeSlots = freezed,
    Object? weekdayDate = freezed,
    Object? trafficLight = freezed,
    Object? discountInfo = freezed,
    Object? link = freezed,
    Object? url = freezed,
    Object? clientEventId = freezed,
  }) {
    return _then(_BackendMidaEvent(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _self.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as String?,
      overlapping: freezed == overlapping
          ? _self.overlapping
          : overlapping // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _self.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      contactStreet: freezed == contactStreet
          ? _self.contactStreet
          : contactStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      contactCity: freezed == contactCity
          ? _self.contactCity
          : contactCity // ignore: cast_nullable_to_non_nullable
              as String?,
      contactFax: freezed == contactFax
          ? _self.contactFax
          : contactFax // ignore: cast_nullable_to_non_nullable
              as String?,
      maxParticipants: freezed == maxParticipants
          ? _self.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDaysBefore: freezed == reminderDaysBefore
          ? _self.reminderDaysBefore
          : reminderDaysBefore // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTarget: freezed == reminderTarget
          ? _self.reminderTarget
          : reminderTarget // ignore: cast_nullable_to_non_nullable
              as String?,
      costMember: freezed == costMember
          ? _self.costMember
          : costMember // ignore: cast_nullable_to_non_nullable
              as String?,
      costGuest: freezed == costGuest
          ? _self.costGuest
          : costGuest // ignore: cast_nullable_to_non_nullable
              as String?,
      costCompanion: freezed == costCompanion
          ? _self.costCompanion
          : costCompanion // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      publicType: freezed == publicType
          ? _self.publicType
          : publicType // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleFrom: freezed == visibleFrom
          ? _self.visibleFrom
          : visibleFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderSent: freezed == reminderSent
          ? _self.reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationEmail: freezed == registrationEmail
          ? _self.registrationEmail
          : registrationEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationEmailContent: freezed == registrationEmailContent
          ? _self.registrationEmailContent
          : registrationEmailContent // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationUserPublic: freezed == registrationUserPublic
          ? _self.registrationUserPublic
          : registrationUserPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationStart: freezed == registrationStart
          ? _self.registrationStart
          : registrationStart // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDeadline: freezed == registrationDeadline
          ? _self.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      colorPrimary: freezed == colorPrimary
          ? _self.colorPrimary
          : colorPrimary // ignore: cast_nullable_to_non_nullable
              as String?,
      colorSecondary: freezed == colorSecondary
          ? _self.colorSecondary
          : colorSecondary // ignore: cast_nullable_to_non_nullable
              as String?,
      specialDate: freezed == specialDate
          ? _self.specialDate
          : specialDate // ignore: cast_nullable_to_non_nullable
              as String?,
      visibilityType: freezed == visibilityType
          ? _self.visibilityType
          : visibilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      deregistrationDeadline: freezed == deregistrationDeadline
          ? _self.deregistrationDeadline
          : deregistrationDeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCompanions: freezed == maxCompanions
          ? _self.maxCompanions
          : maxCompanions // ignore: cast_nullable_to_non_nullable
              as String?,
      workflowStatus: freezed == workflowStatus
          ? _self.workflowStatus
          : workflowStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      workflowUserId: freezed == workflowUserId
          ? _self.workflowUserId
          : workflowUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId2: freezed == groupId2
          ? _self.groupId2
          : groupId2 // ignore: cast_nullable_to_non_nullable
              as String?,
      followUp: freezed == followUp
          ? _self.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDaysBefore2: freezed == reminderDaysBefore2
          ? _self.reminderDaysBefore2
          : reminderDaysBefore2 // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderTarget2: freezed == reminderTarget2
          ? _self.reminderTarget2
          : reminderTarget2 // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlist: freezed == waitlist
          ? _self.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accessControlList: freezed == accessControlList
          ? _self.accessControlList
          : accessControlList // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationConfirmationEmail: freezed == registrationConfirmationEmail
          ? _self.registrationConfirmationEmail
          : registrationConfirmationEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesEventId: freezed == seriesEventId
          ? _self.seriesEventId
          : seriesEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageCount: freezed == imageCount
          ? _self.imageCount
          : imageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _self.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      kvp: freezed == kvp
          ? _self.kvp
          : kvp // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      visibilityAssociation: freezed == visibilityAssociation
          ? _self.visibilityAssociation
          : visibilityAssociation // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _self.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly: freezed == assembly
          ? _self.assembly
          : assembly // ignore: cast_nullable_to_non_nullable
              as String?,
      rv: freezed == rv
          ? _self.rv
          : rv // ignore: cast_nullable_to_non_nullable
              as String?,
      abbreviation: freezed == abbreviation
          ? _self.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _self.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCount: freezed == registrationCount
          ? _self.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionTeaser: freezed == descriptionTeaser
          ? _self.descriptionTeaser
          : descriptionTeaser // ignore: cast_nullable_to_non_nullable
              as String?,
      freeSlots: freezed == freeSlots
          ? _self.freeSlots
          : freeSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      weekdayDate: freezed == weekdayDate
          ? _self.weekdayDate
          : weekdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      trafficLight: freezed == trafficLight
          ? _self.trafficLight
          : trafficLight // ignore: cast_nullable_to_non_nullable
              as String?,
      discountInfo: freezed == discountInfo
          ? _self.discountInfo
          : discountInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      clientEventId: freezed == clientEventId
          ? _self.clientEventId
          : clientEventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$MidaEvent {
  int get id;
  int? get clientId;
  DateTime get startDateAndTime;
  DateTime get endDateAndTime;
  String get title;
  String? get description;
  String? get location;
  int? get groupId;
  String? get time;
  int? get numberOfDays;
  String? get contactName;
  String? get contactEmail;
  int? get maxParticipants;
  String? get image;
  List<String>? get attachments;
  double? get costMember;
  double? get costGuest;
  double? get costCompanion;
  String? get cost;
  int? get publicType;
  int? get type;
  DateTime? get registrationStart;
  DateTime? get registrationDeadline;
  int? get visibilityType;
  DateTime? get deregistrationDeadline;
  int? get maxCompanions;
  int? get seriesEventId;
  int? get visibilityAssociation;
  bool? get rv;
  String? get abbreviation;
  String? get organization;
  int? get registrationCount;
  String? get freeSlots;
  String? get link;
  String get baseUrl;
  String? get clientEventId;

  /// Create a copy of MidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MidaEventCopyWith<MidaEvent> get copyWith =>
      _$MidaEventCopyWithImpl<MidaEvent>(this as MidaEvent, _$identity);

  /// Serializes this MidaEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MidaEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.startDateAndTime, startDateAndTime) ||
                other.startDateAndTime == startDateAndTime) &&
            (identical(other.endDateAndTime, endDateAndTime) ||
                other.endDateAndTime == endDateAndTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            (identical(other.costMember, costMember) ||
                other.costMember == costMember) &&
            (identical(other.costGuest, costGuest) ||
                other.costGuest == costGuest) &&
            (identical(other.costCompanion, costCompanion) ||
                other.costCompanion == costCompanion) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.publicType, publicType) ||
                other.publicType == publicType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.registrationStart, registrationStart) ||
                other.registrationStart == registrationStart) &&
            (identical(other.registrationDeadline, registrationDeadline) ||
                other.registrationDeadline == registrationDeadline) &&
            (identical(other.visibilityType, visibilityType) ||
                other.visibilityType == visibilityType) &&
            (identical(other.deregistrationDeadline, deregistrationDeadline) ||
                other.deregistrationDeadline == deregistrationDeadline) &&
            (identical(other.maxCompanions, maxCompanions) ||
                other.maxCompanions == maxCompanions) &&
            (identical(other.seriesEventId, seriesEventId) ||
                other.seriesEventId == seriesEventId) &&
            (identical(other.visibilityAssociation, visibilityAssociation) ||
                other.visibilityAssociation == visibilityAssociation) &&
            (identical(other.rv, rv) || other.rv == rv) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.registrationCount, registrationCount) ||
                other.registrationCount == registrationCount) &&
            (identical(other.freeSlots, freeSlots) ||
                other.freeSlots == freeSlots) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.clientEventId, clientEventId) ||
                other.clientEventId == clientEventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clientId,
        startDateAndTime,
        endDateAndTime,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        contactName,
        contactEmail,
        maxParticipants,
        image,
        const DeepCollectionEquality().hash(attachments),
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        type,
        registrationStart,
        registrationDeadline,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        seriesEventId,
        visibilityAssociation,
        rv,
        abbreviation,
        organization,
        registrationCount,
        freeSlots,
        link,
        baseUrl,
        clientEventId
      ]);

  @override
  String toString() {
    return 'MidaEvent(id: $id, clientId: $clientId, startDateAndTime: $startDateAndTime, endDateAndTime: $endDateAndTime, title: $title, description: $description, location: $location, groupId: $groupId, time: $time, numberOfDays: $numberOfDays, contactName: $contactName, contactEmail: $contactEmail, maxParticipants: $maxParticipants, image: $image, attachments: $attachments, costMember: $costMember, costGuest: $costGuest, costCompanion: $costCompanion, cost: $cost, publicType: $publicType, type: $type, registrationStart: $registrationStart, registrationDeadline: $registrationDeadline, visibilityType: $visibilityType, deregistrationDeadline: $deregistrationDeadline, maxCompanions: $maxCompanions, seriesEventId: $seriesEventId, visibilityAssociation: $visibilityAssociation, rv: $rv, abbreviation: $abbreviation, organization: $organization, registrationCount: $registrationCount, freeSlots: $freeSlots, link: $link, baseUrl: $baseUrl, clientEventId: $clientEventId)';
  }
}

/// @nodoc
abstract mixin class $MidaEventCopyWith<$Res> {
  factory $MidaEventCopyWith(MidaEvent value, $Res Function(MidaEvent) _then) =
      _$MidaEventCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int? clientId,
      DateTime startDateAndTime,
      DateTime endDateAndTime,
      String title,
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
      String baseUrl,
      String? clientEventId});
}

/// @nodoc
class _$MidaEventCopyWithImpl<$Res> implements $MidaEventCopyWith<$Res> {
  _$MidaEventCopyWithImpl(this._self, this._then);

  final MidaEvent _self;
  final $Res Function(MidaEvent) _then;

  /// Create a copy of MidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = freezed,
    Object? startDateAndTime = null,
    Object? endDateAndTime = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? groupId = freezed,
    Object? time = freezed,
    Object? numberOfDays = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? maxParticipants = freezed,
    Object? image = freezed,
    Object? attachments = freezed,
    Object? costMember = freezed,
    Object? costGuest = freezed,
    Object? costCompanion = freezed,
    Object? cost = freezed,
    Object? publicType = freezed,
    Object? type = freezed,
    Object? registrationStart = freezed,
    Object? registrationDeadline = freezed,
    Object? visibilityType = freezed,
    Object? deregistrationDeadline = freezed,
    Object? maxCompanions = freezed,
    Object? seriesEventId = freezed,
    Object? visibilityAssociation = freezed,
    Object? rv = freezed,
    Object? abbreviation = freezed,
    Object? organization = freezed,
    Object? registrationCount = freezed,
    Object? freeSlots = freezed,
    Object? link = freezed,
    Object? baseUrl = null,
    Object? clientEventId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDateAndTime: null == startDateAndTime
          ? _self.startDateAndTime
          : startDateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateAndTime: null == endDateAndTime
          ? _self.endDateAndTime
          : endDateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _self.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      contactName: freezed == contactName
          ? _self.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      maxParticipants: freezed == maxParticipants
          ? _self.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      costMember: freezed == costMember
          ? _self.costMember
          : costMember // ignore: cast_nullable_to_non_nullable
              as double?,
      costGuest: freezed == costGuest
          ? _self.costGuest
          : costGuest // ignore: cast_nullable_to_non_nullable
              as double?,
      costCompanion: freezed == costCompanion
          ? _self.costCompanion
          : costCompanion // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      publicType: freezed == publicType
          ? _self.publicType
          : publicType // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationStart: freezed == registrationStart
          ? _self.registrationStart
          : registrationStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registrationDeadline: freezed == registrationDeadline
          ? _self.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visibilityType: freezed == visibilityType
          ? _self.visibilityType
          : visibilityType // ignore: cast_nullable_to_non_nullable
              as int?,
      deregistrationDeadline: freezed == deregistrationDeadline
          ? _self.deregistrationDeadline
          : deregistrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxCompanions: freezed == maxCompanions
          ? _self.maxCompanions
          : maxCompanions // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesEventId: freezed == seriesEventId
          ? _self.seriesEventId
          : seriesEventId // ignore: cast_nullable_to_non_nullable
              as int?,
      visibilityAssociation: freezed == visibilityAssociation
          ? _self.visibilityAssociation
          : visibilityAssociation // ignore: cast_nullable_to_non_nullable
              as int?,
      rv: freezed == rv
          ? _self.rv
          : rv // ignore: cast_nullable_to_non_nullable
              as bool?,
      abbreviation: freezed == abbreviation
          ? _self.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _self.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCount: freezed == registrationCount
          ? _self.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freeSlots: freezed == freeSlots
          ? _self.freeSlots
          : freeSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: null == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientEventId: freezed == clientEventId
          ? _self.clientEventId
          : clientEventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MidaEvent].
extension MidaEventPatterns on MidaEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MidaEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MidaEvent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MidaEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MidaEvent():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MidaEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MidaEvent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            int? clientId,
            DateTime startDateAndTime,
            DateTime endDateAndTime,
            String title,
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
            String baseUrl,
            String? clientEventId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MidaEvent() when $default != null:
        return $default(
            _that.id,
            _that.clientId,
            _that.startDateAndTime,
            _that.endDateAndTime,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.contactName,
            _that.contactEmail,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.seriesEventId,
            _that.visibilityAssociation,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.freeSlots,
            _that.link,
            _that.baseUrl,
            _that.clientEventId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            int? clientId,
            DateTime startDateAndTime,
            DateTime endDateAndTime,
            String title,
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
            String baseUrl,
            String? clientEventId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MidaEvent():
        return $default(
            _that.id,
            _that.clientId,
            _that.startDateAndTime,
            _that.endDateAndTime,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.contactName,
            _that.contactEmail,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.seriesEventId,
            _that.visibilityAssociation,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.freeSlots,
            _that.link,
            _that.baseUrl,
            _that.clientEventId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            int? clientId,
            DateTime startDateAndTime,
            DateTime endDateAndTime,
            String title,
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
            String baseUrl,
            String? clientEventId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MidaEvent() when $default != null:
        return $default(
            _that.id,
            _that.clientId,
            _that.startDateAndTime,
            _that.endDateAndTime,
            _that.title,
            _that.description,
            _that.location,
            _that.groupId,
            _that.time,
            _that.numberOfDays,
            _that.contactName,
            _that.contactEmail,
            _that.maxParticipants,
            _that.image,
            _that.attachments,
            _that.costMember,
            _that.costGuest,
            _that.costCompanion,
            _that.cost,
            _that.publicType,
            _that.type,
            _that.registrationStart,
            _that.registrationDeadline,
            _that.visibilityType,
            _that.deregistrationDeadline,
            _that.maxCompanions,
            _that.seriesEventId,
            _that.visibilityAssociation,
            _that.rv,
            _that.abbreviation,
            _that.organization,
            _that.registrationCount,
            _that.freeSlots,
            _that.link,
            _that.baseUrl,
            _that.clientEventId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MidaEvent extends MidaEvent {
  const _MidaEvent(
      {required this.id,
      this.clientId,
      required this.startDateAndTime,
      required this.endDateAndTime,
      required this.title,
      this.description,
      this.location,
      this.groupId,
      this.time,
      this.numberOfDays,
      this.contactName,
      this.contactEmail,
      this.maxParticipants,
      this.image,
      final List<String>? attachments,
      this.costMember,
      this.costGuest,
      this.costCompanion,
      this.cost,
      this.publicType,
      this.type,
      this.registrationStart,
      this.registrationDeadline,
      this.visibilityType,
      this.deregistrationDeadline,
      this.maxCompanions,
      this.seriesEventId,
      this.visibilityAssociation,
      this.rv,
      this.abbreviation,
      this.organization,
      this.registrationCount,
      this.freeSlots,
      this.link,
      required this.baseUrl,
      this.clientEventId})
      : _attachments = attachments,
        super._();
  factory _MidaEvent.fromJson(Map<String, dynamic> json) =>
      _$MidaEventFromJson(json);

  @override
  final int id;
  @override
  final int? clientId;
  @override
  final DateTime startDateAndTime;
  @override
  final DateTime endDateAndTime;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final int? groupId;
  @override
  final String? time;
  @override
  final int? numberOfDays;
  @override
  final String? contactName;
  @override
  final String? contactEmail;
  @override
  final int? maxParticipants;
  @override
  final String? image;
  final List<String>? _attachments;
  @override
  List<String>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? costMember;
  @override
  final double? costGuest;
  @override
  final double? costCompanion;
  @override
  final String? cost;
  @override
  final int? publicType;
  @override
  final int? type;
  @override
  final DateTime? registrationStart;
  @override
  final DateTime? registrationDeadline;
  @override
  final int? visibilityType;
  @override
  final DateTime? deregistrationDeadline;
  @override
  final int? maxCompanions;
  @override
  final int? seriesEventId;
  @override
  final int? visibilityAssociation;
  @override
  final bool? rv;
  @override
  final String? abbreviation;
  @override
  final String? organization;
  @override
  final int? registrationCount;
  @override
  final String? freeSlots;
  @override
  final String? link;
  @override
  final String baseUrl;
  @override
  final String? clientEventId;

  /// Create a copy of MidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MidaEventCopyWith<_MidaEvent> get copyWith =>
      __$MidaEventCopyWithImpl<_MidaEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MidaEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MidaEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.startDateAndTime, startDateAndTime) ||
                other.startDateAndTime == startDateAndTime) &&
            (identical(other.endDateAndTime, endDateAndTime) ||
                other.endDateAndTime == endDateAndTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.costMember, costMember) ||
                other.costMember == costMember) &&
            (identical(other.costGuest, costGuest) ||
                other.costGuest == costGuest) &&
            (identical(other.costCompanion, costCompanion) ||
                other.costCompanion == costCompanion) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.publicType, publicType) ||
                other.publicType == publicType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.registrationStart, registrationStart) ||
                other.registrationStart == registrationStart) &&
            (identical(other.registrationDeadline, registrationDeadline) ||
                other.registrationDeadline == registrationDeadline) &&
            (identical(other.visibilityType, visibilityType) ||
                other.visibilityType == visibilityType) &&
            (identical(other.deregistrationDeadline, deregistrationDeadline) ||
                other.deregistrationDeadline == deregistrationDeadline) &&
            (identical(other.maxCompanions, maxCompanions) ||
                other.maxCompanions == maxCompanions) &&
            (identical(other.seriesEventId, seriesEventId) ||
                other.seriesEventId == seriesEventId) &&
            (identical(other.visibilityAssociation, visibilityAssociation) ||
                other.visibilityAssociation == visibilityAssociation) &&
            (identical(other.rv, rv) || other.rv == rv) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.registrationCount, registrationCount) ||
                other.registrationCount == registrationCount) &&
            (identical(other.freeSlots, freeSlots) ||
                other.freeSlots == freeSlots) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.clientEventId, clientEventId) ||
                other.clientEventId == clientEventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clientId,
        startDateAndTime,
        endDateAndTime,
        title,
        description,
        location,
        groupId,
        time,
        numberOfDays,
        contactName,
        contactEmail,
        maxParticipants,
        image,
        const DeepCollectionEquality().hash(_attachments),
        costMember,
        costGuest,
        costCompanion,
        cost,
        publicType,
        type,
        registrationStart,
        registrationDeadline,
        visibilityType,
        deregistrationDeadline,
        maxCompanions,
        seriesEventId,
        visibilityAssociation,
        rv,
        abbreviation,
        organization,
        registrationCount,
        freeSlots,
        link,
        baseUrl,
        clientEventId
      ]);

  @override
  String toString() {
    return 'MidaEvent(id: $id, clientId: $clientId, startDateAndTime: $startDateAndTime, endDateAndTime: $endDateAndTime, title: $title, description: $description, location: $location, groupId: $groupId, time: $time, numberOfDays: $numberOfDays, contactName: $contactName, contactEmail: $contactEmail, maxParticipants: $maxParticipants, image: $image, attachments: $attachments, costMember: $costMember, costGuest: $costGuest, costCompanion: $costCompanion, cost: $cost, publicType: $publicType, type: $type, registrationStart: $registrationStart, registrationDeadline: $registrationDeadline, visibilityType: $visibilityType, deregistrationDeadline: $deregistrationDeadline, maxCompanions: $maxCompanions, seriesEventId: $seriesEventId, visibilityAssociation: $visibilityAssociation, rv: $rv, abbreviation: $abbreviation, organization: $organization, registrationCount: $registrationCount, freeSlots: $freeSlots, link: $link, baseUrl: $baseUrl, clientEventId: $clientEventId)';
  }
}

/// @nodoc
abstract mixin class _$MidaEventCopyWith<$Res>
    implements $MidaEventCopyWith<$Res> {
  factory _$MidaEventCopyWith(
          _MidaEvent value, $Res Function(_MidaEvent) _then) =
      __$MidaEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int? clientId,
      DateTime startDateAndTime,
      DateTime endDateAndTime,
      String title,
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
      String baseUrl,
      String? clientEventId});
}

/// @nodoc
class __$MidaEventCopyWithImpl<$Res> implements _$MidaEventCopyWith<$Res> {
  __$MidaEventCopyWithImpl(this._self, this._then);

  final _MidaEvent _self;
  final $Res Function(_MidaEvent) _then;

  /// Create a copy of MidaEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? clientId = freezed,
    Object? startDateAndTime = null,
    Object? endDateAndTime = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? groupId = freezed,
    Object? time = freezed,
    Object? numberOfDays = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? maxParticipants = freezed,
    Object? image = freezed,
    Object? attachments = freezed,
    Object? costMember = freezed,
    Object? costGuest = freezed,
    Object? costCompanion = freezed,
    Object? cost = freezed,
    Object? publicType = freezed,
    Object? type = freezed,
    Object? registrationStart = freezed,
    Object? registrationDeadline = freezed,
    Object? visibilityType = freezed,
    Object? deregistrationDeadline = freezed,
    Object? maxCompanions = freezed,
    Object? seriesEventId = freezed,
    Object? visibilityAssociation = freezed,
    Object? rv = freezed,
    Object? abbreviation = freezed,
    Object? organization = freezed,
    Object? registrationCount = freezed,
    Object? freeSlots = freezed,
    Object? link = freezed,
    Object? baseUrl = null,
    Object? clientEventId = freezed,
  }) {
    return _then(_MidaEvent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDateAndTime: null == startDateAndTime
          ? _self.startDateAndTime
          : startDateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateAndTime: null == endDateAndTime
          ? _self.endDateAndTime
          : endDateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _self.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      contactName: freezed == contactName
          ? _self.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      maxParticipants: freezed == maxParticipants
          ? _self.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _self._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      costMember: freezed == costMember
          ? _self.costMember
          : costMember // ignore: cast_nullable_to_non_nullable
              as double?,
      costGuest: freezed == costGuest
          ? _self.costGuest
          : costGuest // ignore: cast_nullable_to_non_nullable
              as double?,
      costCompanion: freezed == costCompanion
          ? _self.costCompanion
          : costCompanion // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      publicType: freezed == publicType
          ? _self.publicType
          : publicType // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationStart: freezed == registrationStart
          ? _self.registrationStart
          : registrationStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registrationDeadline: freezed == registrationDeadline
          ? _self.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visibilityType: freezed == visibilityType
          ? _self.visibilityType
          : visibilityType // ignore: cast_nullable_to_non_nullable
              as int?,
      deregistrationDeadline: freezed == deregistrationDeadline
          ? _self.deregistrationDeadline
          : deregistrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxCompanions: freezed == maxCompanions
          ? _self.maxCompanions
          : maxCompanions // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesEventId: freezed == seriesEventId
          ? _self.seriesEventId
          : seriesEventId // ignore: cast_nullable_to_non_nullable
              as int?,
      visibilityAssociation: freezed == visibilityAssociation
          ? _self.visibilityAssociation
          : visibilityAssociation // ignore: cast_nullable_to_non_nullable
              as int?,
      rv: freezed == rv
          ? _self.rv
          : rv // ignore: cast_nullable_to_non_nullable
              as bool?,
      abbreviation: freezed == abbreviation
          ? _self.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _self.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCount: freezed == registrationCount
          ? _self.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freeSlots: freezed == freeSlots
          ? _self.freeSlots
          : freeSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: null == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientEventId: freezed == clientEventId
          ? _self.clientEventId
          : clientEventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
