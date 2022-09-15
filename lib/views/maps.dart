import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../constants.dart';

class MapView extends StatefulWidget {
  const MapView(contex, {super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late GoogleMapController mapContoller;

  final LatLng _center = const LatLng(9.1037, -7.4406);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(9.1037, -7.4406),
          infoWindow: InfoWindow(title: "GooglePlex")));
    });
    mapContoller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        decoration: kContainerDecoration,
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
          onMapCreated: _onMapCreated,
          markers: _markers,
        ),
      ),
    );
  }
}
