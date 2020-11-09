import 'dart:io';
import 'package:dio/dio.dart';
import 'core/films/service.dart';

Dio httpClient = Dio();

configureDio() {
  httpClient.options
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

  httpClient.interceptors
    ..add(InterceptorsWrapper(
      onRequest: (Options options) {
        // return ds.resolve( Response(data:"xxx"));
        // return ds.reject( DioError(message: "eh"));
        return options;
      },
    ))
    ..add(LogInterceptor(responseBody: true)); //Open log;
}

class Service {
  Dio get client {
    return httpClient;
  }
}

class ServiceManager {
  static final ServiceManager shared = ServiceManager._private();
  ServiceManager._private();
  factory ServiceManager() => shared;

  FilmService film = FilmService();
}
