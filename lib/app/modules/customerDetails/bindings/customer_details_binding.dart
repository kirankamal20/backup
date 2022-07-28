import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/customerDetails/controllers/customer_details_controller.dart';


class CustomerDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerDetailsController>(
      () => CustomerDetailsController(),
    );
  }
}
