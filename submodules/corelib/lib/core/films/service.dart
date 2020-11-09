library corelib;

import 'package:corelib/service.dart';

import 'model/film.dart';

class FilmService extends Service {
  Future<List<FilmModel>> getFilms() {
    return client.get('./films').then((value) => []);
  }
}
