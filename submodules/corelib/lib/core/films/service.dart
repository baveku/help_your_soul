library corelib;

import 'dart:convert';
import 'package:corelib/core/films/DTO/response/film_info.dart';
import 'package:corelib/service.dart';
import 'DTO/response/get_films.dart';

class FilmService extends Service {
  Future<GetFilmsResponse> getFilms() {
    return client.get('/films').then((value) => GetFilmsResponse.fromJson(value.data));
  }

  Future<FilmInfoResponse> fetchFilmInfo(String id) {
    return client.get('/film', queryParameters: {'id': id}).then((value) => FilmInfoResponse.fromJson(value.data));
  }
}
