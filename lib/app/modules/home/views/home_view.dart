import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_101/app/modules/login/controllers/login_controller.dart';

import '../../../service/auth_service.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () {
                return Column(
                  children: [
                    Text(
                      controller.count.value.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      controller.status.value.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      controller.name,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                );
              },
            ),
            GetBuilder<HomeController>(
              builder: (controller) {
                return Text(
                  controller.name,
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  controller.addNum();
                },
                child: Text("addCount")),
            ElevatedButton(
                onPressed: () {
                  Get.find<LoginController>().increment();
                },
                child: Text("addCount")),
            ElevatedButton(
                onPressed: () {
                  controller.setString();
                },
                child: Text("setName")),
            ElevatedButton(
                onPressed: () {
                  Get.find<AuthService>().login();
                },
                child: const Text("Login")),
            ElevatedButton(
                onPressed: () {
                  controller.getUser();
                },
                child: const Text("GrtApi"))
          ],
        ),
      ),
    );
  }
}
