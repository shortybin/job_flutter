import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    add(options);
  }

  static add(RequestOptions options) async {
    Map<String, dynamic> data;
    if (options.data == null) {
      data = {};
    } else {
      data = options.data;
    }
    data["source"] = "app_android_v92";
    data["net_type"] = "4";
    data["os_version"] = "NX659J_CNCommon_V9.40";
    data["brand"] = "NX659J_CNCommon_V9.40";
    data["brand_type"] = "nubia";

    options.data = data;
  }
}
