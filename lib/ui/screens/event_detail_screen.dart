import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' hide Marker;
import 'package:flutter_map/plugin_api.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/screens/mida_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widgert.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:kjg_muf_app/viewmodels/event.detail.viewmodel.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:add_2_calendar/add_2_calendar.dart' as calendar;
import 'dart:io' show Platform;
import 'package:html/parser.dart';

import 'fullscreen_image.dart';

class EventDetailScreen extends StatelessWidget {
  final Event event;
  final Map<String, bool> registeredMap;
  final bool offline;

  EventDetailScreen(
      {super.key,
      required this.event,
      required this.registeredMap,
      required this.offline});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<Location> getLocationFromAddress() async {
    var locations = await locationFromAddress(event.location);
    return locations.first;
  }

  void _addToCalendar() {
    final event = this.event;
    if (event != null) {
      String url = event.eventUrl.replaceAll("&dialog=1", "");

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
          endDate: event.endDate.compareTo(event.startDateAndTime) == 0
              ? event.endDate.add(const Duration(hours: 1))
              : event.endDate,
          iosParams: calendar.IOSParams(url: url));
      calendar.Add2Calendar.addEvent2Cal(calendarEvent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EventDetailViewModel(
        event,
        registeredMap,
        offline,
      ),
      child: Builder(builder: (context) {
        final model = Provider.of<EventDetailViewModel>(context, listen: true);
        return Scaffold(
            appBar: AppBar(
              title: Text(event.title),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Align(
                        child: event.location == ""
                            ? Container()
                            : SizedBox(
                                height: 200.0,
                                child: model.geolocationState ==
                                        GeolocationState.loaded
                                    ? FlutterMap(
                                        options: MapOptions(
                                            center: LatLng(
                                                model.location!.latitude,
                                                model.location!.longitude),
                                            zoom: 14.0,
                                            interactiveFlags:
                                                InteractiveFlag.none),
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
                                                'c'
                                              ]),
                                          MarkerLayer(markers: [
                                            Marker(
                                                point: LatLng(
                                                    model.location!.latitude,
                                                    model.location!.longitude),
                                                builder: (context) =>
                                                    const Icon(Icons.place))
                                          ])
                                        ],
                                      )
                                    : model.geolocationState ==
                                            GeolocationState.loading
                                        ? const Center(
                                            child: CircularProgressIndicator())
                                        : const Center(
                                            child: Text(
                                                "Es konnte kein Ort gefunden werden")),
                              ),
                      ),
                      if (model.location != null)
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8, bottom: 8),
                              child: FloatingActionButton(
                                onPressed: () async {
                                  final availableMaps =
                                      await MapLauncher.installedMaps;
                                  await availableMaps.first.showMarker(
                                    coords: Coords(model.latitudeCache!,
                                        model.longitudeCache!),
                                    title: event.location,
                                  );
                                },
                                child: const Icon(Icons.map),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 128.0),
                      child: Column(children: [
                        eventItem(
                            context, 0, event, model.userRegisteredForEvent),
                        model.userRegisteredForEvent
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
                                              fontWeight: FontWeight.bold),
                                        )))))
                            : const SizedBox(),
                        event.description.isNotEmpty
                            ? Card(
                                child: Html(
                                    data: event.description,
                                    onLinkTap: (url, _, __) async {
                                      if (url != null &&
                                          await canLaunchUrl(Uri.parse(url))) {
                                        await launchUrl(Uri.parse(url),
                                            mode:
                                                LaunchMode.externalApplication);
                                      }
                                    }),
                              )
                            : const SizedBox(),
                        event.imageUrl.isNotEmpty
                            ? InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => FullscreenImage(
                                          url: event.imageUrl)));
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        const CircularProgressIndicator(),
                                        Image.network(event.imageUrl),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Kontakt: ${event.contactName}",
                                        style: const TextStyle(fontSize: 16)),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        const Icon(Icons.mail),
                                        const SizedBox(width: 16),
                                        Flexible(
                                            child: Text(event.contactEmail)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (event.attachments.isNotEmpty)
                          attachmentsWidget(context, event.attachments)
                      ])),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              heroTag: null,
              label: Text(model.userRegisteredForEvent ? "Abmelden" : "Anmelden"),
              onPressed: () async {
                final token = await SharedPref().getToken();
                if (context.mounted) {
                  showModalBottomSheet(
                          context: context,
                          useSafeArea: true,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0))),
                          builder: (BuildContext context) {
                            return MidaWebViewScreen(
                              url: event.eventUrl,
                              token: token,
                              addToCalendar: _addToCalendar,
                            );
                          })
                      .whenComplete(
                          () => model.refreshUserRegisteredForEvent(event.eventID));
                }
              },
            ));
      }),
    );
  }
}
