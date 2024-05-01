import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  // final Ref? ref;

  ApiInterceptor(

      // required this.ref,

      );

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // options.headers["Authorization"] =
    //     "Bearer ${await ref.watch(localStorageServiceProvider).getToken()}";
    // handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // if (err.response?.statusCode == 401) {
    //   ref.read(logoutControllerProvider);
    // }
    handler.reject(err);
  }
}
