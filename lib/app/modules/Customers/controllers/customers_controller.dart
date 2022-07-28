import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomersController extends GetxController {
  List<Marker> allMarkers = <Marker>[];

  @override
  void onInit() {
    for (int i = 0; i < 1; i++) {
      allMarkers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          draggable: false,
          position: const LatLng(9.9312, 76.2673),
          infoWindow: const InfoWindow(
            title: "custName",
          ),
        ),
      );
    }
    _getCurrentLocation();
    super.onInit();
  }

  final lat = 0.0.obs;
  final long = 0.0.obs;

  Future<void> _getCurrentLocation() async {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      lat.value = position.latitude;
      long.value = position.longitude;
    }).catchError((e) {});
  }
}
