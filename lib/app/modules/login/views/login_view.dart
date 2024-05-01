import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_101/app/service/auth_service.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'LoginView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<AuthService>().logout();
              },
              child: const Text("Logout"))
        ],
      ),
    );
  }
}
