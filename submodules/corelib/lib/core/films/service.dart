import 'package:corelib/core/films/DTO/response/film_info.dart';
import 'package:corelib/service.dart';
import 'package:corelib/type.dart';
import 'DTO/response/get_films.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@LazySingleton()
class FilmService extends Service {
  ApiProvider client;
  FilmService(@Named.from(ApiProvider) this.client);

  Future<GetFilmsResponse> getFilms() {
    return client.get('/films').then((value) => GetFilmsResponse.fromJson(value.data));
  }

  Future<FilmInfoResponse> fetchFilmInfo(String id) {
    return client.get('/film', queryParameters: {'id': id}).then((value) => FilmInfoResponse.fromJson(value.data));
  }
}
