import 'remote.dart';
import 'local.dart';

abstract class IFilmRepository {
  Future<List<int>> fetchFilms();
}

class FilmRepository implements IFilmRepository {
  final FilmLocalRepository local = FilmLocalRepository();
  final FilmRemoteRepository remote = FilmRemoteRepository();

  @override
  Future<List<int>> fetchFilms() {
    // TODO: implement fetchFilms
    throw UnimplementedError();
  }
}
