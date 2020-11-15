library corelib;

import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import 'injectable.dart';

export 'injectable.dart';
export 'package:corelib/type.dart';
export 'package:corelib/service.dart';
export 'package:corelib/core/films/repository.dart';
export 'package:corelib/core/films/service.dart';
export 'package:corelib/core/films/bloc/film_cubit.dart';

class CoreLib {
  static create() async {
    await configureDependencies();
  }
}

class InjectorWidget extends InheritedWidget {
  InjectorWidget({
    Key key,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static InjectorWidget of(BuildContext context) {
    // ignore: deprecated_member_use
    return context.dependOnInheritedWidgetOfExactType(aspect: InjectorWidget);
  }

  GetIt get injector => GetIt.instance;

  @override
  bool updateShouldNotify(InjectorWidget old) => false;
}
