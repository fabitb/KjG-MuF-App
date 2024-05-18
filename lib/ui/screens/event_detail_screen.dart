import 'dart:io';

import 'package:add_2_calendar/add_2_calendar.dart' as calendar;
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' hide Marker;
import 'package:flutter_map/plugin_api.dart';
import 'package:html/parser.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/database/model/event_model.dart';
import 'package:kjg_muf_app/ui/screens/fullscreen_image.dart';
import 'package:kjg_muf_app/ui/screens/mida_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widgert.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:kjg_muf_app/viewmodels/event.detail.viewmodel.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailScreen extends StatelessWidget {
  final EventModel event;
  final bool offline;

  EventDetailScreen({
    super.key,
    required this.event,
    required this.offline,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _addToCalendar() {
    final event = this.event;
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
    return ChangeNotifierProvider(
      create: (_) => EventDetailViewModel(
        event,
        offline,
      ),
      child: Builder(
        builder: (context) {
          final model =
              Provider.of<EventDetailViewModel>(context, listen: true);
          return Scaffold(
            appBar: AppBar(
              title: Text(event.title),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (event.locationForMap.isNotNullAndNotEmpty)
                    Stack(
                      children: [
                        SizedBox(
                          height: 200.0,
                          child:
                              model.geolocationState == GeolocationState.loaded
                                  ? FlutterMap(
                                      options: MapOptions(
                                        center: LatLng(
                                          model.location!.latitude,
                                          model.location!.longitude,
                                        ),
                                        zoom: 14.0,
                                        interactiveFlags: InteractiveFlag.none,
                                      ),
                                      children: [
                                        TileLayer(
                                          minZoom: 1,
                                          maxZoom: 18,
                                          backgroundColor: Colors.white,
                                          urlTemplate:
                                              'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                          subdomains: const [
                                            'a',
                                            'b',
                                            'c',
                                          ],
                                        ),
                                        MarkerLayer(
                                          markers: [
                                            Marker(
                                              point: LatLng(
                                                model.location!.latitude,
                                                model.location!.longitude,
                                              ),
                                              builder: (context) =>
                                                  const Icon(Icons.place),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : model.geolocationState ==
                                          GeolocationState.loading
                                      ? const Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : const Center(
                                          child: Text(
                                            "Es konnte kein Ort gefunden werden",
                                          ),
                                        ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8, bottom: 8),
                              child: ElevatedButton(
                                child: const Icon(Icons.map),
                                onPressed: () async {
                                  final availableMaps =
                                      await MapLauncher.installedMaps;
                                  await availableMaps.first.showMarker(
                                    coords: Coords(
                                      model.latitudeCache!,
                                      model.longitudeCache!,
                                    ),
                                    title: event.locationForMap!,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 128.0),
                    child: Column(
                      children: [
                        eventItem(
                          context,
                          0,
                          event,
                        ),
                        Consumer<EventDetailViewModel>(
                          builder: (_, viewModel, __) {
                            return viewModel.event.registered
                                ? const SizedBox(
                                    width: double.infinity,
                                    child: Card(
                                      color: KjGColors.kjgGreen,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Center(
                                          child: Text(
                                            "Du bist angemeldet",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox();
                          },
                        ),
                        if (event.description.isNotNullAndNotEmpty)
                          Card(
                            child: Html(
                              data: event.description,
                              onLinkTap: (url, _, __) async {
                                if (url != null &&
                                    await canLaunchUrl(Uri.parse(url))) {
                                  await launchUrl(
                                    Uri.parse(url),
                                    mode: LaunchMode.externalApplication,
                                  );
                                }
                              },
                            ),
                          ),
                        if (event.organizer.isNotNullAndNotEmpty)
                          Card(
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
                                    Text(event.organizer!),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        if (event.imageUrl.isNotNullAndNotEmpty)
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FullscreenImage(url: event.imageUrl!),
                                ),
                              );
                            },
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const CircularProgressIndicator(),
                                    Image.network(event.imageUrl!),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        if (event.contactEmail.isNotNullAndNotEmpty &&
                            event.contactName.isNotNullAndNotEmpty)
                          InkWell(
                            onTap: () {
                              model.openUrl("mailto:${event.contactEmail}");
                            },
                            child: Card(
                              child: SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kontakt: ${event.contactName}",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.mail),
                                          const SizedBox(width: 16),
                                          Flexible(
                                            child: Text(event.contactEmail!),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (event.attachments != null &&
                            event.attachments!.isNotEmpty)
                          attachmentsWidget(context, event.attachments!),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              heroTag: null,
              label: Text(model.event.registered ? "Abmelden" : "Anmelden"),
              onPressed: () async {
                if (event.eventUrl.isNotNullAndNotEmpty) {
                  final token = await SharedPref().getToken();
                  if (context.mounted) {
                    showModalBottomSheet(
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
                          url: event.eventUrl!,
                          token: token,
                          addToCalendar: _addToCalendar,
                        );
                      },
                    ).whenComplete(
                      () => model.refreshUserRegisteredForEvent(event.eventID),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Aktuell kann das Event in der MiDa zum Anmelden nicht aufgerufen werden. Versuche es später noch einmal oder melde dich im Menü mit deinem Konto an",
                      ),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
