import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showErrorDialog({String message = "Incorrect UserName and password"}) {
  showDialog(
    context: Get.context!,
    useSafeArea: true,
    builder: (c) {
      return AlertDialog(
        elevation: 9,
        title: const Center(
            child: Text(
          'Error',
        )),
        content: SingleChildScrollView(
          child: Text(message),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () => Get.back(),
          ),
        ],
      );
    },
  );
}