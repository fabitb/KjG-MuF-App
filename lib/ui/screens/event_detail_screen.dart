import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

import '../../main.viewmodel.dart';

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
    Timer? mapLoadingTimeout;

    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            title: Text(event.title),
          ),
          body: Column(
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
                          onPressed: () {},
                          child: const Icon(Icons.map),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(4),
                  child: eventItem(context, 0, event)),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.plus_one_sharp),
          ),
        );
      }),
    );
  }
}
