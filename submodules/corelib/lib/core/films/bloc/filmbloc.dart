import 'package:bloc/bloc.dart';
import 'package:corelib/core/films/bloc/state.dart';
import 'package:corelib/core/films/repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@Singleton()
class FilmBloc extends Bloc<FilmEvent, FilmState> {
  FilmRepository repository;

  FilmBloc(@Named.from(FilmRepository) FilmRepository repo)
      : repository = repo,
        super(FilmState([]));

  @override
  Stream<FilmState> mapEventToState(FilmEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
