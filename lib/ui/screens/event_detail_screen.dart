import 'dart:io';

import 'package:add_2_calendar/add_2_calendar.dart' as calendar;
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' hide Marker;
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:html/parser.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/providers/event_list_provider.dart';
import 'package:kjg_muf_app/ui/screens/fullscreen_image.dart';
import 'package:kjg_muf_app/ui/screens/mida_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widget.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

enum GeolocationState { loaded, loading, error }

class EventDetailScreen extends ConsumerStatefulWidget {
  final EventModel event;

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

    final url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  void _onImageTap(String imageUrl) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FullscreenImage(url: imageUrl),
      ),
    );
  }

  Future<void> _onMidaButtonPressed() async {
    final eventUrl = widget.event.eventUrl;
    if (eventUrl == null || eventUrl.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Aktuell kann das Event in der MiDa zum Anmelden nicht aufgerufen werden. Versuche es später noch einmal oder melde dich im Menü mit deinem Konto an",
          ),
        ),
      );
      return;
    }

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

    ref
        .read(registeredProvider(widget.event).notifier)
        .refreshUserRegisteredForEvent();
  }

  void _addToCalendar() {
    final event = widget.event;
    if (event.startDateAndTime != null && event.endDate != null) {
      String? url = event.eventUrl?.replaceAll("&dialog=1", "");

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
        startDate: event.startDateAndTime!,
        endDate: event.endDate!.compareTo(event.startDateAndTime!) == 0
            ? event.endDate!.add(const Duration(hours: 1))
            : event.endDate!,
        iosParams: calendar.IOSParams(url: url),
      );
      calendar.Add2Calendar.addEvent2Cal(calendarEvent);
    }
  }

  @override
  Widget build(BuildContext context) {
    final registered = ref.watch(registeredProvider(widget.event));
    final event = widget.event;

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
                spacing: 8,
                children: [
                  EventItem(event: event),
                  if (registered) _registeredCard(),
                  if (event.description case String description)
                    _descriptionCard(description),
                  if (event.organizer case String organizer)
                    _organizerCard(organizer),
                  if (event.imageUrl case String imageUrl) _imageCard(imageUrl),
                  if (event
                      case EventModel(
                        :final contactEmail?,
                        :final contactName?
                      ))
                    _contactCard(contactEmail, contactName),
                  if (event
                      case EventModel(
                        :final attachments?,
                        :final baseUrl?,
                        :final cachedTime
                      ) when attachments.isNotEmpty)
                    _attachments(baseUrl, attachments, cachedTime),
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
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Veranstalter",
                style: TextStyle(fontSize: 16),
              ),
              Text(organizer),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageCard(String imageUrl) {
    return InkWell(
      onTap: () => _onImageTap(imageUrl),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 1,
          child: _getImageCached(imageUrl),
        ),
      ),
    );
  }

  Widget _contactCard(String email, String name) {
    return InkWell(
      onTap: () => _onLinkTap("mailto:$email"),
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kontakt: $name",
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
      ),
    );
  }

  Widget _attachments(
    String baseUrl,
    List<String> attachments,
    DateTime? cachedTime,
  ) {
    return AttachmentsWidget(
      event: widget.event,
      baseUrl: baseUrl,
      attachments: attachments,
      cachedTime: cachedTime,
    );
  }

  Widget _fab() {
    final registered = ref.watch(registeredProvider(widget.event));

    return FloatingActionButton.extended(
      heroTag: null,
      label: Text(registered ? "Abmelden" : "Anmelden"),
      onPressed: _onMidaButtonPressed,
    );
  }

  Widget _getImageCached(String imageUrl) {
    return FutureBuilder(
      future: KjGCacheManager.instance.getSingleFile(imageUrl),
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
    return const SizedBox(
      width: double.infinity,
      child: Card(
        color: KjGColors.kjgGreen,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: Text(
              "Du bist angemeldet",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
            Center(child: Text("Es konnte kein Ort gefunden werden")),
        ],
      ),
    );
  }
}
