import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jw_job_flutter/http/api_result.dart';

import 'header_Interceptor.dart';

final HttpManager httpManager = HttpManager.instance;

class HttpManager {
  Dio? dio;

  /// 以下参数配置如需更改 可在main文件中统一处理
  /// 网络请求baseUrl
  var baseUrl = "";

  /// 超时时间
  var connectTimeout = 15000;

  /// 单例
  // 工厂模式
  factory HttpManager() => _getInstance()!;

  static HttpManager get instance => _getInstance()!;
  static HttpManager? _instance;

  HttpManager._internal() {
    // 初始化
  }

  static HttpManager? _getInstance() {
    if (_instance == null) {
      _instance = HttpManager._internal();
      _instance!.dio = Dio(
        BaseOptions(
            baseUrl: "https://devwww.laoyaoba.com/api/",
            contentType: "application/x-www-form-urlencoded"),
      );
      _instance!.dio!.interceptors.add(HeaderInterceptor());
    }
    return _instance;
  }

  get<T>(String path, T Function(dynamic json) fromJsonT,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      var future = await dio!.get(path, queryParameters: queryParameters);
      return ApiResult.success(fromJsonT(future));
    } on Exception catch (e) {
      return ApiResult.error(e);
    }
  }

  post<T>(String path, T Function(dynamic json) fromJsonT, {data}) async {
    try {
      var post = await dio!.post(path, data: data);
      print("网络请求数据"+post.data.toString());
      return ApiResult.success(fromJsonT(post.data));
    } on Exception catch (e) {
      return ApiResult.error(e);
    }
  }
}
