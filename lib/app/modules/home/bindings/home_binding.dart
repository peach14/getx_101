import 'package:get/get.dart';
import 'package:getx_101/app/modules/login/controllers/login_controller.dart';

import '../../../service/auth_service.dart';
import '../../../service/dio/client_dio.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthService>(() => AuthService());
    Get.lazyPut<ApiClient>(() => ApiClient());
  }
}
