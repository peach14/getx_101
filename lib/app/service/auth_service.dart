import 'package:get/get.dart';

class AuthService extends GetxService {
  final _auth = false.obs;
  bool get auth => _auth.value;
  @override
  void onInit() {
    super.onInit();
  }

  void login() async {
    _auth.value = true;
    print(_auth.value);
    if (_auth.value) {
      await Future.delayed(const Duration(seconds: 10));
      _auth.value = false;
    }
    print(_auth.value);
  }

  void logout() {
    _auth.value = false;
  }
}
