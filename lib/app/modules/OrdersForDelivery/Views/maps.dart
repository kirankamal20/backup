import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/controllers/orders_for_delivery_controller.dart';

class MapMarker extends GetView<OrdersForDeliveryController> {
  const MapMarker({Key? key}) : super(key: key);

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
          target: LatLng(controller.lat.value, controller.long.value),
          zoom: 8.0,
        ),
        markers: Set.from(controller.allMarkers),
        myLocationEnabled: true,
      ),
    );
  }
}
