import 'dart:io';
import 'package:dio/dio.dart';

class ApiProvider with DioMixin implements Dio {
  ApiProvider([BaseOptions options]) : super() {
    this.options = options;
    configureDio();
  }

  configureDio() {
    this.interceptors
      ..add(InterceptorsWrapper(
        onRequest: (Options options) {
          // return ds.resolve( Response(data:"xxx"));
          // return ds.reject( DioError(message: "eh"));
          return options;
        },
      ))
      ..add(LogInterceptor(responseBody: true)); //Open log;
  }

  updateHeader() {
    this.options.headers = {HttpHeaders.authorizationHeader: '', HttpHeaders.connectionHeader: 'application/content-type'};
  }
}
