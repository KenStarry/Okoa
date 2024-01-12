import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackMap extends StatefulWidget {
  const TrackMap({super.key});

  @override
  State<TrackMap> createState() => _TrackMapState();
}

class _TrackMapState extends State<TrackMap> {
  late final LatLng sourceLocation;

  @override
  void initState() {
    super.initState();

    sourceLocation = const LatLng(-1.2663447549789835, 36.837615802117085);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: sourceLocation, zoom: 14.5),
        myLocationButtonEnabled: true,
        myLocationEnabled: true);
  }
}
