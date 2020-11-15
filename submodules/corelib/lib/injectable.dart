import 'package:corelib/injectable.config.dart';
import 'package:corelib/service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Define Public Function

final container = GetIt.instance;

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => 'localhost';

  @lazySingleton
  ApiProvider provider(@Named('BaseUrl') String url) => ApiProvider(BaseOptions(baseUrl: url));

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
configureDependencies() async => $initGetIt(container);
