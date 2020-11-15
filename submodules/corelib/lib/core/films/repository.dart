import 'package:corelib/core/films/service.dart';
import 'package:corelib/type.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@Singleton()
class FilmRepository extends Repository<FilmService> {
  FilmRepository(FilmService service) : super(service);
}
