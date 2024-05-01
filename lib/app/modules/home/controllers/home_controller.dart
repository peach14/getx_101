import 'package:get/get.dart';
import 'package:getx_101/app/service/dio/client_dio.dart';

import '../../login/controllers/login_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt count = 0.obs;
  RxInt status = 0.obs;
  RxInt indexPage = 0.obs;
  String name = 'asdasd';

  final LoginController dd = Get.find<LoginController>();
  @override
  void onInit() {
    status = dd.count;
    super.onInit();
  }

  @override
  void onReady() {
    print("4444444444444444444");

    super.onReady();
  }

  @override
  void onClose() {
    print("3333333333333333333333");

    super.onClose();
  }

  void setIndexPage({required RxInt index}) => indexPage = index;
  void setString() {
    if (name == "asdasd") {
      name = 'aaaa';
    } else {
      name = "asdasd";
    }
    update();
  }

  void setStorage() {}

  void getUser() async {
    final res = await Get.find<ApiClient>().featUserAll(phat: "user");
    res.forEach((element) {
      print(element.firstName);
    });
    // print(">>>>>>>>>>>>>>>>>${}");
  }

  void addNum() => count.value++;
}
