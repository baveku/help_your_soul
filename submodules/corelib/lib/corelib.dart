library corelib;

import 'package:corelib/corelib.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

export 'package:corelib/type.dart';
export 'package:corelib/service.dart';
export 'package:corelib/core/films/repository.dart';
export 'package:corelib/core/films/service.dart';
export 'package:corelib/core/films/bloc/filmbloc.dart';

// Define Public Function

final container = GetIt.instance;

class CoreLib {
  static create() {
    configureDependencies();
  }
}

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  generateForDir: ['gen'],
)
void configureDependencies() => $initGetIt(container);
