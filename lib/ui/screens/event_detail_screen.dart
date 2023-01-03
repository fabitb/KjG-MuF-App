import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

import '../../main.viewmodel.dart';

class EventDetailScreen extends StatelessWidget {
  final Event event;

  EventDetailScreen({super.key, required this.event});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      MidaService().verifyLogin(emailController.text, passwordController.text);
    }
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
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.509364, -0.128928),
                zoom: 9.2,
              ),
              nonRotatedChildren: [
                AttributionWidget.defaultWidget(
                  source: 'OpenStreetMap contributors',
                  onSourceTapped: null,
                ),
              ]
            ),
          ),
        );
      }),
    );
  }
}
