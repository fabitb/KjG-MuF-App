import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' hide Marker;
import 'package:flutter_map/plugin_api.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/screens/mida_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/utils/shared_prefs.dart';
import 'package:kjg_muf_app/viewmodels/event.detail.viewmodel.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailScreen extends StatelessWidget {
  final Event event;

  EventDetailScreen({super.key, required this.event});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<Location> getLocationFromAddress() async {
    var locations = await locationFromAddress(event.location);
    return locations.first;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EventDetailViewModel(event.eventID),
      child: Builder(builder: (context) {
        final model = Provider.of<EventDetailViewModel>(context, listen: false);
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
                        child: SizedBox(
                          height: 200.0,
                          child: FutureBuilder<Location?>(
                            future: getLocationFromAddress(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData &&
                                  snapshot.connectionState ==
                                      ConnectionState.done) {
                                model.setPositionCache(snapshot.data!.latitude,
                                    snapshot.data!.longitude);
                                return FlutterMap(
                                  options: MapOptions(
                                      center: LatLng(snapshot.data!.latitude,
                                          snapshot.data!.longitude),
                                      zoom: 14.0,
                                      interactiveFlags: InteractiveFlag.none),
                                  children: [
                                    TileLayer(
                                        minZoom: 1,
                                        maxZoom: 18,
                                        backgroundColor: Colors.white,
                                        urlTemplate:
                                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                        subdomains: const ['a', 'b', 'c']),
                                    MarkerLayer(markers: [
                                      Marker(
                                          point: LatLng(snapshot.data!.latitude,
                                              snapshot.data!.longitude),
                                          builder: (context) =>
                                              const Icon(Icons.place))
                                    ])
                                  ],
                                );
                              } else if (snapshot.hasError) {
                                return const Center(
                                    child: Text(
                                        "Karte konnte nicht geladen werden."));
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, bottom: 8),
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
                      padding: const EdgeInsets.all(4),
                      child: Column(children: [
                        eventItem(context, 0, event),
                        Consumer<EventDetailViewModel>(
                            builder: (_, viewModel, __) {
                          return viewModel.userRegisteredForEvent
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
                              : const SizedBox();
                        }),
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
                                        style: TextStyle(fontSize: 16)),
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
                        )
                      ])),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              heroTag: null,
              label: const Text("Anmelden / Abmelden"),
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
                                url: event.eventUrl, token: token);
                          })
                      .whenComplete(
                          () => model.isUserRegisteredForEvent(event.eventID));
                }
              },
            ));
      }),
    );
  }
}
