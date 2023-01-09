import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geocoding/geocoding.dart';
import 'package:kjg_muf_app/model/event.dart';
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
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            title: Text(event.title),
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 200.0,
                      child: FutureBuilder<Location?>(
                        future: getLocationFromAddress(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData &&
                              snapshot.connectionState == ConnectionState.done) {
                            return FlutterMap(
                              options: MapOptions(
                                  center: LatLng(snapshot.data!.latitude, snapshot.data!.longitude),
                                  zoom: 14.0,
                                  interactiveFlags: InteractiveFlag.none),
                              layers: [
                                TileLayerOptions(
                                    minZoom: 1,
                                    maxZoom: 18,
                                    backgroundColor: Colors.white,
                                    urlTemplate:
                                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                    subdomains: ['a', 'b', 'c']),
                                MarkerLayerOptions(
                                    markers: [
                                      Marker(point: LatLng(snapshot.data!.latitude, snapshot.data!.longitude), builder: (context) => const Icon(Icons.place))
                                    ]
                                )
                              ],
                            );
                          } else {
                            return const Center(child: CircularProgressIndicator());
                          }
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.route),
                    ),
                  )
                ] ,
              ),
              Text(event.title)
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
