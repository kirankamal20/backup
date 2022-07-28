import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/controllers/return_item_controller.dart';


class ReturnItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReturnItemController>(
      () => ReturnItemController(),
    );
  }
}
