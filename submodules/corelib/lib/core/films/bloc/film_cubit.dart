import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:corelib/core/films/repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@Singleton()
class FilmCubit extends Cubit<int> {
  FilmRepository repo;

  FilmCubit(this.repo) : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
