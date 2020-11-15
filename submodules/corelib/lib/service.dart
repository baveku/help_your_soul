import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiProvider with DioMixin {
  ApiProvider() {
    configureDio();
  }

  configureDio() {
    this.options
      ..baseUrl = "http://localhost:8822"
      ..connectTimeout = 10000
      ..receiveTimeout = 10000
      ..validateStatus = (int status) {
        return status > 0;
      }
      ..headers = {
        HttpHeaders.authorizationHeader: '',
        HttpHeaders.contentTypeHeader: 'application/content-type',
      };

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
