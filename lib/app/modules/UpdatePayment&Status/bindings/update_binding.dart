import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/UpdatePayment&Status/controllers/update_controller.dart';


class UpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateController>(
      () => UpdateController(),
    );
  }
}
