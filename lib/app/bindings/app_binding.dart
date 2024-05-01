import 'package:get/get.dart';
import 'package:getx_101/app/service/auth_service.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<AuthService>((() => AuthService()));
    Get.put<AuthService>(AuthService());
    // Get.create<AuthService>(() => AuthService());
    //  Get.putAsync<AuthService>(() async => await AuthService());
  }
}
