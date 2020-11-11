library corelib;

import 'dart:convert';

import 'package:corelib/service.dart';
import 'package:rxdart/rxdart.dart';
import 'model/film.dart';

class FilmService extends Service {
  Future<List<Film>> getFilms() {
    return client.get('/films').then((value) => []);
  }

  Future<Film> fetchFilmInfo(String id) {
    return client.get('/film', queryParameters: {'id': id}).then((value) => Film.fromJson(jsonDecode(value.data)));
  }
}
