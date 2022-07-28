import 'package:get/get.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  SplashController({required this.userDbService});

  late IUserDbService userDbService;

  @override
  void onInit() async {
    isUserLoggedIn();
    getUser();
    super.onInit();
  }

  Future<void> getUser() async {
    var result = await userDbService.getUser();
    result.when(
      (error) => Logger.error(error),
      (usermodel) => Logger.log(usermodel),
    );
  }

  Future<void> isUserLoggedIn() async {
    var result = await userDbService.isUserAvailable();
    result.when(
      (error) => Logger.error(error),
      (isAvailable) async {
        Logger.log(isAvailable);
        if (isAvailable) {
          Get.toNamed(Routes.HOME);
        } else {
          Get.toNamed(Routes.LOGIN);
        }
      },
    );
  }
}
