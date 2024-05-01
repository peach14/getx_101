import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 5.obs;
  @override
  void onInit() {
    ever(count, (callback) {
      if (callback == 10) {
        _showCustomDialog();
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _showCustomDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('Custom Dialog'),
        content: const Text('Count reached 8!'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void increment() => count.value++;
}
