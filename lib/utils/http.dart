import 'dart:io';

import 'package:dio/dio.dart';

BaseOptions options = new BaseOptions(
//  baseUrl: "https://www.xianghuanji.com/api",
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

class Http {
  final Dio dio = Dio(options);

  Http() {
    dio.interceptors
      ..add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        return options;
      }, onResponse: (Response response) {
        response.headers.contentType = ContentType.json;
        return response;
      }, onError: (DioError err) {
        return err;
      }))
      ..add(LogInterceptor());
  }
}
