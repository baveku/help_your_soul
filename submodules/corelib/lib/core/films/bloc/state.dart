import 'package:corelib/core/films/model/film.dart';

enum FilmEvent {
  fetch,
  filmInfo,
}

class FilmState {
  List<Film> films;
  FilmState(this.films);
}
