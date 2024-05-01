import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../modules/home/models/home_model.dart';

class ApiClient extends GetConnect {
  final Dio _dio = Dio();

  @override
  void onInit() {
    _dio.options.baseUrl = "http://192.168.161.27:8000/";
    // _dio.options.connectTimeout = const Duration(seconds: 5);
    // _dio.options.receiveTimeout = const Duration(seconds: 5);
    // _dio.interceptors.add(ApiInterceptor());
    super.onInit();
  }

  Future<List<DataUserAll>> featUserAll({required String phat}) async {
    final res = await _dio.get('users');
    print(res);
    return dataUserAllFromJson(str: res.data);
  }
}
