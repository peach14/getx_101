import 'package:get/get.dart';

import '../midernwere/home_miderwere.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        middlewares: [HomeMiddleWare()]),
    GetPage(
      name: _Paths.LOGIN,
      // middlewares: [HomeMiddleWare()],
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
