library corelib;

import 'service.dart';
export 'package:corelib/service.dart';
export './core/films/service.dart';

// Define Public Function
class CoreLib {
  static configure() {
    configureDio();
  }

  static ServiceManager serviceManager = ServiceManager();
}
