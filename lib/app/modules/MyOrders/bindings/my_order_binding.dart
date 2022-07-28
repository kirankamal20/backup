import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/MyOrders/controllers/my_order_controller.dart';


class MyOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyOrderController>(
      () => MyOrderController(),
    );
  }
}
