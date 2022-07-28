import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/Billdetails/controllers/billdetails_controller.dart';


class BillDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BillDetailsController>(
      () => BillDetailsController(),
    );
  }
}