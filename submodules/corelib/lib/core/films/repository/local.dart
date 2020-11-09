import '../model/film.dart';

import './index.dart';

class FilmLocalRepository implements IFilmRepository {
  Map<String, FilmModel> films;

  @override
  Future<List<int>> fetchFilms() {
    // TODO: implement fetchFilms
    throw UnimplementedError();
  }

  updateFilms(FilmModel film) {
    films[film.id] = film;
  }
}
