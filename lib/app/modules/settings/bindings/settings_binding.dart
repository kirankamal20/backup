import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/user_db_service.dart';

import '../controllers/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
      () => SettingsController(dbService: Get.find()),
    );
    Get.lazyPut<IUserDbService>(() => UserDbService());
  }
}
