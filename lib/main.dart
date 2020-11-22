import 'package:flutter/material.dart';
import 'package:corelib/corelib.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CoreLib.create();
  final appInjector = InjectorWidget(child: RootApp());
  runApp(appInjector);
}
