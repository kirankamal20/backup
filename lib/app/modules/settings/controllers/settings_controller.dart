// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class SettingsController extends GetxController {
  IUserDbService dbService;
  SettingsController({
    required this.dbService,
  });
  List<String> data = [
    'All Orders',
    'New Orders',
    'Processed Orders',
    'Delivered Orders',
    'Pending Approvals',
    'Cancelled Orders',
    'Rejected Orders',
    'Pending Orders',
  ];
  Future<bool> onBackPressed() async {
    await showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content:
            const Text('Do you want to exit and go back to the home screen?'),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('No'),
            onPressed: () => navigator?.pop(false),
          ),
          ElevatedButton(
            child: const Text('Yes'),
            onPressed: () => Get.offNamedUntil(Routes.LOGIN, (route) => false),
          ),
        ],
      ),
    );
    return false;
  }

  Future<void> logout() async {
    await dbService.deleteUser();
    Get.toNamed(Routes.LOGIN);
  }
}
