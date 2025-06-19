import 'dart:io';

import 'package:add_2_calendar/add_2_calendar.dart' as calendar;
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' hide Marker;
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:html/parser.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/attachment_cache_provider.dart';
import 'package:kjg_muf_app/providers/registered_list_provider.dart';
import 'package:kjg_muf_app/ui/screens/attachment_screen.dart';
import 'package:kjg_muf_app/ui/screens/mida_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widget.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:kjg_muf_app/utils/url_helper.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';

enum GeolocationState { loaded, loading, error }

class EventDetailScreen extends ConsumerStatefulWidget {
  final MidaEvent event;

  const EventDetailScreen({super.key, required this.event});

  @override
  ConsumerState<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends ConsumerState<EventDetailScreen> {
  Location? _location;
  GeolocationState _geoState = GeolocationState.loading;

  @override
  void initState() {
    super.initState();
    _loadLocation();
  }

  Future<void> _loadLocation() async {
    final location = widget.event.locationForMap;
    if (location == null) return;

    try {
      final locations = await locationFromAddress(location);
      setState(() {
        _location = locations.first;
        _geoState = GeolocationState.loaded;
      });
    } on Exception {
      setState(() {
        _geoState = GeolocationState.error;
      });
    }
  }

  Future<void> _onMapButtonPressed(Location location) async {
    final availableMaps = await MapLauncher.installedMaps;
    await availableMaps.first.showMarker(
      coords: Coords(location.latitude, location.longitude),
      title: widget.event.locationForMap ?? widget.event.title,
    );
  }

  Future<void> _onLinkTap(String? link) async {
    if (link == null) return;

    await URLHelper.openUrl(context, link);
  }

  void _onImageTap(EventAttachment imageAttachment) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AttachmentScreen(attachment: imageAttachment),
      ),
    );
  }

  Future<void> _onMidaButtonPressed() async {
    final eventUrl = widget.event.eventUrl;

    final token = SharedPreferencesService.instance.token;

    await showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return MidaWebViewScreen(
          url: eventUrl,
          token: token,
          addToCalendar: _addToCalendar,
        );
      },
    );

    ref.invalidate(registeredListProvider);
  }

  void _addToCalendar() {
    final event = widget.event;
    String? url = event.eventUrl.replaceAll("&dialog=1", "");

    // Add url to Android description
    // iOS doesn't support html descriptions -> parse text
    String description = Platform.isAndroid
        ? "${event.description}\n\n$url"
        : parse(event.description).documentElement?.text ?? "";

    // Adds event link to the end of the description (not as modal)
    // duration 1 hour if end time equals start time
    final calendar.Event calendarEvent = calendar.Event(
      title: event.title,
      description: description,
      location: event.location,
      startDate: event.startDateAndTime,
      endDate: event.endDateAndTime,
      iosParams: calendar.IOSParams(url: url),
    );
    calendar.Add2Calendar.addEvent2Cal(calendarEvent);
  }

  @override
  Widget build(BuildContext context) {
    final event = widget.event;
    final registered = ref.watch(eventRegisteredProvider(event));

    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (event.locationForMap.isNotNullAndNotEmpty) _map(),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 128),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 8,
                children: [
                  EventItem(event: event, registered: registered),
                  if (registered) _registeredCard(),
                  if (event.description case String description)
                    _descriptionCard(description),
                  if (event.organization case String organizer)
                    _organizerCard(organizer),
                  if (event.imageAttachment
                      case EventAttachment imageAttachment)
                    _imageCard(imageAttachment),
                  if (event
                      case MidaEvent(:final contactEmail?, :final contactName?))
                    _contactCard(contactEmail, contactName),
                  if (event case MidaEvent(:final eventAttachments?)
                      when eventAttachments.isNotEmpty)
                    _attachments(eventAttachments),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _fab(),
    );
  }

  Widget _descriptionCard(String description) {
    return Card(
      child: Html(
        data: description,
        onLinkTap: (url, _, __) => _onLinkTap(url),
      ),
    );
  }

  Widget _organizerCard(String organizer) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localizations.organizer,
              style: TextStyle(fontSize: 16),
            ),
            Text(organizer),
          ],
        ),
      ),
    );
  }

  Widget _imageCard(EventAttachment imageAttachment) {
    return InkWell(
      onTap: () => _onImageTap(imageAttachment),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 1,
          child: _getImageCached(imageAttachment),
        ),
      ),
    );
  }

  Widget _contactCard(String email, String name) {
    return InkWell(
      onTap: () => URLHelper.sendEmail(email),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localizations.contact(name),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.mail),
                  const SizedBox(width: 16),
                  Flexible(child: Text(email)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _attachments(List<EventAttachment> attachments) {
    return AttachmentsWidget(attachments: attachments);
  }

  Widget _fab() {
    final registered = ref.watch(eventRegisteredProvider(widget.event));
    final loc = context.localizations;

    return FloatingActionButton.extended(
      heroTag: null,
      label: Text(registered ? loc.eventUnregister : loc.eventRegister),
      onPressed: _onMidaButtonPressed,
    );
  }

  Widget _getImageCached(EventAttachment imageAttachment) {
    return FutureBuilder(
      future: ref
          .read(attachmentCacheProvider.notifier)
          .getSingleFile(imageAttachment),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Image(
            image: FileImage(snapshot.data!.absolute),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _registeredCard() {
    return Card(
      color: KjGColors.kjgGreen,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: Text(
            context.localizations.registeredLabel,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _map() {
    final location = _location;

    return SizedBox(
      height: 200,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          if (location != null) ...[
            FlutterMap(
              options: MapOptions(
                initialCenter: LatLng(location.latitude, location.longitude),
                initialZoom: 14.0,
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.none,
                ),
              ),
              children: [
                TileLayer(
                  minZoom: 1,
                  maxZoom: 18,
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: LatLng(location.latitude, location.longitude),
                      child: const Icon(Icons.place),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              child: ElevatedButton(
                child: const Icon(Icons.map),
                onPressed: () => _onMapButtonPressed(location),
              ),
            ),
          ] else if (_geoState == GeolocationState.loading)
            const Center(child: CircularProgressIndicator())
          else
            Center(child: Text(context.localizations.noPlaceFound)),
        ],
      ),
    );
  }
}
