import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_101/app/service/auth_service.dart';

class HomeMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();
    print("MIddleware${authService.auth}");
    return !authService.auth ? null : const RouteSettings(name: '/login');
  }
}
