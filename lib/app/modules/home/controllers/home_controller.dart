import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
    Future<bool> onBackPressed() async {
    //show default dialog
    var isCancel = await showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content:
            const Text('Do you want to exit?'),
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
}
