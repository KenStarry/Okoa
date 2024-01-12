import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  static const LatLng sourceLocation =
      LatLng(-1.2663447549789835, 36.837615802117085);
  static const LatLng targetLocation =
      LatLng(37.42796133580664, -122.085749655962);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition:
              CameraPosition(target: sourceLocation, zoom: 14.5)),
    );
  }
}
