import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';

class MapMarker extends StatelessWidget {
  final double latitude;
  final double longitude;
  final Iterable<dynamic> elements;
  const MapMarker(
      {Key? key,
      required this.latitude,
      required this.longitude,
      required this.elements})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: CustomDefaultAppBar(
          onTap: () => Get.back(),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 8.0,
        ),
        markers: Set.from(elements),
        myLocationEnabled: true,
      ),
    );
  }
}
