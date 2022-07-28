import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/data/provider/login_provider/i_login_provider_provider.dart';
import 'package:symphony_delivery_app/app/data/provider/login_provider/login_provider_provider.dart';
import 'package:symphony_delivery_app/app/data/repository/login/i_login_repository.dart';
import 'package:symphony_delivery_app/app/data/repository/login/login_repository.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/user_db_service.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILoginProvider>(
      () => LoginProvider(),
    );
    Get.lazyPut<ILoginRepository>(
      () => LoginRepository(
          loginProvider: Get.find<ILoginProvider>(), dbService: Get.find()),
    );
    Get.lazyPut<IUserDbService>(() => UserDbService());

    Get.lazyPut<LoginController>(
      () => LoginController(loginRepository: Get.find<ILoginRepository>()),
    );
  }
}
