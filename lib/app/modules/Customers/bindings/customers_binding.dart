import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/Customers/controllers/customers_controller.dart';


class CustomersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomersController>(
      () => CustomersController(),
    );
  }
}
