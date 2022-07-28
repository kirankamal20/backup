import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/controllers/orders_for_delivery_controller.dart';


class OrdersForDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrdersForDeliveryController>(
      () => OrdersForDeliveryController(),
    );
  }
}
