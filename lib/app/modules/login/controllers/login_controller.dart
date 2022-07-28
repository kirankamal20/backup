import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/core/util/device_info_util.dart';
import 'package:symphony_delivery_app/app/data/repository/login/i_login_repository.dart';
import 'package:symphony_delivery_app/app/global/exceptions/base_exception.dart';
import 'package:symphony_delivery_app/app/global/helper/show_error_dialogue.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  late ILoginRepository loginRepository;

  LoginController({
    required this.loginRepository,
  });

  var formkey = GlobalKey<FormState>();

  var usernamecontroller = TextEditingController(text: "Delivery4");
  var passwordcontroller = TextEditingController(text: "4321");
  var isPasswordVisible = true.obs;
  var isLoading = false.obs;

  Future<bool> onBackPressed() async {
    //show default dialog
    var isCancel = await showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit?'),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('No'),
            onPressed: () => navigator?.pop(false),
          ),
          ElevatedButton(
            child: const Text('Yes'),
            onPressed: () => navigator?.pop(true),
          ),
        ],
      ),
    );
    if (isCancel) {
      SystemNavigator.pop();
    }
    return isCancel;
  }

  // void showErrorDialog() {
  //   Get.defaultDialog(
  //     title: 'Error',
  //     content: const Text("Incorrect UserName and password"),
  //     actions: [
  //       TextButton(
  //         child: const Text('OK'),
  //         onPressed: () {
  //           Get.back();
  //         },
  //       ),
  //     ],
  //   );
  // }

  Future<void> onLoginClicked() async {
    if (formkey.currentState!.validate()) {
      isLoading.value = true;
      var result = await loginRepository.login(
        userName: usernamecontroller.text,
        password: passwordcontroller.text,
        deviceId: await getDeviceId(),
      );
      result.when((error) {
        isLoading.value = false;

        if (error is BaseException) {
          showErrorDialog(message: error.message.toString());
        } else {
          showErrorDialog(message: "Something went wrong");
        }
      }, (isSuccess) {
        isLoading.value = false;
        if (isSuccess) {
          Logger.log('Logged-in Successfully');
          Get.offNamed(Routes.HOME);
        } else {
          showErrorDialog();
          Logger.error('Incorrect UserName and password');
        }
      });
    }
  }
}
