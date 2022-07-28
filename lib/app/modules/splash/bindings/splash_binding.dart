import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(userDbService: Get.find<IUserDbService>()),
    );
  }
}
