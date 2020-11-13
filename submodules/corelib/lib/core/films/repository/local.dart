import '../model/film.dart';

import './index.dart';

class FilmLocalRepository implements IFilmRepository {
  Map<String, Film> films;

  @override
  Future<List<int>> fetchFilms() {
    // TODO: implement fetchFilms
    throw UnimplementedError();
  }

  updateFilms(Film film) {
    films[film.id] = film;
  }
}
