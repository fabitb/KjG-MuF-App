import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailViewModel extends ChangeNotifier {
  double? latitudeCache;
  double? longitudeCache;

  EventDetailViewModel();

  setPositionCache(double latitude, double longitude) {
    latitudeCache = latitude;
    longitudeCache = longitude;
  }

  Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
